<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021-10-08
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<style type="text/css">
    .dash{
        background: #ffffff;
        box-shadow: 0px 0 8px rgb(0 0 0 / 10%);
        float: left;
        width: 100%;
        padding-top: 20px;
        padding-bottom: 20px;
        margin-top: 0px;
        margin-bottom: 10px;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
    }

</style>

<!-- x blog main and sidebar Wrapper Start -->
<div class="x_blog_sidebar_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="x_blog_left_side_wrapper float_left">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="lr_bc_first_box_main_wrapper">

                                <!-- 메뉴 -->
                                <div class="lr_bc_first_box_img_cont_wrapper">
                                    <ul>
                                       <li><a href="${pageContext.request.contextPath}/mypage/dashboard">홈</a></li>
			                           <li><a href="${pageContext.request.contextPath}/mypage/editProfile">회원정보수정</a></li>
			                           <li><a href="${pageContext.request.contextPath}/mypage/estimate">견적관리</a></li>
			                           <li><a href="${pageContext.request.contextPath}/mypage/rent">렌트관리</a></li>
			                           <li><a href="${pageContext.request.contextPath}/mypage/community">커뮤니티관리</a></li>
			                           <li><a href="${pageContext.request.contextPath}/mypage/qna">나의문의</a></li>
                                    </ul>
                                </div>
                                <br> <br> <br>
								${historyList}
								${historyList.memberVO.seq }
                                <!-- 후기 -->
                                ${historyList.status }d aav
                                
                                <div class="col-md-12">
                                    <div class="blog_single_comment_heading">
                                        <h4>후기 작성</h4>
                                    </div>
                                    <!-- 내역 -->
                                    <div class="dash">
                                        <div class="row no-gutters">
                                            <div class="col-4">
                                                <img
                                                        src="${pageContext.request.contextPath}/resources/images/comment_img1.jpg"
                                                        width="210px" height="160" alt="" class="card-img" />
                                            </div>

                                            <div class="col-8">
                                                <div class="col-12">
                                                    <div class="card-body">
                                                        <p>
                                                            차량명: ${car.model}, ${company.name}
                                                            렌트기간: <fmt:formatDate value="${history.startDate}" pattern="yyyy/MM/dd"/> ~ <fmt:formatDate value="${history.endDate}" pattern="yyyy/MM/dd"/>
                                                        </p>
                                                    </div>
                                                    <br><br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <!-- 후기작성 -->
                                    <form id="writeReviewForm" action="writeReview" method="post">
	                                    <div class="contect_form4 xcontect_form4">
	                                    	<%-- <input type="hidden" id="history_seq" name="history_seq" value="${history.seq}">
	                                    	<input type="hidden" id="mem_seq" name="mem_seq" value="${user.seq}">
	                                    	<input type="hidden" id="cmpn_seq" name="cmpn_seq" value="${company.seq}"> --%>
	                                    	<input type="text" name="memSeq" id="memSeq"value="${historyList.memberVO.seq }">
                                			<input type="text" name="historySeq" id="historySeq"value="${historyList.seq }">
                                			<input type="text" name="cmpnSeq" id="cmpnSeq" value="${historyList.companyVO.seq }"> 
	                                        <table>
	                                            <tr>
	                                                <td>
		                                                <select id="course" name="course" class="selectpicker">
		                                                    <option value="" selected>내가 작성한 여행코스</option>
		                                                	<c:if test="${user.id eq course.writer}">
		                                                		<c:forEach var="course" items="${courseList}">
				                                                    <option value="">${course.title}</option>
				                                                    <input type="hidden" id="course_seq" name="course_seq" value="${course.seq}">
			                                                    </c:forEach>
		                                                    </c:if>
		                                                    <c:if test="${user.id ne course.writer}">
		                                                    	<option value="">작성한 여행코스가 없습니다.</option>
		                                                    </c:if>
		                                                </select>
	                                                </td>
	                                                <td>
		                                                <select id="score" name="score" class="selectpicker">
		                                                    <option value="" selected>평점</option>
		                                                    <option value="5">5</option>
		                                                    <option value="4">4</option>
		                                                    <option value="3">3</option>
		                                                    <option value="2">2</option>
		                                                    <option value="1">1</option>
		                                                </select>
	                                                </td>
	                                            </tr>
	                                        </table>
	                                        <textarea id="title" name="title" rows="1" placeholder="Write Title"></textarea>
	                                        <textarea id="content" name="content" rows="4" placeholder="Write Content"></textarea>
	                                        <br><br>
	                                        <div align="center">
	                                            <button type="submit" class="btn" style="text-align: center; background: #4f5dec; color: #ffffff; border: 1px solid transparent;">등록
	                                            </button>
	                                        </div>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 사이드바 -->
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="x_blog_right_side_wrapper float_left">
                    <div class="row">

                        <div class="col-md-12">
                            <div
                                    class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">

                                <div>
                                    <br><br>
                                    <div align="center">
                                        <img style="border-radius: 50%;"
                                             src="${pageContext.request.contextPath}/resources/images/comment_img1.jpg"
                                             alt="comment_img" class="img-responsive img-circle" />
                                    </div>
                                    <br>
                                    <div align="center">
                                        <h3>
                                            <sec:authorize access="isAuthenticated()">
                                                <a class="menu-button" href="#"><sec:authentication
                                                        property="principal.name"/>님</a>
                                                <input type="hidden" name="${_csrf.parameterName }"
                                                       value="${_csrf.token }">
                                            </sec:authorize>

                                        </h3>
                                    </div>

                                </div>
                                <div class="jp_rightside_job_categories_content">
                                    <ul>
                                        <li><i class="fa fa-long-arrow-right"></i> &nbsp;&nbsp;<a
                                                href="#">예약완료 </a></li>
                                        <li><i class="fa fa-long-arrow-right"></i> &nbsp;&nbsp;<a
                                                href="#">쿠폰함 </a></li>
                                        <li><i class="fa fa-long-arrow-right"></i> &nbsp;&nbsp;<a
                                                href="#">포인트 </a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div
                                    class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
                                <div >
                                    <br><br>
                                    <div align="center">
                                        <h4>고객센터</h4>
                                        <br>
                                        <div>
                                            <img style="border-radius: 50%;"
                                                 src="${pageContext.request.contextPath}/resources/images/comment_img1.jpg"
                                                 alt="comment_img" class="img-responsive img-circle" />
                                        </div>
                                        <br>
                                        <div align="center">
                                            <h3>1544-1544</h3>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                                <br>
                                <div align="center">
                                    <h4>카카오톡 1:1 상담</h4>
                                    <br>
                                    <div>
                                        <img style="border-radius: 50%;"
                                             src="${pageContext.request.contextPath}/resources/images/comment_img1.jpg"
                                             alt="comment_img" class="img-responsive img-circle" />
                                    </div>
                                </div>

                                <br>
                                <div class="jp_rightside_career_main_content"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- x blog main and sidebar Wrapper End -->
