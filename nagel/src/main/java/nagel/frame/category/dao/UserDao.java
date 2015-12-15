package nagel.frame.category.dao;

import java.util.Map;

import nagel.frame.category.pojo.User;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月11日
 * 类  描  述 : 用户数据操作接口
 */
public interface UserDao {
    
    /**
     * 
     * 根据登录名以及密码查询数据库
     * @param map
     * @return
     * 2015年12月14日 by lottery
     */
    public User findUser(Map<String,Object> map);
    
}
