<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021-10-08
  Time: 오전 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<style type="text/css">
    .in {
        display: inline-block;
        color:#4f5dec;
        border: 1px solid;
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

                                <!-- 견적관리 -->
                                <div class="col-md-12">
                                    <div class="blog_single_comment_heading">
                                        <h4>견적관리</h4>
                                    </div>
                                    <div class="card">
                                        <div class="row no-gutters">
                                            <div class="col-4">
                                                <br>
                                                <div align="center">
                                                    <h3>자동차 이름</h3>
                                                </div>
                                                <br> <img
                                                    src="${pageContext.request.contextPath}/resources/images/comment_img1.jpg"
                                                    width="210px" height="160" alt="" class="card-img" />
                                            </div>

                                            <div class="col-8">
                                                <div class="col-12" style="border-bottom: none solid black">
                                                    <div class="card-body">
                                                        <div style="float: right;">
                                                            <div style="float: left;">
                                                                <h3>가격</h3>
                                                            </div>
                                                            &nbsp;&nbsp;&nbsp;
                                                            <div style="float: right;">
                                                                <button type="button" class="btn" onclick="location.href='esinfo'"
                                                                        style="text-align: center; background: #4f5dec; color: #ffffff; border: 1px solid transparent;">상세보기
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>

                                                    <!-- 옵션 -->

                                                    <ul>
                                                        옵션
                                                        <li class="in">옵션이름</li>
                                                        <li class="in">옵션이름</li>
                                                        <li class="in">옵션이름</li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
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
                                    <br>
                                    <br>
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
                                                        property="principal.username" />님</a>
                                                <input type="hidden" name="${_csrf.parameterName }"
                                                       value="${_csrf.token }">
                                            </sec:authorize>

                                        </h3>
                                    </div>

                                </div>
                                <div class="jp_rightside_job_categories_content">
                                    <ul >
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
                                <div>
                                    <br>
                                    <br>
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