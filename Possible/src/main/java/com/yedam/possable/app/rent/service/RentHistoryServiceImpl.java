package com.yedam.possable.app.rent.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.rent.domain.RentHistoryVO;
import com.yedam.possable.app.rent.mapper.RentHistoryMapper;

@Service
public class RentHistoryServiceImpl implements RentHistoryService {
	
	@Autowired RentHistoryMapper rentHistoryMapper;
	
	@Override
	public List<RentHistoryVO> rentHistoryList() {
		return rentHistoryMapper.rentHistoryList();
	}

	@Override
	public List<RentHistoryVO> MyPageRentHistoryList(@Param("cri") Criteria cri, @Param("seq") Long seq) {
		// TODO // 회원 렌트내역 리스트 조회
		return rentHistoryMapper.MyPageRentHistoryList(cri,seq);
	}

	@Override
	public int getHistoryCount() {
		// TODO Auto-generated method stub
		return rentHistoryMapper.getHistoryCount();
	}

}
