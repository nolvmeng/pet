package pet;

import com.pet.util.CipherUtil;

public class CipherTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "12345";
	    String en_str = 	CipherUtil.generatePassword(str);
		
		System.out.println(en_str);
		
	}

}
