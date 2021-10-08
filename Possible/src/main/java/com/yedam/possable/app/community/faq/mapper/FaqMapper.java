package com.yedam.possable.app.community.faq.mapper;

import java.util.List;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.community.faq.domain.FaqVO;

public interface FaqMapper {

	public FaqVO read(FaqVO vo);
	
	public int insert(FaqVO vo);
	
	public int update(FaqVO vo);
	
	public int delete(FaqVO vo);
	
	public List<FaqVO> getList(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}