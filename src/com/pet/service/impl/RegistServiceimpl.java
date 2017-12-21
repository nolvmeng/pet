package com.pet.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.RegistMapper;
import com.pet.pojo.Cpet;
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

	@Override
	public List<Regist> getAdoptBycategory(String category) {
		// TODO Auto-generated method stub
		Cpet cpet = new Cpet();
		cpet.setCategory(category);
		
		System.out.println("kanzheli"+category);
		if(registMapper.getAdoptBycategory(cpet)!=null){
			return registMapper.getAdoptBycategory(cpet);
		}else
		return null;
	}

	@Override
	public Regist getCpetById(Integer r_id) {
		// TODO Auto-generated method stub
		Regist regist = new Regist();
		regist.setR_id(r_id);
		if(registMapper.getCpetById(regist)!=null){
			return registMapper.getCpetById(regist);
		}
		
		return null;
	}

}