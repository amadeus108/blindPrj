package com.blindproject.blind.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Configuration
@ComponentScan("com.blindproject.blind.config")
@EnableWebSecurity
public class SecurityContextConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private BasicDataSource dataSource;
	
	//@Autowired	
	//private AuthenticationSuccessHandler successHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.csrf().disable()
		.headers()
			.frameOptions()
			.sameOrigin()
			.and()
		.authorizeRequests() 
			.antMatchers("/admin/**").hasAnyRole("ADMIN")
			.antMatchers("/employee/**").hasAnyRole("ADMIN, EMPLOYEE")
			.antMatchers("/apply/**").hasAnyRole("APPLIER")
		.anyRequest().permitAll() 
		.and()
	    .formLogin() /*인증은 폼로그인 방식으로 한다*/
	        .loginPage("/guest/login") /*로그인할때 보여줄 페이지, get요청*/
	        .loginProcessingUrl("/guest/login") /*로그인 페이지와 url은 세트로 있어야 한다. post요청은 이 페이지에서 한다.*/
	        .defaultSuccessUrl("/index") /*그냥 로그인 성공하면 어디로 갈것인가, 보통 사용자의 메인페이지로 간다*/
	        /*.successHandler(successHandler)*/ /*로그인 성공했어, 너 처리할 거 있니?? 어디로 갈래? / 클래스 만들고, 객체 만들고, 구현해줘야함*/
	        .and()
	    .logout()
	        .logoutUrl("/guest/logout") /*로그아웃할때 어느 페이지로 갈 것이냐*/
	        .logoutSuccessUrl("/index") /*로그아웃 성공하면 어느 페이지로 갈 것이냐*/
	    ;
		
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth
			.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery("select loginId id, pwd password, 1 enabled from Employee where loginId = ?")
			.authoritiesByUsernameQuery("select loginId id, roleName authority from Employee where loginId = ?")
			.passwordEncoder(new BCryptPasswordEncoder());
			// 회원가입 만들 것 
	
	}
	
	
	
}
