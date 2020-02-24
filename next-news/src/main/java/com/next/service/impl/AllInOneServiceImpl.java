package com.next.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.next.mapper.NewsMapper;
import com.next.mapper.TypeMapper;
import com.next.pojo.News;
import com.next.pojo.Type;
import com.next.service.AllInOneService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service
public class AllInOneServiceImpl implements AllInOneService {

	@Autowired
	private TypeMapper typeMapper;
	@Autowired
	private NewsMapper newsMapper;
	
	public List<Type> queryAllTypes() {
	
		return typeMapper.selectAll();
	}

	public List<News> queryAllNewsByType(String typeId) {

		Example example = new Example(News.class);
		//条件查询
		Criteria criteria = example.createCriteria();
		criteria.andEqualTo("typeId",typeId);
		
		List<News> newsList = newsMapper.selectByExample(example);
		return newsList;
	}

	public News queryNewsDetail(String newsId) {
		return newsMapper.selectByPrimaryKey(newsId);
	}

}
