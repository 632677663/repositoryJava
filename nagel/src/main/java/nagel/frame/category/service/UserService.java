package nagel.frame.category.service;

import nagel.frame.category.pojo.User;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月16日
 * 类  描  述 : 用户操作
 */
public interface UserService {
    /**
     * 查询用户信息
     * @param loginName 登录名
     * @param passWord 登陆密码
     * @return User
     */
    public User findUser(String loginName,String passWord);
}
