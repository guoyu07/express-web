package cn.gaohongtao.police.mobile;

import java.io.File;
import java.util.concurrent.locks.ReentrantLock;

import cn.gaohongtao.police.mobile.model.EovaDepart;
import cn.gaohongtao.police.mobile.model.TFileInfo;
import com.alibaba.fastjson.JSONObject;
import com.eova.common.base.BaseModel;
import com.eova.common.utils.EncryptUtil;
import com.eova.common.utils.xx;
import com.eova.config.EovaConfig;
import com.eova.model.User;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.upload.UploadFile;
import org.joda.time.DateTime;
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
        renderJson(new Protocol().data("fileToken", TFileInfo.dao.get("id")).send());
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
    
    private void copyProperty(JSONObject target, BaseModel source, String... key) {
        for (String each : key) {
            target.put(each, source.get(each, ""));
        }
    }
}
