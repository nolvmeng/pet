package com.pet.service;

import java.util.Map;

import com.pet.pojo.User;

public interface UserService {
	public User getUserById(Integer id);
	public String addUser(User user , Map map);
	public User findUser(User user);
	public User findByEmail(String email);
	 
	public void updateStatus(User user);
}
