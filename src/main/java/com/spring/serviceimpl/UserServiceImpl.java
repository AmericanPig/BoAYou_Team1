package com.spring.serviceimpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.domain.UserDTO;
import com.spring.mapper.UserMapper;
import com.spring.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;
	
	private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	
	
	@Override
	public int InsertJoin(UserDTO user) {
		String encodedPassword = passwordEncoder.encode(user.getPwd());
        user.setPwd(encodedPassword);


		 int result = 0;
		    try {
		        result = mapper.InsertJoin(user);
		    } catch (Exception e) {

		        System.err.println("이미있음 " + e.getMessage());
		    }
		    return result;
	
	}
	@Override
    public UserDTO login(UserDTO userDTO) {
        return mapper.login(userDTO);
    }
	@Override
	public boolean isPasswordMatched(String rawPassword, String encodedPassword) {
        return passwordEncoder.matches(rawPassword, encodedPassword);
	}
	@Override
	public UserDTO selectUserById(String user_id) {
	    return mapper.selectUserById(user_id);
	}


}
