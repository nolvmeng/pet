package com.pet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.AdoptMapper;
import com.pet.mapper.CpetMapper;
import com.pet.mapper.RegistMapper;
import com.pet.pojo.Adopt;
import com.pet.pojo.Regist;
import com.pet.service.AdoptService;
@Service("adoptService")
public class AdoptServiceimpl implements AdoptService {
	@Autowired
	private AdoptMapper adoptMapper;
	@Autowired
	private RegistMapper registMapper;
	@Override
	public Boolean addAdopt(Adopt adopt,Integer r_id) {
		// TODO Auto-generated method stub
		if(adoptMapper.addAdopt(adopt)>0){
		registMapper.alterStatus0(r_id);
		return true;
		}else
			return false;

	}

}
