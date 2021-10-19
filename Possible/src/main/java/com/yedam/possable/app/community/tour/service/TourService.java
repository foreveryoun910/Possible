package com.yedam.possable.app.community.tour.service;

import java.util.List;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.community.tour.domain.TestVO;

public interface TourService {

	public int insert(TestVO vo);

	public long maxDate();

	public List<TestVO> contentId();

	public int update(TestVO vo);

	public int delete(TestVO vo);

	public List<TestVO> getList(Criteria cri);
	
	public int getTotalCount(Criteria cri);

	public List<TestVO> getLatestList();
}
