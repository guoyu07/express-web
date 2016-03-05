package cn.gaohongtao.police.mobile.interceptor;

import com.eova.aop.AopContext;
import com.eova.aop.MetaObjectIntercept;
import com.eova.common.utils.xx;

/**
 * Created by gaoht on 16/3/5.
 */
public class ResponseTaskInterceptor extends MetaObjectIntercept {

    @Override
    public void queryBefore(AopContext ac) throws Exception {
        String userId = ac.user.get("id").toString();
        if (!xx.isEmpty(userId)) {
            ac.condition = " and responsible_polic_user_id = " + userId;
        }
        super.queryBefore(ac);
    }


}
