package com.next.service;

import java.util.List;

import com.next.pojo.News;
import com.next.pojo.Type;

public interface AllInOneService {
	
	/** 
	 * @Description: 查询所有的新闻分类名称，以列表list形式返回
	 */
	public List<Type> queryAllTypes();
	
	/**
	 * 
	 * @Description: 查询分类下的所有新闻列表，以列表list形式返回
	 */
	public List<News> queryAllNewsByType(String typeId);
	/**
	 * 
	 * @Description: 根据新闻主键查询新闻详情
	 */
	public News queryNewsDetail(String newsId);
	
	

}
