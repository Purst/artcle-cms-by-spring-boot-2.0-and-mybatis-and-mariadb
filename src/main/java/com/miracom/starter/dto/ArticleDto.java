package com.miracom.starter.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticleDto {
	private long id;
	private String reg_date;
	private String title;
	private String contents;
}
