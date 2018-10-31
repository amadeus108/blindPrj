package com.blindproject.blind.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherSerlvetInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		
		return null;
		
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] { 
				ServletContextConfig.class,
				ServiceContextConfig.class
				/*SecurityContextConfig.class*/
		};
	}

	@Override
	protected String[] getServletMappings() {
		/*
	  <servlet-mapping>
	  	<servlet-name>dispatcher</servlet-name>
	  	<url-pattern>/</url-pattern>
	  </servlet-mapping>
	  */
	  
		return new String[] {"/"};
	}
	
	//한글 살려
	@Override
    protected Filter[] getServletFilters() {
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
	    characterEncodingFilter.setEncoding("UTF-8"); //기본 encoding 방식을 UTF-8로 설정
	    characterEncodingFilter.setForceEncoding(true); //어떤 경우라도 이 encoding 방식을 강제 적용

	    return new Filter[] {
	        characterEncodingFilter
	    };
    }

	
}
