package bit.rest.cellphone;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Handles requests for the application home page.
 */
@Controller
public class PhoneController {
	
	
	@RequestMapping("/auth")
	public String auth(Locale locale, Model model) {
		
		return "auth";
	}
	
	
	@GetMapping("/check/sendSMS")
    public @ResponseBody
    String sendSMS(String phoneNumber) {
		
		System.out.println("랜덤함수 시작");
        Random rand  = new Random();
        System.out.println("랜덤함수 끝");
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
        System.out.println("랜덤함수 4자리 완성");
        

        System.out.println("수신자 번호 : " + phoneNumber);
        System.out.println("인증번호 : " + numStr);
//        certificationService.certifiedPhoneNumber(phoneNumber,numStr);
//        SendExtensionExample.sendm(phoneNumber, numStr);
        /////////////
       
        return numStr;

    }
	
	
}
