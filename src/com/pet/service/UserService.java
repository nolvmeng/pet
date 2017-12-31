package com.pet.service;

import java.util.List;
import java.util.Map;

import com.pet.pojo.User;

public interface UserService {
	public User getUserById(Integer id);
	public String addUser(User user , Map map);
	public User findUser(User user);
	public User findByEmail(String email);
	 
	public void updateStatus(User user);
	public boolean isExistUserName(String userName);
	boolean email_isExistUserName(String email);
	public List<User> getUserAll();
}
