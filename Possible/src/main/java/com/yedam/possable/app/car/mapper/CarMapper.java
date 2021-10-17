package com.yedam.possable.app.car.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.possable.app.car.domain.CarOptionVO;
import com.yedam.possable.app.car.domain.CarVO;
import com.yedam.possable.app.car.domain.InsuranceOptionVO;
import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.company.domain.CompanyVO;

public interface CarMapper {
    // 차량 목록 조회
    public List<CarVO> getCarList();

    // 차량 단건 조회
    public CarVO getCar(CarVO vo);

    // 차량 옵션 조회
    public List<CarOptionVO> getCarOptions(CarVO vo);

    // 차량 보험 조회
    public List<InsuranceOptionVO> getCarInsurance(CarVO vo);

    // 차량 상태 변경
    public int updateStatus(CarVO vo);

    // 업체 차량 리스트 조회
    public List<CarVO> getCompanyCarList(CompanyVO vo);

    // 업체 차량 조회
    public CarVO getCompanyCar(CarVO vo);

    //업체 차량 등록
    public int insertCompanyCar(CarVO vo);

    // 업체 차량 삭제
    public int deleteCompanyCar(CarVO vo);

    // 업체 차량 수정
    public int updateCompanyCar(CarVO vo);

    // 차량 model 중복제거 리스트 조회
    public List<CarVO> getDistinctCarList(Criteria cri);

    // 해당 model을 보유한 업체 리스트 뽑아내기 위한 리스트
    public List<CarVO> getCarByModel(CarVO vo);

    //차량 옵션 추가
    public int insertCarOptions(CarOptionVO vo);

    public int insertCarOptions(List<CarOptionVO> list, Long carSeq);

    public int getTotalCount(Criteria cri);


    // 차량 리스트 조회
    public List<CarVO> getCarList_map(Criteria cri);

    // 차량 조회
    public CarVO getCar_map(CarVO vo);

    // 업체 차량 리스트 조회
    public List<CarVO> getCompanyCarList_map(CompanyVO vo);
    
    //차량 옵션 삭제
    public int deleteOption(CarOptionVO vo);
    
    //차량 보험 삭제
    public int deleteIns(InsuranceOptionVO vo);
}

