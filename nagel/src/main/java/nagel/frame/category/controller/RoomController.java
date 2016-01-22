package nagel.frame.category.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import nagel.frame.category.pojo.Room;
import nagel.frame.category.service.RoomService;
import nagel.frame.category.util.PageBean;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * 项目名称 : nagel
 * 创建日期 : 2016年1月13日
 * 类  描  述 : 房间管理处理方法
 */
@Controller
public class RoomController extends BaseController{
    
    private static Logger logger = Logger.getLogger(RoomController.class);
    
    @Autowired
    private RoomService roomService;
    
    /*
     * 跳转到添加房间的页面
     */
    @RequestMapping(value="/room/toAddRoom",method=RequestMethod.GET)
    public String toAddRoom(HttpServletRequest request,Model model){
        return "room/addRoom";
    }
    
    
    /**
     * 
     * 添加房间信息
     * @param room
     * @param model
     * @return
     * 2016年1月19日 by lottery
     */
    @RequestMapping(value="/room/addRoom",method=RequestMethod.POST)
    @ResponseBody
    public boolean addRoom(@ModelAttribute Room room){
        int result = 0;
        try {
            result = roomService.addRoomInfo(room);
        } catch (Exception e) {
            logger.error("数据库错误,添加房间信息失败!");
        }
        //判断是否插入成功
        if(result < 1){
            return false;
        }
        return true;
    }
    
    /**
     * 
     * 查询房间信息
     * @return
     * 2016年1月19日 by lottery
     */
    @RequestMapping(value="/room/queryRoom",method=RequestMethod.GET)
    public String queryList(HttpServletRequest request,Model model){
        Map<String,Object> map = new HashMap<String,Object>();
        
        String roomId = request.getParameter("roomId");
        
        String state = request.getParameter("state");
        
        map.put("roomId", roomId);
        map.put("state", state);
        //查询满足条件的数据总数有多少
        int count = roomService.queryRoomCount(map);
        
        //分页查询条件
        map.put("page", page);
        map.put("pageSize", pageSize);
        
        List<Room> roomList = roomService.queryRoomList(map);
        PageBean pageBean = new PageBean(page, count, pageSize, roomList);
        
        //model.addAttribute(pageBean);
        model.addAttribute("data", pageBean);
        return "room/queryRoom";
    }
}
