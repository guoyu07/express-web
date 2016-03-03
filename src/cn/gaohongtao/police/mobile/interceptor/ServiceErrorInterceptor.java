package cn.gaohongtao.police.mobile.interceptor;

import cn.gaohongtao.police.mobile.Protocol;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author gaohongtao
 */
public class ServiceErrorInterceptor implements Interceptor {
    
    private static final Logger log = LoggerFactory.getLogger(ServiceErrorInterceptor.class);
    
    @Override
    public void intercept(final Invocation inv) {
        if ("/service".equals(inv.getControllerKey())) {
            try {
                inv.invoke();
            } catch (Exception e) {
                log.error("error", e);
                inv.getController().renderJson(new Protocol(e.getMessage()).serverError().send());
            }
        } else {
            inv.invoke();
        }
    }
}
