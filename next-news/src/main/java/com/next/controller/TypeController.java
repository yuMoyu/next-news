package com.next.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.next.pojo.Type;
import com.next.service.AllInOneService;
import com.next.utils.NEXTJSONResult;
@RestController //代表下面方法返回类型和接收对象是json，
@RequestMapping("type")
public class TypeController {
	
	//注入service
	@Autowired
	private AllInOneService allInOneService;
	//路由
//	@GetMapping("/all")
//	public Object all() {
//		List<Type> allTypes = allInOneService.queryAllTypes();
//		return allTypes;
//	}
	@GetMapping("/all")
	public NEXTJSONResult all() {
		List<Type> allTypes = allInOneService.queryAllTypes();
		return NEXTJSONResult.ok(allTypes);
	}

}
