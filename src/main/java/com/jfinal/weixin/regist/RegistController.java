package com.jfinal.weixin.regist;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.core.Controller;
import com.jfinal.weixin.sdk.api.*;
import com.jfinal.weixin.sdk.jfinal.ApiController;
import com.jfinal.weixin.usercontroller.UserController;
import com.jfinal.weixin.util.WeixinUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LIYU on 2016/11/16.
 */
public class RegistController extends ApiController {

    public void index() {
        boolean snsapiBase = true;
        //String code = SnsAccessTokenApi.getAuthorizeURL(WeixinUtil.getApiConfig().getAppId(),"http://214512dd.ngrok.io/api/triggerSender", snsapiBase);
        //SnsAccessToken snsAccessToken = SnsAccessTokenApi.getSnsAccessToken(WeixinUtil.getApiConfig().getAppId(), WeixinUtil.getApiConfig().getAppSecret(), code);
        //System.out.println("snsAccessToken.getOpenid() : "+snsAccessToken.getOpenid());
        //ApiResult apiResult = SnsApi.getUserInfo(snsAccessToken.getAccessToken(), snsAccessToken.getOpenid());
        render("regist.jsp");
    }

    @Override
    public ApiConfig getApiConfig() {
        return WeixinUtil.getApiConfig();
    }


}
