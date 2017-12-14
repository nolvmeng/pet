package com.pet.service.impl;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.RegistMapper;
import com.pet.pojo.Regist;
import com.pet.service.RegistService;

@Service("registService")
public class RegistServiceimpl implements RegistService {
	@Autowired
	private RegistMapper registMapper;
	
	@Override
	public void addRegist(Regist regist) {
		// TODO Auto-generated method stub
		System.out.println("============================"+regist.getC_id());
		registMapper.addRegist(regist);
		
	}

}
