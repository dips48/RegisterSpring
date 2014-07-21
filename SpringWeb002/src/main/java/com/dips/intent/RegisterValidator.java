package com.dips.intent;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class RegisterValidator implements Validator{

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return RegisterInfo.class.isAssignableFrom(arg0);
	}

	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		RegisterInfo regInfo=(RegisterInfo)arg0;
		if(regInfo.getUsername().length()<4){
			arg1.rejectValue("username","less4chars", null,"用户名长度必须大于等于4个字母");
		}
		if(regInfo.getPassword1().length()<6){
			arg1.rejectValue("password", "less6chars", null, "用户名已存在");
		}
		if(!regInfo.getPassword2().equals(regInfo.getPassword1())){
			arg1.rejectValue("password2", "notsame", null, "两次输入的密码不一样");
		}
	}

}
