package com.pet.mapper;

import java.util.List;

import com.pet.pojo.Cpet;
import com.pet.pojo.Regist;

public interface RegistMapper {
	public void addRegist(Regist regist);
	public List<Regist> getAdoptBycategory(Cpet cpet);
	public Regist getCpetById(Regist regist);
}
