package com.jfinal.weixin.regist;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jfinal.core.Controller;
import com.jfinal.regist.RegistDatas;
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
        String openid="oGGV9v14H4if8Jd_GYSEmlLKF70k";
        setAttr("openid",openid);
        if(RegistDatas.getUserById(openid)!=null){
            setAttr("registed","true");
        }else{
            setAttr("registed","false");
        }
        render("regist.jsp");
    }

    @Override
    public ApiConfig getApiConfig() {
        return WeixinUtil.getApiConfig();
    }


}
