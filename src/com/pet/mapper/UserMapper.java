package com.pet.mapper;

import java.util.List;

import com.pet.pojo.User;

public interface UserMapper {
	public void addUser(User user);
	public User findUser(User user);
	public void delete(Integer id);
	public void update(User user);
	public List<User> getUserAll();
	public User getUserById(Integer id);
	

}
