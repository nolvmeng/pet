package com.pet.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.CpetMapper;
import com.pet.mapper.UserMapper;
import com.pet.pojo.Cpet;
import com.pet.pojo.Img;
import com.pet.service.CpetService;

@Service("cpetService")
public class CpetServiceimpl implements CpetService {
	@Autowired
	private CpetMapper cpetMapper;
	
	@Override
	public Integer addCpet(Cpet cpet) {
		return cpetMapper.addCpet(cpet);
	}

	@Override
	public Cpet getImgByCid(Integer c_id) {
		// TODO Auto-generated method stub
		Cpet cpet = new Cpet();
		cpet.setC_id(c_id);
		if(cpetMapper.getImgByCid(cpet)!=null)
		return cpetMapper.getImgByCid(cpet);
		else return null;
	}

}
