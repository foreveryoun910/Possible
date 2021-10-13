package com.yedam.possable.app.rent.service;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.rent.domain.CompEstiListJoinVO;
import com.yedam.possable.app.rent.domain.EstiSubmitHistoryVO;
import com.yedam.possable.app.rent.domain.EstimateHistoryVO;
import com.yedam.possable.app.rent.mapper.PremiumRentMapper;

import lombok.extern.java.Log;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Log
@Service
public class PremiumRentServiceImpl implements PremiumRentService{
    @Autowired
    PremiumRentMapper premiumRentMapper;

    @Override
    public List<Map<String, Object>> getEstimateList(Criteria cri) {
        // 조회 시 차, 여행 옵션 바인딩
        List<Map<String, Object>> estimateList = new LinkedList<>();

        for(EstimateHistoryVO vo : premiumRentMapper.getEstimateList(cri)){
            Map<String, Object> estimate = new HashMap<>();
            estimate.put("estimate", vo);
            estimate.put("options", List.of(strToArr(vo.getOptions())));
            estimate.put("items", List.of(strToArr(vo.getItems())));

            estimateList.add(estimate);
        }

        return estimateList;
    }

    @Override
    public Map<String, Object> getEstimate(Long seq) {
        // 조회 시 차, 여행 옵션 바인딩
        Map<String, Object> estimate = new HashMap<>();
        EstimateHistoryVO vo = premiumRentMapper.getEstimate(seq);
        estimate.put("estimate", vo);
        estimate.put("options", List.of(strToArr(vo.getOptions())));
        estimate.put("items", List.of(strToArr(vo.getItems())));

        return estimate;
    }

    @Override
    public int insertEstimate(EstimateHistoryVO vo) {
        return premiumRentMapper.insertEstimate(vo);
    }

    @Override
    public int deleteEstimate(Long seq) {
        return premiumRentMapper.deleteEstimate(seq);
    }

    @Override
    public int updateEstimate(EstimateHistoryVO vo) {
        return premiumRentMapper.updateEstimate(vo);
    }

    @Override
    public int getEstimateCount() {
        return premiumRentMapper.getEstimateCount();
    }

    @Override
    public List<EstiSubmitHistoryVO> getEstSubmitListByEstiSeq(Criteria cri, Long seq) {
        return premiumRentMapper.getEstSubmitListByEstiSeq(cri,seq);
    }

    @Override
    public EstiSubmitHistoryVO getEstSubmit(Long seq) {
        return premiumRentMapper.getEstSubmit(seq);
    }

    @Override
    public int insertEstSubmit(EstiSubmitHistoryVO vo) {
        return premiumRentMapper.insertEstSubmit(vo);
    }

    @Override
    public int updateEstSubmit(EstiSubmitHistoryVO vo) {
        return premiumRentMapper.updateEstSubmit(vo);
    }

    @Override
    public int deleteEstSubmit(Long seq) {
        return premiumRentMapper.deleteEstSubmit(seq);
    }

    @Override
    public int getEstSubmitCount() {
        return premiumRentMapper.getEstSubmitCount();
    }

    private String[] strToArr(String str) {
        String[] strArr = str.substring(1,str.length()-1).trim().split(",");
        for(int i=0; i< strArr.length; i++){
            strArr[i] = strArr[i].trim();
        }
        return strArr;
    }

	@Override
	public List<EstimateHistoryVO> getEstimateListByUserSeq(Criteria cri, @Param("seq") Long seq) {

		return premiumRentMapper.getEstimateListByUserSeq(cri, seq);
	}

	@Override
	public List<CompEstiListJoinVO> compEstiSubmitList(Long seq) {
		// TODO  업체 확인용 견적서 상세 리스트
		return premiumRentMapper.compEstiSubmitList(seq);
	}

	@Override
	public CompEstiListJoinVO compEstiSubmitOneSelect(Long seq) {
		// TODO  업체 확인용 견적서 단건 조회
		return premiumRentMapper.compEstiSubmitOneSelect(seq);
	}
}
