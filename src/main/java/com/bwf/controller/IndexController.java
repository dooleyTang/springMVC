package com.bwf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bwf.entity.User;

@Controller
@RequestMapping(value="index")
public class IndexController {
	
	@GetMapping(value={"index","","index/index"})
	public String index(){
		
		return "index/index";
	}
	
	
	@GetMapping(value="getUsers",
			params="id",
			produces="application/json"
			)
	@ResponseBody
	public User getUserById(Integer userId){
		User user=new User(5, "张三");
		return user;
	}
	
	@GetMapping (value="show")
	public void show(){
		System.out.println("index/show");
	}
	
	@GetMapping(
			value="getUser",
			params="id"
			)
	public String getUser(Integer id){
		System.out.println("id:"+ id);
		return null;
	}
	
	@GetMapping(value="get")
	public User get(Integer id,String name){
		System.out.println("id:"+id+"name:"+name);
		return null;
	}
	
	@GetMapping(value="list")
	public String list(){
		return "user/list";
	}
	
	@PostMapping(value="requestList")
	public String requesList(String[] hobby ){
		for (int i = 0; i < hobby.length; i++) {
			System.out.println(hobby[i]);
		}
		return null;
	}
	
	@PostMapping(value="add")
	public void add( @RequestBody User user){
		System.out.println(user);
		
	}
	
	@GetMapping("delete")
	public void delete(@RequestParam(name="id") Integer userId){
		System.out.println(userId);
	}
	
}
