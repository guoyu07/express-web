package cn.gaohongtao.police.mobile;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

import cn.gaohongtao.police.mobile.model.EovaDepart;
import cn.gaohongtao.police.mobile.model.EovaDict;
import cn.gaohongtao.police.mobile.model.TFileInfo;
import cn.gaohongtao.police.mobile.model.TTask;
import cn.gaohongtao.police.mobile.service.TaskService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.eova.common.base.BaseModel;
import com.eova.common.utils.EncryptUtil;
import com.eova.common.utils.xx;
import com.eova.config.EovaConfig;
import com.eova.model.Task;
import com.eova.model.User;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.upload.UploadFile;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 移动警务服务.
 *
 * @author gaohongtao
 */
public class InterfaceService extends Controller {

    private static final ReentrantLock mkdirLock = new ReentrantLock();

    private static final Logger log = LoggerFactory.getLogger(InterfaceService.class);

    public void uploadFile() {
        String root = EovaConfig.props.get("static_root");
        String today = DateTime.now().toString("yyyyMMdd");
        String fileDir = File.separator + "upload" + File.separator + today;
        String absuloteFileDir = root + fileDir;
        File uploadPath = new File(absuloteFileDir);
        mkdirLock.lock();
        if (!uploadPath.exists()) {
            uploadPath.mkdir();
        }
        mkdirLock.unlock();
        UploadFile file = getFile("file", fileDir);
        if (xx.isEmpty(file)) {
            renderJson(new Protocol("缺少文件").argumentError().send());
            return;
        }
        if (!xx.isNum(getPara("type"))) {
            renderJson(new Protocol("缺少文件类型").argumentError().send());
            return;
        }

        TFileInfo.dao.set("type", getParaToInt("type")).set("path", file.getUploadPath() + File.separator + file.getFileName())
                .set("create_time", DateTime.now().toDate()).remove("id").save();
        renderJson(new Protocol().data("fileToken", TFileInfo.dao.get("id").toString()).send());
    }

    public void downloadFile() {
        TFileInfo file = TFileInfo.dao.findById(getPara("fileToken"));
        renderFile(new File(file.getStr("path")));
    }

    public void login() {
        JSONObject request = JSONObject.parseObject(HttpKit.readData(getRequest()));
        if (null == request) {
            renderJson(new Protocol("请求提格式非法").requestError().send());
            return;
        }
        if (xx.isEmpty(request.get("userId"))) {
            renderJson(new Protocol("缺少用户登陆ID").argumentError().send());
            return;
        }
        if (xx.isEmpty(request.get("userPwd"))) {
            renderJson(new Protocol("缺少用户密码").argumentError().send());
            return;
        }
        String loginId = request.getString("userId");
        String loginPwd = request.getString("userPwd");
        User user = User.dao.getByLoginId(loginId);
        if (user == null) {
            renderJson(new Protocol("用户名不存在").serverError().send());
        } else if (!user.getStr("login_pwd").equals(EncryptUtil.getSM32(loginPwd))) {
            renderJson(new Protocol("密码错误").serverError().send());
        } else {
            JSONObject userObject = new JSONObject();
            userObject.put("name", user.getStr("nickname"));
            userObject.put("userId", user.getStr("login_id"));
            if (!xx.isEmpty(user.get("depart_id"))) {
                EovaDepart depart = EovaDepart.dao.findById(user.get("depart_id"));
                if (null != depart)
                    userObject.put("department", depart.getStr("name"));
            }
            copyProperty(userObject, user, "age", "gender", "origin", "phone", "photo", "email", "job");
            renderJson(new Protocol().data("user", userObject).data("departId", user.get("depart_id")).send());
        }
    }

