package com.websystique.springmvc.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


import com.websystique.springmvc.model.User;
import com.websystique.springmvc.service.UserService;
import com.websystique.springmvc.service.UserServiceImpl;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.websystique")
@Import(SecurityConfiguration.class)
@EnableTransactionManagement
public class HelloWorldConfiguration extends WebMvcConfigurerAdapter{
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		registry.viewResolver(viewResolver);
	}
	
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);

		sessionBuilder.addAnnotatedClasses(User.class);
		sessionBuilder.addProperties(getHibernateProperties());
		return sessionBuilder.buildSessionFactory();
	}
	
	@Bean(name = "dataSource")
	public BasicDataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521/xe");
		dataSource.setUsername("siva");
		dataSource.setPassword("Cogent123");
		return dataSource;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.OracleDialect");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update"); 
		return properties;

	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired
	@Bean(name = "userService")
	public UserService getUserDao(SessionFactory sessionFactory) {
		return new UserServiceImpl(sessionFactory);
	}

	@Bean
	public JavaMailSenderImpl javaMailSenderImpl() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		mailSender.setUsername("ishutest90@gmail.com");
		mailSender.setPassword("Cogent123");
		Properties prop = mailSender.getJavaMailProperties();
		prop.put("mail.transport.protocol", "smtp");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.debug", "true");
		return mailSender;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}

}