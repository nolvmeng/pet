package com.pet.service;

import java.util.List;
import java.util.Set;

import com.pet.pojo.Cpet;
import com.pet.pojo.Img;
import com.pet.pojo.Regist;

public interface CpetService {
	public Integer addCpet(Cpet Cpet);
	public Cpet getImgByCid(Integer c_id);
}
