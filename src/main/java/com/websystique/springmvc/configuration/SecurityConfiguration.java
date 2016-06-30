package com.websystique.springmvc.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@ComponentScan(basePackages = "com.websystique")
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select id,password,1 from AppB where id = ?")
				.authoritiesByUsernameQuery("select id,role from AppB where id = ?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/","/user/**")
				.access("hasRole('ROLE_ADMIN')")
				.and().formLogin().loginPage("/login")
				.usernameParameter("ssoId").passwordParameter("password").and().csrf().disable()
				.exceptionHandling()
				.accessDeniedPage("/Access_Denied");

	}

	@Autowired
	DataSource dataSource;
	
	
}


//@Override
//protected void configure(HttpSecurity http) throws Exception {
//	http.authorizeRequests().antMatchers("/", "/home").permitAll()
//			.antMatchers("/admin", "/register", "/registerSavePatient", "/deletePatient", "/updatePatient",
//					"/updateSavePatient")
//			.access("hasRole('ROLE_ADMIN')").antMatchers("/patient")
//			.access("hasRole('ROLE_ADMIN') or hasRole('ROLE_PATIENT')").and().formLogin().loginPage("/login")
//			.usernameParameter("ssoId").passwordParameter("password").and().csrf().and().exceptionHandling()
//			.accessDeniedPage("/Access_Denied");
//
//}