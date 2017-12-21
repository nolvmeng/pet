package com.pet.service.impl;

import java.net.URLEncoder;
import java.util.Map;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.util.Property;
import com.pet.util.CipherUtil;
import com.pet.mapper.UserMapper;
import com.pet.pojo.User;
import com.pet.service.UserService;
@Service("userService")
public class UserServiceimpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	public static final String DEFAULT_USER_AVATAR = "default-avatar.jpg";
	
	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		User user = userMapper.getUserById(id);
		
		return user;
	}

	@Override
	public String addUser(User user , Map map) {
		// TODO Auto-generated method stub
		String email = user.getEmail();
		if(email == null || email.length() <= 0)
			return Property.ERROR_EMAIL_EMPTY;		//"001001" "邮箱输入为空";
		else{
			//4 ValidateEmail
			if(!ValidateEmail(email))
				return Property.ERROR_EMAIL_FORMAT; 
			//5 email exist?
			User user2 = findByEmail(email);
			if(user != null) {
				//6 user status check
				if(1 == user.getUser_status())
					return Property.ERROR_ACCOUNT_EXIST;
				else if(1 == user.getUser_status()){
				//	map.put("activationKey", URLEncoder.encode(user.getUser_activationKey()));
					return Property.ERROR_ACCOUNT_INACTIVE;
				}
		}
			//}
		}	 
				user.setUser_pwd(CipherUtil.generatePassword(user.getUser_pwd()));
				user.setEmail(email);
				user.setUser_status(1);
				user.setUser_avatar(DEFAULT_USER_AVATAR);
				String activationKey = CipherUtil.generateActivationUrl(email, user.getUser_pwd());
				System.out.println(activationKey);
				user.setUser_activationKey(activationKey);
				 userMapper.addUser(user);
				 map.put("key", activationKey);
				 map.put("uid", user.getU_id());
			 
			//	map.put("activationKey", URLEncoder.encode(activationKey));
				return Property.SUCCESS_ACCOUNT_REG ;
		         
		    
			
	}

	
	@Override
	public User findUser(User user) {
		// TODO Auto-generated method stub
		
		user.setUser_pwd(CipherUtil.generatePassword(user.getUser_pwd()));//验证
		
		if(userMapper.findUser(user)!=null){
			User u = userMapper.findUser(user);
		return u;}
		else return null;
	}
	

	@Override
	public User findByEmail(String email) {
		
		
		return userMapper.finUserByEmail(email);
	}
	
	@Override
	public void updateStatus(User user) {
		userMapper.updateStatus(user);
	 
		 
		
	}
	
	

	/**
	 * 验证邮箱格式正确性
	 * @param email
	 * @return
	 */
	private boolean ValidateEmail(String email) {
		boolean result = true;
		try {
			InternetAddress emailAddr = new InternetAddress(email);
			emailAddr.validate();
		} catch (AddressException e) {
			result = false;
		}
		return result;
	}
 

	

}
