package com.bwf.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bwf.entity.User;

@Controller
@RequestMapping("pet")
public class PetController {
	@GetMapping("show")
	public String show(ModelMap modelMap){
		
		Integer num= 98 ;
		
		modelMap.addAttribute("number",num);
		
		User user = new User(7, "徐芸");
		modelMap.addAttribute("user", user);
		User user1 = new User(8, "刘红");
		User user2 = new User(9, "姚惺");
		List<User> users=new ArrayList<User>();
		users.add(user);
		users.add(user1);
		users.add(user2);
		modelMap.addAttribute("users", users);
		
		return "pet/show";
	}
}
