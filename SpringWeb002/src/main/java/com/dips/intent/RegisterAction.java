package com.dips.intent;

import java.util.HashMap;
import java.util.Map;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class RegisterAction extends SimpleFormController{
	private String succesView;
	protected ModelAndView onSubmit(Object cmd,BindException ex)throws Exception{
		Map reMap=new HashMap();
		reMap.put("logininfo", cmd);
		return new ModelAndView(this.getSuccessView(),reMap);
	}
	public String getSuccesView() {
		return succesView;
	}
	public void setSuccesView(String succesView) {
		this.succesView = succesView;
	}

}
