package com.miracom.starter.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.miracom.starter.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService{
	
	public List<Article> getList() {
		List<Article> list = new ArrayList<Article>();
		
		Article article = new Article(1, "2022-09-30 23:46:10", "제목1", "내용1");
		list.add(article);
		article = new Article(2, "2022-09-30 23:46:20", "제목2", "내용2");
		list.add(article);
		article = new Article(3, "2022-09-30 23:46:30", "제목3", "내용3");
		list.add(article);
		article = new Article(4, "2022-09-30 23:46:40", "제목4", "내용4");
		list.add(article);
		
		return list;
	}
	
}
