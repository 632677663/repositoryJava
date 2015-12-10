package nagel.frame.category.util;
import org.apache.commons.lang3.StringUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月9日
 * 类  描  述 : JSON转换工具类
 * 修改历史 : 
 */
public class JsonHelper {
    
    public static JSONObject converJson(String json){
        
        if(StringUtils.isEmpty(json)){
            
        }
        
        return JSON.parseObject(json);
    }
    
}
