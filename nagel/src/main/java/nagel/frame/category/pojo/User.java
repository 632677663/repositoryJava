package nagel.frame.category.pojo;

import java.util.Date;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月11日
 * 类  描  述 : 用户对象模型
*/
public class User {
    
    private Integer id;
    
    private String loginName;
    
    private String passWord;
    
    private Date createTime;
    
    private Integer level;

    private String idCard;
    
    private String phone;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
