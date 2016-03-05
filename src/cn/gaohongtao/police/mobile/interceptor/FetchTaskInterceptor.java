package cn.gaohongtao.police.mobile.interceptor;

import com.eova.aop.AopContext;
import com.eova.aop.MetaObjectIntercept;
import com.eova.common.utils.xx;

/**
 * Created by gaoht on 16/3/5.
 */
public class FetchTaskInterceptor extends MetaObjectIntercept {

    @Override
    public void queryBefore(AopContext ac) throws Exception {
        String departId = ac.user.get("depart_id").toString();
        if (!xx.isEmpty(departId)) {
            ac.condition = " and responsible_depart_id = " + departId;
        }
        super.queryBefore(ac);
    }


}
