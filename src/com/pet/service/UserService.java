package com.pet.service;

import com.pet.pojo.User;

public interface UserService {
	public User getUserById(Integer id);
	public String addUser(User user);
	public User findUser(User user);
	public User findByEmail(String email);
}
