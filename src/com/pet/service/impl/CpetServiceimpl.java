package com.pet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.CpetMapper;
import com.pet.mapper.UserMapper;
import com.pet.pojo.Cpet;
import com.pet.service.CpetService;

@Service("cpetService")
public class CpetServiceimpl implements CpetService {
	@Autowired
	private CpetMapper cpetMapper;
	
	@Override
	public Integer addCpet(Cpet cpet) {
		return cpetMapper.addCpet(cpet);
	}

}
