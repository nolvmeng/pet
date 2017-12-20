package img;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.pet.service.impl.ImgService;

public class ImgTest {
    @Autowired
    @Qualifier("imgService")
	ImgService i ;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		
		
	}

}
