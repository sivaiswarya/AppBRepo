package com.websystique.springmvc;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;
import java.util.List;
import org.junit.Test;
import org.mockito.Matchers;


import com.websystique.springmvc.model.User;
import com.websystique.springmvc.service.UserService;

public class TestClass {
	
	UserService us = mock(UserService.class);
	User value = null;
	
	@Test
	public void findByIdTest(){
		
		when(us.findById(1)).thenReturn(value);
		assertEquals(us.findById(10),value);

	}
	
	@Test
	public void saveUserTest(){
		
		us.saveUser(value);
		verify(us).saveUser(Matchers.eq(value));
	}
	
	
	@Test
	public void updateUserTest(){
		
		us.updateUser(value);
		verify(us).updateUser(value);
		
	}
	
	@Test
	public void deleteUserByIdTest(){
		us.deleteUserById(3);
		us.deleteUserById(2);
		//us.deleteUserById(3);
		verify(us).deleteUserById(3);
	}
	
	@Test
	public void findAllUsersTest(){
		List<User> value1 = null;
		when(us.findAllUsers()).thenReturn(value1);
		us.findAllUsers();
		verify(us).findAllUsers();
		
		
	}
	
	@Test
	public void isUserExistTest(){
		
		when(us.isUserExist(value)).thenReturn(true);
		us.isUserExist(value);
		verify(us).isUserExist(value);
		
		
	}
	
	

}
