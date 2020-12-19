package com.cloudstorage.util;

import com.cloudstorage.dao.model.User;

import javax.servlet.http.HttpServletRequest;

public class WebUtil {

    public static String getSessionUserName(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        String userName = user.getUserName();
        if (userName == null) {
            userName = "null";
        }
        return userName;
    }
}
