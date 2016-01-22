package nagel.frame.category.service.impl;

import java.util.List;
import java.util.Map;

import nagel.frame.category.dao.RoomDao;
import nagel.frame.category.pojo.Room;
import nagel.frame.category.service.RoomService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

    @Autowired
    private RoomDao roomDao;
    
    @Override
    public int addRoomInfo(Room room) {
        return roomDao.addRoomInfo(room);
    }
    
    
    @Override
    public List<Room> queryRoomList(Map<String, Object> map) {
        return roomDao.queryRoomList(map);
    }


    @Override
    public Integer queryRoomCount(Map<String, Object> map) {
        return roomDao.queryRoomCount(map);
    }

}
