package nagel.frame.category.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 项目名称 : nagel
 * 创建日期 : 2015年12月18日
 * 类  描  述 : 自定义事务注解
 */
@Target({ElementType.METHOD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
public @interface BaseTransaction {}
