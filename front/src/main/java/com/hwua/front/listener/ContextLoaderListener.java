package com.hwua.front.listener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //获取ServletContet
        ServletContext servletContext = servletContextEvent.getServletContext();
        //获取sprin的ApplicationContext
        WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        //从IOC容器中获取需要使用的service
        //4.调用Service中的方法查询需要的数据
        //5.将查询到的数据放入application作用域
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
