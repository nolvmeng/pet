package com.pet.mapper;

import java.util.List;

import com.pet.pojo.User;

public interface UserMapper {
	public void addUser(User user);
	public User findUser(User user);
	public User finUserByEmail(String Email);
	public void delete(Integer id);
	public void updateStatus(User user);
	public List<User> getUserAll();
	public User getUserById(Integer id);
	public User findByUserName(String userName);
	
	

}
