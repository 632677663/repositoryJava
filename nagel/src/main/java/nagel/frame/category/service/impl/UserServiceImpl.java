package nagel.frame.category.service.impl;

import java.util.HashMap;
import java.util.Map;

import nagel.frame.category.dao.UserDao;
import nagel.frame.category.pojo.User;
import nagel.frame.category.service.UserService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月16日
 * 类  描  述 : 用户操作实现
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserDao userDao;
    
    @Override
    public User findUser(String loginName, String passWord) {
        //传入参数判空
        if(StringUtils.isEmpty(loginName) || StringUtils.isEmpty(passWord)){
            return null;
        }
        //封装参数
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("loginName", loginName);
        map.put("passWord", passWord);
        
        return userDao.findUser(map);
    }

}
