package com.pet.convert;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.springframework.core.convert.converter.Converter;

public class ItemDateConvert implements Converter<String, Date> {
	@Test
	@Override
	public Date convert(String source) {
		// TODO Auto-generated method stub
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			simpleDateFormat.parse(source);
			return simpleDateFormat.parse(source);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}

}
