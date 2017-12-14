package pet;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

public class convertTest {

	@Test
	public void test() {
		 SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
		 String riqi = "2017-09-21";
		 try {
			Date date =  sdf.parse(riqi);
			System.out.println(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}

}
