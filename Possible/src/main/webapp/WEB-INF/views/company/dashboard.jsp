<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<h2><a href="${pageContext.request.contextPath}/company/editInfo?seq=${cmpnSeq}">업체 정보 확인</a></h2>
<h2><a href="${pageContext.request.contextPath}/company/car?seq=${cmpnSeq}">업체 보유 렌트카 리스트</a></h2>
<h2><a href="#">렌트카 예약 현황 및 수익 현황 관리 페이지</a></h2>
<h2><a href="#">렌트 내역 관리 페이지 </a></h2>