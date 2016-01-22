package nagel.frame.category.dao;

import java.util.List;
import java.util.Map;

import nagel.frame.category.pojo.Room;

/**
 * 项目名称 : nagel
 * 创建日期 : 2016年1月18日
 * 类  描  述 : 对房间信息的操作
 * 修改历史 : 
 */
public interface RoomDao {
    /**
     * 
     * 添加房间信息
     * @param room
     * @return
     * 2016年1月18日 by lottery
     */
    public int addRoomInfo(Room room);
    
    /**
     * 
     * 根据条件查询房间信息
     * @param map
     * @return
     * 2016年1月19日 by lottery
     */
    public List<Room> queryRoomList(Map<String,Object> map);
    
    /**
     * 
     * 根据条件可以查出总共多少数据
     * @param map
     * @return
     * 2016年1月19日 by lottery
     */
    public Integer queryRoomCount(Map<String,Object> map);
    
}
