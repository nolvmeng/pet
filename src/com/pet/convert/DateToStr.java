package com.pet.convert;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateToStr {
	
	public static String convertDate(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return simpleDateFormat.format(date);
		
	}
	public static String convertTime(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd:HH-mm-ss");
		return simpleDateFormat.format(date);
		
	}
	
}
