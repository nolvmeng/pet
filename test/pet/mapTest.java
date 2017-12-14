package pet;

import java.util.HashMap;
import java.util.Map;
 
public class mapTest {

	 public static void doiy(Map<String, String> map ){
		map.put("d", "s");
		
	}
	
	
	public static void main(String[] args) {
		
		Map<String, String> map = new HashMap<String, String>();
		System.out.println(map.size());
		doiy(map);
		System.out.println(map.size());
	}

}
