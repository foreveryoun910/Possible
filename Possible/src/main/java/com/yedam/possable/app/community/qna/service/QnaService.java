package com.yedam.possable.app.community.qna.service;

import java.util.List;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.community.qna.domain.QnaVO;

public interface QnaService {

	public QnaVO read(QnaVO vo);
	
	public int insert(QnaVO vo);
	
	public int update(QnaVO vo);
	
	public int delete(QnaVO vo);
	
	public List<QnaVO> getList(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	//마이페이지 문의 조회
	public List<QnaVO> getMyQna(Long memSeq);
	
}
