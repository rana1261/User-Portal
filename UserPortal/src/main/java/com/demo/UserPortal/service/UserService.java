package com.demo.UserPortal.service;

import java.util.List;

import com.demo.UserPortal.model.User;

public interface UserService {
	public int save(User  user);
	
	public User getEmail(String email);
	public List<User> getAllUser();
	public List<User> getUserByName(String name);

}
