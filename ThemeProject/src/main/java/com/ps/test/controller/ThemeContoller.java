package com.ps.test.controller;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ps.test.dto.RegisterDTO;
import com.ps.test.service.login.RegisterService;


@Controller
public class ThemeContoller {
	
	@Autowired
	private RegisterService service;
	
	@Autowired
	HttpSession session= null;
	
/*	@Autowired
	JasperPdfGeneration pdf;
	*/
	
	@RequestMapping(value="/test")
	public ModelAndView homePage(){
		System.out.println("inside the controller");
		List<RegisterDTO> list = service.getRegisterData();
		for (RegisterDTO registerDTO : list) {
			
			System.out.println("--->"+registerDTO.getLname());
		}
		Map<String, Object> map = new HashMap<>();
		map.put("data", list);
		return new ModelAndView("home",map);
	}
	

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request){
		return new ModelAndView("login");
		
	}
	
	@RequestMapping("/register")
	public ModelAndView registerUser(){
		return new ModelAndView("register");
	}

	
	@RequestMapping(value="/saveregister")
	public String saveUser(@ModelAttribute RegisterDTO dto){
		System.out.println("inside save register");
		System.out.println("name-->"+dto.getFname());
		System.out.println("--->"+(dto.getPassword().equals(dto.getConfirmpwd())));
		if(!(dto.getPassword().equals(dto.getConfirmpwd())))
		{
			
			return "redirect:/register.html";
		}
		
		else{
			service.saveRegistration(dto);	
		}
		
		return "redirect:/login.html"; 
		 
		
	}
	
	@RequestMapping("/loginapp")
	public String logon(@RequestParam String email1,@RequestParam String pwd){
		System.out.println("inside loginapp");
		System.out.println("val of-->"+email1);
		int i=0;
		try{
			
	 i = service.checklogin(email1,pwd);
	 System.out.println("i--- val--->"+i);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	if(i>0){
		return "redirect:/test.html";
	}
	else{
		return "login";
		
	}
}
	
	
	
	
	/*@RequestMapping("/loginapp")
	public String logon(@RequestParam(value="email1") String email,@RequestParam(value="pwd") String password){
		System.out.println("inside loginapp");
		System.out.println("val of-->"+email);
		int i=0;
		try{
			
	 i = service.checklogin(email,password);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	if(i>0){
		return "redirect:/test.html";
	}
	else{
		return "login";
		
	}
}*/
	
	
	@RequestMapping("/forgotpassword")
	public ModelAndView forgotpass(){
		return new ModelAndView("forgotpassword");
	}
	
	
	@RequestMapping(value="/resetpwd", method=RequestMethod.POST)
	public String resetpwd(@RequestParam(name="email1") String email,@RequestParam(name="pwd") String pwd,@RequestParam(name="pwd2") String repwd){
		
		System.out.println("inside the reset");
		
		String emailcheck=service.checkEmail(email);
		
		System.out.println("val--->"+( !(pwd.equals(repwd)) ||  emailcheck != null ));
		
		if(!( !(pwd.equals(repwd)) ||  emailcheck != null ))
		{
			return "redirect:/forgotpassword.html";
		}
		else{
			
		service.updatedetails(email,pwd,repwd);
		}
		return  "redirect:/login.html";
		
	}
	
	/*@RequestMapping("/pdfgen")
	public void downloadpdf(HttpServletResponse resp) throws JRException, IOException,BeansException{
		
		List<RegisterDTO> list =service.getAllData();
		for (RegisterDTO registerDTO : list) {
			System.out.println("value-->"+registerDTO.getFname());
		}
		
		pdf.DownloadPdfReportSingle("jasperReport", list, resp, "jasperReport");
		
	}*/
	

	/* @RequestMapping(method = RequestMethod.GET , value = "pdfgen")
	    public ModelAndView generatePdfReport(ModelAndView modelAndView){
	 
	 
	        Map<String,Object> parameterMap = new HashMap<String,Object>();
	 
	        List<RegisterDTO> list =service.getAllData();
	 
	        JRDataSource JRdataSource = new JRBeanCollectionDataSource(list);
	 
	        parameterMap.put("datasource", JRdataSource);
	 
	        //pdfReport bean has ben declared in the jasper-views.xml file
	        modelAndView = new ModelAndView("home", parameterMap);
	 
	        return modelAndView;
	 
	    }//generatePdfReport
	 
	*/
	
	
}
