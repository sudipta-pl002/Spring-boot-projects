package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.User;
import com.example.demo.repository.UserRepository;
@Service
public class UserServiceImpl implements UserServices {
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public boolean registerUser(User user) {
		try
		{
			userRepository.save(user);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public User loginUser(String email, String password) {
		User ValidUser = userRepository.findByEmail(email);
		if(ValidUser != null && ValidUser.getPassword().equals(password)) { 
			return ValidUser;
		}
		return null;
	}

}
