package com.next.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController //代表下面方法返回类型和接收对象是json，
public class HelloController {
	//只能接受get方式的请求
	@GetMapping("/hello")
	public Object hello() {
		return "Hello World~~";
	}
}
