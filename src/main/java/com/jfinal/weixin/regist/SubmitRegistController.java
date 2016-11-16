package com.jfinal.weixin.regist;

import com.jfinal.core.Controller;
import com.jfinal.regist.User;

/**
 * Created by LIYU on 2016/11/16.
 */
public class SubmitRegistController  extends Controller {

    public void index() {
        User user = new User();
        user.setName(getRequest().getParameter("name"));
        user.setHotelid(getRequest().getParameter("hotelid"));
        user.setLanguage(getRequest().getParameter("language"));
        user.setPwd(getRequest().getParameter("pwd"));
        System.out.println(user);
        String callback = getRequest().getParameter("callback");
        renderJson(String.valueOf(callback+"(\"success\")"));
    }
}