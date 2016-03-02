package cn.gaohongtao.police.mobile;

import com.alibaba.fastjson.JSONObject;

/**
 * @author gaohongtao
 */
public class Protocol {
    
    private JSONObject message;
    
    public Protocol() {
        this("success");
        message.put("code", 0);
    }
    
    public Protocol(final String message) {
        this.message = new JSONObject();
        this.message.put("message", message);
    }
    
    public Protocol data(String key, Object value) {
        JSONObject data;
        if (this.message.containsKey("data")) {
            data = message.getJSONObject("data");
        } else {
            data = new JSONObject();
            message.put("data", data);
        }
        data.put(key, value);
        return this;
    }
    
    public Protocol argumentError() {
        message.put("code", 101);
        return this;
    }
    
    public Protocol requestError() {
        message.put("code", 100);
        return this;
    }
    
    public Protocol serverError() {
        message.put("code", 102);
        return this;
    }
    
    public JSONObject send() {
        return message;
    }
    
}
