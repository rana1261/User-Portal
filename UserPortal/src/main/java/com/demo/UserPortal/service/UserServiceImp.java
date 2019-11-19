package com.demo.UserPortal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.UserPortal.model.User;
import com.demo.UserPortal.repository.UserRepository;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserRepository userRepository;

	@Override
	public int save(User user) {
		try {
			userRepository.save(user);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}
	
	public User getEmail(String email) {
		try {
			User user=userRepository.findByEmail(email);
			return user;
		} catch (Exception e) {
			return null;
		}
		
	}

	
	
	public List<User> getAllUser(){
		return userRepository.findAll();
	}
	
	

	@Override
	public List<User> getUserByName(String name) {
		
		try {
			List<User> userlist=userRepository.findUserByName(name);
			return userlist;
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
