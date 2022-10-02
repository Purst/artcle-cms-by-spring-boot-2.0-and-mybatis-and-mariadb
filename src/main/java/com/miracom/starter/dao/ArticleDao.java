package com.miracom.starter.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.miracom.starter.dto.ArticleDto;

@Mapper // 정의해놓은 SQL과 개발할 때 사용하는 메소드를 연결하고 결과값을 정의해놓은 타입으로 매핑시켜주는 것.
public interface ArticleDao {
	public List<ArticleDto> getList();
	public void add(ArticleDto dto);
}
