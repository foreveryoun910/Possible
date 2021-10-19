package com.yedam.possable.app.rent.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.rent.domain.CompEstiListJoinVO;
import com.yedam.possable.app.rent.domain.RentHistoryVO;

public interface RentHistoryMapper {

	//업체 렌트내역 리스트
    public List<RentHistoryVO> getRentHistoryList(@Param("cri") Criteria cri, @Param("cmpnSeq")Long cmpnSeq);

    //업체 렌트내역 한건
    public RentHistoryVO getRentHistory(RentHistoryVO vo);

    public List<RentHistoryVO> rentHistoryList();

    // 마이페이지 회원 렌트내역 리스트 조회
    public List<RentHistoryVO> MyPageRentHistoryList(@Param("cri") Criteria cri, @Param("seq")Long seq);

    // 마이페이지 렌트내역 회원 단건
    public RentHistoryVO getRentHistoryInMypage(Long seq);
	
    //전체수 검사
	public int getHistoryCount();

	//수익
	public List<RentHistoryVO> getCompanySales(Long cmpnSeq);

	//투데이 렌트카 리스트
	public List<RentHistoryVO> getCompanytodayCar(Long cmpnSeq);
	
	//전체 데이터 건수
    public int getTotalCount(@Param("cri") Criteria cri, @Param("cmpnSeq")Long cmpnSeq);
}
