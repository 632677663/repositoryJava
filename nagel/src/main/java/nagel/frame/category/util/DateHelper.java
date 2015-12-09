package nagel.frame.category.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.util.StringUtils;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月8日
 * 类  描  述 : 日期工具类
 * 修改历史 : 
 */
public class DateHelper {
    
    /**
     * 
     * 格式化日期为特定格式的字符串
     * @param style 日期格式
     * @param data  带格式化日期
     * @return
     * 2015年12月9日 by master
     */
    public static String convertToString(String style,Date data){
        
        //如果传入的格式或日期为空则返回空串
        if(StringUtils.isEmpty(style) || null == data){
            return null;
        }
        
        SimpleDateFormat fmt = new SimpleDateFormat(style);
        
        return fmt.format(data);
        
    }
    
}
