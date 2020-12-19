package com.cloudstorage.controller;

import com.cloudstorage.service.IUserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 管理员维护的接口
 */
@Controller
public class AdminController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private IUserService userService;


    /**
     * 用户修改密码的接口，可以直接访问
     *
     * @param userName userName
     * @param password password
     */
    @RequestMapping("/alterPassword")
    @ResponseBody
    public void alterSecret(@RequestParam String userName, @RequestParam String password) {
        userService.alterPassword(userName, password);
    }

    /**
     * 根据用户名删除用户，可以直接访问
     *
     * @param userName userName
     */
    @RequestMapping("/deleteUser")
    @ResponseBody
    public void deleteUser(@RequestParam String[] userName) {
        userService.deleteByUsernames(userName);
    }

}
