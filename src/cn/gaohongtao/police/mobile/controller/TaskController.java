package cn.gaohongtao.police.mobile.controller;

import cn.gaohongtao.police.mobile.model.TTask;
import cn.gaohongtao.police.mobile.service.TaskService;
import com.eova.config.EovaConst;
import com.eova.model.User;
import com.jfinal.core.Controller;
import org.joda.time.DateTime;

/**
 * Created by gaoht on 16/3/5.
 */
public class TaskController extends Controller {

    public void fetch() {
        User user = (User) getSession().getAttribute(EovaConst.USER);
        renderJson("success", TaskService.service.fetchTask(user.getInt("id"), getParaToInt("id")));
    }

    public void response() {
        renderJson("success", TaskService.service.responseTask(getParaToInt("id"), null, null));
    }
}
