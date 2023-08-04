package com.spring.serviceimpl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
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

	@Override
	public int updateUser(String user_id, String pwd) {
		return mapper.changeUserByIdPwd(user_id, pwd);
	}
	
	@Override
	public int deleteUser(String user_id) {
		return mapper.deleteUserById(user_id);
	}
	@Override
	public List<String> getUsersByUserId(String keyword) {
        return mapper.getUsersByUserId(keyword);
    }
	@Override
	public String findId(String name, String jumin) {
		return mapper.findId(name, jumin);
	}
	@Override
	public boolean checkUser(String user_id, String name, String jumin) {
	    String dbResult = mapper.checkUser(user_id, name, jumin);
	    return dbResult != null;
	}
	@Override
	public boolean updatePasswordForReset(String userId, String newPassword) {
        String encodedPassword = passwordEncoder.encode(newPassword);
        int updatedRowCount = mapper.updateUserPassword(userId, encodedPassword);

        // 적어도 하나의 행이 업데이트되었는지 확인
        if (updatedRowCount > 0) {
            return true; // 업데이트 성공
        }

        return false; // 업데이트 실패
    }
}
