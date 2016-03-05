package cn.gaohongtao.police.mobile.service;

import cn.gaohongtao.police.mobile.model.TTask;
import com.eova.common.utils.xx;
import org.joda.time.DateTime;

/**
 * Created by gaoht on 16/3/5.
 */
public class TaskService {

    private TaskService() {

    }

    public static final TaskService service = new TaskService();

    public boolean fetchTask(final int userId, final int taskId) {
        if (xx.isEmpty(userId)) {
            throw new IllegalArgumentException("lack userId");
        }
        if (xx.isEmpty(taskId)) {
            throw new IllegalArgumentException("lack taskId");
        }
        boolean result = TTask.dao.set("id", taskId).set("responsible_polic_user_id", userId).set("start_response_time", DateTime.now().toDate()).set("state", 1).update();
        TTask.dao.remove("id", "responsible_polic_user_id", "state", "start_response_time");
        return result;
    }

    public boolean responseTask(final int taskId, final String responseContent, final String responseFileTokens) {
        if (xx.isEmpty(taskId)) {
            throw new IllegalArgumentException("lack taskId");
        }
        TTask task = TTask.dao.set("id", taskId).set("end_response_time", DateTime.now().toDate()).set("state", 2);
        if (!xx.isEmpty(responseContent)) {
            task.set("response_content", responseContent);
        }
        if (!xx.isEmpty(responseFileTokens)) {
            task.set("response_file_tokens", responseFileTokens);
        }
        boolean result = task.update();
        TTask.dao.remove("id", "responsible_polic_user_id", "state", "end_response_time", "response_content", "response_file_tokens");
        return result;
    }
}
