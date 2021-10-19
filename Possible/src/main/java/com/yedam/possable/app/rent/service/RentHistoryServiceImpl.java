package com.yedam.possable.app.rent.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.rent.domain.CompEstiListJoinVO;
import com.yedam.possable.app.rent.domain.RentHistoryVO;
import com.yedam.possable.app.rent.mapper.RentHistoryMapper;

@Service
public class RentHistoryServiceImpl implements RentHistoryService {

	@Autowired RentHistoryMapper rentHistoryMapper;

	@Override
	public List<RentHistoryVO> getRentHistoryListByCmpnSeq(Long cmpnSeq) {
		return rentHistoryMapper.getRentHistoryListByCmpnSeq(cmpnSeq);
	}

	@Override
	public RentHistoryVO getRentHistory(Long seq) {
		return rentHistoryMapper.getRentHistory(seq);
	}

	@Override
	public int getTotalCount() {
		return rentHistoryMapper.getTotalCount();
	}

	@Override
	public List<RentHistoryVO> getRentHistoryList() {
		return rentHistoryMapper.getRentHistoryList();
	}

	@Override
	public List<RentHistoryVO> getRentHistoryListForMyPage(@Param("cri") Criteria cri, @Param("seq")Long seq) {
		return rentHistoryMapper.getRentHistoryListForMyPage(cri, seq);
	}

	@Override
	public RentHistoryVO getRentHistoryForMypage(Long seq) {
		return rentHistoryMapper.getRentHistoryForMypage(seq);
	}

    @Override
    public int refundRentHistory(String merchantUid) {
        return rentHistoryMapper.refundRentHistory(merchantUid);
    }

    @Override
    public RentHistoryVO getRentHistoryByMUid(String merchantUid) {
        return rentHistoryMapper.getRentHistoryByMUid(merchantUid);
    }

    @Override
	public HashMap<String, Object> getLatestCompanySales(Long cmpnSeq) {
		return rentHistoryMapper.getLatestCompanySales(cmpnSeq);
	}

	@Override
	public List<RentHistoryVO> getCompanyTodayCar(Long cmpnSeq) {
		// TODO Auto-generated method stub
		return rentHistoryMapper.getCompanyTodayCar(cmpnSeq);
	}

    @Override
    public int insertRentHistory(RentHistoryVO vo) {
        return rentHistoryMapper.insertRentHistory(vo);
    }

}
