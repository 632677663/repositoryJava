package nagel.frame.category.service;

import java.util.List;
import java.util.Map;

import nagel.frame.category.pojo.Room;

/**
 * 项目名称 : nagel
 * 创建日期 : 2016年1月18日
 * 类  描  述 : Room 设置
 */
public interface RoomService {
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
     * 根据条件查询所有数据总数
     * @param map
     * @return
     * 2016年1月19日 by lottery
     */
    public Integer queryRoomCount(Map<String,Object> map);
}
