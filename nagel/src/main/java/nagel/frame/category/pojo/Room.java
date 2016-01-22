package nagel.frame.category.pojo;

import java.util.Date;
/**
 * 项目名称 : nagel
 * 创建日期 : 2016年1月18日
 * 类  描  述 : 房间pojo模型
 * 修改历史 : 
 */
public class Room {
    
    private String roomId;
    
    private double price;
    
    private int state;
    
    private String userId;
    
    private String userName;
    
    private Date checkTime;
    
    private int leaseTime;
    
    private Date expireTime;
    
    private int depositState;
    
    private double deposit;

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public int getLeaseTime() {
        return leaseTime;
    }

    public void setLeaseTime(int leaseTime) {
        this.leaseTime = leaseTime;
    }

    public Date getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Date expireTime) {
        this.expireTime = expireTime;
    }

    public int getDepositState() {
        return depositState;
    }

    public void setDepositState(int depositState) {
        this.depositState = depositState;
    }

    public double getDeposit() {
        return deposit;
    }

    public void setDeposit(double deposit) {
        this.deposit = deposit;
    }
}
