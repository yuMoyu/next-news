package com.next.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.next.pojo.News;
import com.next.pojo.Type;
import com.next.service.AllInOneService;
import com.next.utils.NEXTJSONResult;
@RestController //代表下面方法返回类型和接收对象是json，
@RequestMapping("news")
public class NewsController {

	@Autowired
	private AllInOneService allInOneService;

	//url输入示例：http://localhost:8081/news/list?typeId=1002
	@GetMapping("/list")
	public NEXTJSONResult list(String typeId) {
		List<News> newsList = allInOneService.queryAllNewsByType(typeId);
		return NEXTJSONResult.ok(newsList);
	}
	
	//url输入示例：http://localhost:8081/news/detail/news-1001
	@GetMapping("/detail/{newsId}")
	public NEXTJSONResult detail(@PathVariable String newsId) {
		News detail = allInOneService.queryNewsDetail(newsId);
		return NEXTJSONResult.ok(detail);
	}

}
