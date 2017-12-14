package com.pet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.UserMapper;
import com.pet.pojo.User;
import com.pet.service.UserService;
@Service("userService")
public class UserServiceimpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		User user = userMapper.getUserById(1);
		
		return user;
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
			
	}

	@Override
	public User findUser(User user) {
		// TODO Auto-generated method stub
		if(userMapper.findUser(user)!=null){
			User u = userMapper.findUser(user);
		return u;}
		else return null;
	}

}
