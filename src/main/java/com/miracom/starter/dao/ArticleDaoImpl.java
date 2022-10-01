package com.miracom.starter.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.miracom.starter.dto.Article;

@Component // 의존성 주입을 위한 어노테이션
public class ArticleDaoImpl implements ArticleDao {

	@Override
	public List<Article> getList() {
		
		return new ArrayList<Article>();
	}

}