    public void listTask() {
        JSONObject request = JSONObject.parseObject(HttpKit.readData(getRequest()));
        if (null == request) {
            renderJson(new Protocol("请求提格式非法").requestError().send());
            return;
        }
        if (xx.isEmpty(request.get("userId"))) {
            renderJson(new Protocol("缺少当前登陆用户ID").argumentError().send());
            return;
        }
        User user = User.dao.getByLoginId(request.getString("userId"));
        if(null == user){
            renderJson(new Protocol("数据异常").serverError().send());
            return;
        }
        if (xx.isEmpty(request.get("type"))) {
            renderJson(new Protocol("缺少类型").argumentError().send());
            return;
        }

        List<TTask> result;
        if (1 == request.getIntValue("type")) {
            int userId = user.getInt("id");
            if (userId < 0) {
                renderJson(new Protocol("数据异常").serverError().send());
                return;
            }
            result = TTask.dao.find("select * from t_task where responsible_polic_user_id = ? and state = ?", userId, 1);
        } else if (2 == request.getIntValue("type")) {
            result = TTask.dao.find("select * from t_task where responsible_depart_id = ? and state = ?", user.get("depart_id"), 0);
        } else {
            renderJson(new Protocol("参数'类型'不合法").argumentError().send());
            return;
        }
        JSONArray forms = new JSONArray();
        for (TTask each : result) {
            JSONObject form = new JSONObject();
            form.put("formId", each.get("id").toString());
            form.put("content", each.getStr("content"));
            EovaDict dict = EovaDict.dao.findFirst("select name from eova_dict where object = 'biz_dispatch_task' and field = 'source' and value = ?", each.get("source"));
            String source;
            if (dict == null) {
                source = "";
            } else {
                source = dict.getStr("name");
            }
            form.put("name", source);
            form.put("time", new DateTime(each.get("create_time")).toString("yyyy-MM-dd HH:mm:ss"));
            form.put("phone", each.getStr("reporter_phone_num"));
            form.put("address", each.getStr("reporte_addr"));
            forms.add(form);
        }
        renderJson(new Protocol().data("forms", forms).send());
    }

    public void fetchTask() {
        JSONObject request = JSONObject.parseObject(HttpKit.readData(getRequest()));
        if (null == request) {
            renderJson(new Protocol("请求提格式非法").requestError().send());
            return;
        }
        if (xx.isEmpty(request.get("userId"))) {
            renderJson(new Protocol("缺少当前登陆用户ID").argumentError().send());
            return;
        }
        int userId = getUserId(request.getString("userId"));
        if (userId < 0) {
            renderJson(new Protocol("数据异常").serverError().send());
            return;
        }
        if (xx.isEmpty(request.get("formId"))) {
            renderJson(new Protocol("缺少派单号").argumentError().send());
            return;
        }

        TTask task = TTask.dao.findById(request.getIntValue("formId"));
        if (null == task) {
            renderJson(new Protocol("没有该派单").serverError().send());
            return;
        }
        if (0 != task.getInt("state")) {
            renderJson(new Protocol("该派单已被领取").serverError().send());
            return;
        }

        boolean success = TaskService.service.fetchTask(userId, request.getIntValue("formId"));
        if (success) {
            renderJson(new Protocol().send());
        } else {
            renderJson(new Protocol("领取失败").serverError().send());
        }
    }

    public void responseTask() {
        JSONObject request = JSONObject.parseObject(HttpKit.readData(getRequest()));
        if (null == request) {
            renderJson(new Protocol("请求提格式非法").requestError().send());
            return;
        }
        if (xx.isEmpty(request.get("formId"))) {
            renderJson(new Protocol("缺少派单号").argumentError().send());
            return;
        }
        if (xx.isEmpty(request.get("content"))) {
            renderJson(new Protocol("缺少反馈内容").argumentError().send());
            return;
        }
        boolean success = TaskService.service.responseTask(request.getInteger("formId"), request.getString("content"),
                buildFileToken(request.getString("imageTokens"), request.getString("videoTokens")));
        if (success) {
            renderJson(new Protocol().send());
        } else {
            renderJson(new Protocol("反馈失败").serverError().send());
        }
    }

    private int getUserId(final String loginId) {
        User user = User.dao.getByLoginId(loginId);
        if (null == user) {
            return -1;
        }
        return user.getInt("id");
    }

    private String buildFileToken(String... subTokens) {
        StringBuilder fileTokenBuilder = new StringBuilder();
        for (String subToken : subTokens) {
            if (!xx.isEmpty(subToken)) {
                for (String each : subToken.split(",")) {
                    if(xx.isEmpty(each.trim())){
                        continue;
                    }
                    fileTokenBuilder.append(each.trim()).append(",");
                }
            }
        }
        return fileTokenBuilder.toString();
    }

    private void copyProperty(JSONObject target, BaseModel source, String... key) {
        for (String each : key) {
            target.put(each, source.get(each, ""));
        }
    }
}
