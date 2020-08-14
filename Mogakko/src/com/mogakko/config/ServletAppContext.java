package com.mogakko.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//스프링 mvc 프로젝트에 관련된 설정을 하는 클래스
@Configuration
//Controller 어노테이션이 셋팅되어있는 클래스를 Controller로 등록한다. 
@EnableWebMvc
//스캔할 패키지를 시정한다.
@ComponentScan("com.mogakko.controller")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	@Value("${db.classname}")
	private String db_classname;
	
	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;
	
		
	//controller의 메서드가 반환하는 jsp의이름 앞뒤에 경로와 확장자를 붙혀주도록 설정한다. 
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	//정적 파일의 경로를 매핑한다. 
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources");
	}
	
	//데이터베이스 접속 접속정보를 관리하는 Bean
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		
		return source;
	}
	
	//쿼리문과 접속 정보를 관리하는 객체
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean  = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}
	
		
	
	//두개의 프로퍼터기 따로 관리된다.
	//자바코드 방식에선 properties파일을 propertySource로 등록하고, 파일이 다르다 하더라도, 메세지로 등록하면 
	//두개가 충돌해서 하나도 인식못하는 일이 발생한다. 
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	//error_message.properties을 메세지로 등록할거다
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res =  new ReloadableResourceBundleMessageSource();
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
		
	}
	

}




















