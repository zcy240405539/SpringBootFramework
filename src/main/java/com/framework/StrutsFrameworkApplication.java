package com.framework;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
//@ComponentScan({"com.config", "com.spring", "com.framework.bean"})
// Business model
@ComponentScan("com.framework.business")
// Database model
@EnableJpaRepositories("com.framework.jpa")
@EntityScan("com.framework.jpa")
@EnableTransactionManagement
public class StrutsFrameworkApplication extends SpringBootServletInitializer implements ApplicationRunner{

	public static void main(String[] args) {
		SpringApplication.run(StrutsFrameworkApplication.class, args);
	}

	 @Bean
	 public FilterRegistrationBean filterRegistrationBean() {
	  FilterRegistrationBean registrationBean = new FilterRegistrationBean();
	  StrutsPrepareAndExecuteFilter struts = new StrutsPrepareAndExecuteFilter();
	  registrationBean.setFilter(struts);
	  registrationBean.setOrder(1);
	  return registrationBean;
	 }

	 @Override
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	  return application.sources(StrutsFrameworkApplication.class);
	 }

	 public void run(ApplicationArguments args) throws Exception {
	  // TODO Auto-generated method stub

	 }

}
