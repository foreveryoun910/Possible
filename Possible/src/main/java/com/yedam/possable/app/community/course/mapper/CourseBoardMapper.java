package com.yedam.possable.app.community.course.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.possable.app.common.criteria.domain.Criteria;
import com.yedam.possable.app.community.course.domain.CourseBoardLikeVO;
import com.yedam.possable.app.community.course.domain.CourseBoardVO;
import com.yedam.possable.app.community.course.domain.CourseVO;
import com.yedam.possable.app.community.tour.domain.TestVO;

public interface CourseBoardMapper {

	public List<CourseBoardVO> getList(Criteria cri);

	public CourseBoardVO read(CourseBoardVO vo);
	
	public List<CourseBoardVO> getWriter(String writer);
	
	//마이페이지 나의 여행코스 조회
	public List<CourseBoardVO> getUserCourseList(@Param("writer")String writer,@Param("cri")Criteria cri);
	
	public int insert(CourseBoardVO vo);

	public int update(CourseBoardVO vo);

	public int delete(CourseBoardVO vo);

	public List<TestVO> tourList();

	public List<TestVO> tourList(Criteria cri);

	public int getTotalCount(Criteria cri);
	
	public int courseCnt(CourseBoardVO vo);
	
	public List<TestVO> courseSelect(CourseBoardVO vo);
	
	public int courseInsert(CourseVO vo);
	
	public boolean plusViews(CourseBoardVO vo);
	
	public int plusLike(CourseBoardLikeVO vo);
	
	public int minusLike(CourseBoardLikeVO vo);
	
	public int countLike(CourseBoardVO vo);
	
	public int checkLike(CourseBoardLikeVO vo);

}
