package nagel.frame.category.controller;

import javax.servlet.http.HttpServletRequest;

import nagel.frame.category.pojo.User;
import nagel.frame.category.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月11日
 * 类  描  述 : 用户处理方法
 */
@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("/show")
    public String test(HttpServletRequest request,Model model){
        
        User findUser = userService.findUser("admin", "123456");
        
        System.out.println("user:"+findUser.getLoginName());
        
        return "main";
    }
    
}
