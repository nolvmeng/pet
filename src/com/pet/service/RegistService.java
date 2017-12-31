package com.pet.service;

import java.util.List;

import com.pet.pojo.Cpet;
import com.pet.pojo.Regist;

public interface RegistService {
	public Integer addRegist(Regist regist);
	public List<Regist> getAdoptBycategory(String category);
	public Regist getCpetById(Integer r_id);
}
