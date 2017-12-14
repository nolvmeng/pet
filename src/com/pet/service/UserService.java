package com.pet.service;

import com.pet.pojo.User;

public interface UserService {
	public User getUserById(Integer id);
	public void addUser(User user);
	public User findUser(User user);
}
