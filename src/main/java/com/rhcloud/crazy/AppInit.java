package com.rhcloud.crazy;

import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import com.rhcloud.crazy.configs.RootConfigurer;
import com.rhcloud.crazy.configs.ServletConfigurer;

public class AppInit implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext context) {
    	AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(RootConfigurer.class);
     	
    	context.addListener(new ContextLoaderListener(rootContext));
        // adding Spring Security Filter
       /* context.addFilter("springSecurityFilterChain", 
        		new DelegatingFilterProxy("springSecurityFilterChain"))
                    .addMappingForUrlPatterns(null, false, "/*");*/
        // Create the dispatcher servlet's Spring application context
     	AnnotationConfigWebApplicationContext servletContext = new AnnotationConfigWebApplicationContext();
    	servletContext.register(ServletConfigurer.class);
        // add the dispatcher servlet and map it to /
        ServletRegistration.Dynamic dispatcher = 
        		context.addServlet("springDispatcher", new DispatcherServlet(servletContext));
        dispatcher.setLoadOnStartup(0);
        dispatcher.addMapping("/");
    }

}
