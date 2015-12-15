package nagel.frame.category.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月15日
 * 类  描  述 : MD5加密工具,进行一些信息的加密
 * 修改历史 : 
 */
public class MD5Helper {
    
    /**
     * 
     * 对明文进行MD5的加密
     * @param msg 明文
     * @return 加密后的密文
     */
    public static String encrypt(String msg){
        MessageDigest md5 = null;
        try {
            
            md5 = MessageDigest.getInstance("MD5");
            
        } catch (NoSuchAlgorithmException e) {
            
            e.printStackTrace();
            
            return "";
        }
        char[] charArray = msg.toCharArray();
        byte[] byteArray = new byte[charArray.length];
        
        for (int i = 0; i < charArray.length; i++)  
            byteArray[i] = (byte) charArray[i];  
        byte[] md5Bytes = md5.digest(byteArray);  
        StringBuffer hexValue = new StringBuffer();  
        for (int i = 0; i < md5Bytes.length; i++){  
            int val = ((int) md5Bytes[i]) & 0xff;  
            if (val < 16)  
                hexValue.append("0");  
            hexValue.append(Integer.toHexString(val));  
        }  
        return hexValue.toString();  
    }
    
    
    // 测试主函数  
    public static void main(String args[]) {  
        String s = new String("tangfuqiang");  
        System.out.println("原始：" + s);  
        System.out.println("MD5后：" + encrypt(s));  
  
    }
    
}
