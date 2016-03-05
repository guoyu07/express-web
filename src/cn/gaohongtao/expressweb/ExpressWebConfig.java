package cn.gaohongtao.expressweb;

import java.lang.reflect.Method;

import cn.gaohongtao.police.mobile.InterfaceService;
import cn.gaohongtao.police.mobile.controller.TaskController;
import cn.gaohongtao.police.mobile.interceptor.ServiceErrorInterceptor;
import cn.gaohongtao.police.mobile.model.EovaDepart;
import cn.gaohongtao.police.mobile.model.EovaDict;
import cn.gaohongtao.police.mobile.model.TFileInfo;
import cn.gaohongtao.police.mobile.model.TTask;
import com.eova.config.EovaConfig;
import com.eova.interceptor.LoginInterceptor;
import com.jfinal.config.Interceptors;
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
        me.add("/service", InterfaceService.class);
        me.add("/police_task", TaskController.class);
        
        // 不需要登录拦截的URL
        LoginInterceptor.excludes.add("/init");
    
        InterfaceService.class.getMethods();
        for (Method method : InterfaceService.class.getMethods()) {
            LoginInterceptor.excludes.add("/service/" + method.getName());
        }
    }
    
    /**
     * 自定义Main数据源Model映射
     *
     * @param arp
     */
    @Override
    protected void mapping(ActiveRecordPlugin arp) {
        // 自定义的Model映射往这里加。。。
        arp.addMapping("t_file_info", TFileInfo.class);
        arp.addMapping("t_task", TTask.class);
    }
    
    protected void mappingEova(ActiveRecordPlugin arp) {
        super.mappingEova(arp);
        arp.addMapping("eova_depart", EovaDepart.class);
        arp.addMapping("eova_dict", EovaDict.class);
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
    
    @Override
    public void configInterceptor(Interceptors me) {
        super.configInterceptor(me);
        me.add(new ServiceErrorInterceptor());
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
