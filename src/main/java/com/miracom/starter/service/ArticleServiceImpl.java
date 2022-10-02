package com.miracom.starter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miracom.starter.dao.ArticleDao;
import com.miracom.starter.dto.ArticleDto;

@Service
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	ArticleDao articleDao;
	
	@Override
	public List<ArticleDto> getList() {
		return articleDao.getList();
	}
	
	@Override
	public void add(ArticleDto dto) {
		articleDao.add(dto);
	}
	
}
