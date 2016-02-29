package cn.gaohongtao.expressweb;

import com.eova.config.EovaConfig;
import com.eova.interceptor.LoginInterceptor;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * @author gaohongtao
 */
public class ExpressWebConfig extends EovaConfig {
    
    /**
     * 自定义路由
     *
     * @param me
     */
    @Override
    protected void route(Routes me) {
        // 自定义的路由配置往这里加。。。
        
        // 不需要登录拦截的URL
        LoginInterceptor.excludes.add("/init");
    }
    
    /**
     * 自定义Main数据源Model映射
     *
     * @param arp
     */
    @Override
    protected void mapping(ActiveRecordPlugin arp) {
        // 自定义的Model映射往这里加。。。
    }
    
    /**
     * 自定义插件
     */
    @Override
    protected void plugin(Plugins plugins) {
        // 添加数据源
        
        // 添加自动扫描插件
        
        // ...
    }
    
    /**
     * Run Server
     *
     * @param args
     */
    public static void main(String[] args) {
        JFinal.start("web", 8080, "/", 0);
    }
    
}
