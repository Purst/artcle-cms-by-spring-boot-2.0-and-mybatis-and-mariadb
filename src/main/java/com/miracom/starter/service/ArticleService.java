package com.miracom.starter.service;

import java.util.List;

import com.miracom.starter.dto.ArticleDto;

public interface ArticleService {
	public List<ArticleDto> getList();
	public void add(ArticleDto dto);
	
}
