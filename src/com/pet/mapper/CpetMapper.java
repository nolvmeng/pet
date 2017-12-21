package com.pet.mapper;

import java.util.List;
import java.util.Set;

import com.pet.pojo.Cpet;
import com.pet.pojo.Img;


public interface CpetMapper {
	public Integer addCpet(Cpet cpet);
	public Cpet getImgByCid(Cpet cpet);
	}
