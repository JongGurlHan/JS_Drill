package com.mogakko.config;

import javax.servlet.Filter;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/*web.xml과 같은기능*/
//public class SpringConfigClass implements WebApplicationInitializer  {
//
//	@Override
//	public void onStartup(ServletContext servletContext) throws ServletException {
//	//spring mvc프로젝트 서정을 위해 작성하는 클래스의 객체를 생성한다. 
//	AnnotationConfigWebApplicationContext servletAppContext  = new AnnotationConfigWebApplicationContext();
//	servletAppContext.register(ServletAppContext.class);
//		
//	//요청 발생시 요청을 처리하는 서블릿을 DispatcherServlet으로 설정해준다.  
//	DispatcherServlet dispatcherServlet = new DispatcherServlet(servletAppContext);
//	ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", dispatcherServlet);
//	
//	//부가설정
//	servlet.setLoadOnStartup(1);
//	servlet.addMapping("/");
//	
//	//Bean을 정의하는 클래스를 지정한다.// 리스너 설정 
//	AnnotationConfigWebApplicationContext rootAppContext = new AnnotationConfigWebApplicationContext();
//	rootAppContext.register(RootAppContext.class);
//	
//	ContextLoaderListener listner = new ContextLoaderListener(rootAppContext);
//	servletContext.addListener(listner);
//	
//	//파라미터의 인코딩필터 설정
//	FilterRegistration.Dynamic filter = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
//	filter.setInitParameter("encoding", "UTF-8");
//	filter.addMappingForUrlPatterns(null, false, "dispatcher");
//	
//	}
//
//}

public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer{

	//DispatcherServlet에 매핑할 요청 주소를 셋팅한다.
	@Override
	protected String[] getServletMappings() {
		return new String[]{"/"};
	}
	//Spring mvc프로젝트 설정을 위한 클래스를 지정한다.
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {ServletAppContext.class};
	}
	//프로젝트에서 사용할 bean들을 정의하기 위한 클래스를 지정한다. 
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootAppContext.class};
	}
	
	//파라미터 인코딩 필터 설정
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		return new Filter[] {encodingFilter};
	}
}