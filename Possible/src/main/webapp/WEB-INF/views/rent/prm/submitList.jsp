<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021-10-15
  Time: 오후 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card">
    <div class="card-header border-bottom mb-3">
        <div class="x_slider_form_input_wrapper float_left">
            <h3 class="font-weight-bold mb-0">견적 리스트</h3>
        </div>
    </div>
    <c:if test="${empty submitList}">
        <div class="card-body">
            <div class="row">
                <div class="col-12 text-center">
                    <h6 class="py-5">아직 제출된 견적이 없습니다!</h6>
                </div>
            </div>
        </div>
    </c:if>
    <c:forEach var="submit" items="${submitList}" varStatus="status">
        <div class="card-body">
            <div class="row">
                <div class="col-lg-3 align-self-center mb-4">
                    <div class="card-img-actions p-3">
                        <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}${submit.carVO.modelCodeVO.img}" alt="">
                    </div>
                    <div class="text-center shadow-1 p-2">
                        <c:set var="during" value='${submit.estimateHistoryVO.endDate.date - submit.estimateHistoryVO.startDate.date}' />
                        <h2 class="font-weight-bold text-blue mb-0">${during * submit.carVO.price}원</h2>
                        <span>(${submit.carVO.price}원/일)</span>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                <h5 class="font-weight-bold">
                                        ${submit.carVO.brandCodeVO.name} ${submit.carVO.modelCodeVO.name}<br><small>${submit.carVO.trimCodeVO.name}</small>
                                </h5>
                            </div>
                        </div>
                        <div class="col-lg-7 mb-3 text-right">
                            <a class="btn px-3 btn-primary"
                               href="${pageContext.request.contextPath}/premiumRent/submit/pay?seq=${submit.seq}">
                                결제하기
                            </a>
                            <a class="btn px-3 btn-outline-primary"
                               href="${pageContext.request.contextPath}/premiumRent/submit/update?seq=${submit.seq}">
                                수정하기
                            </a>
                            <a class="btn px-3 btn-outline-danger"
                               href="${pageContext.request.contextPath}/premiumRent/submit/delete?seq=${submit.seq}">
                                삭제
                            </a>
                        </div>
                        <div class="col-12">
                            <p class="text-grey-600">
                                <i class="h3 icon-office pr-2 mb-0"></i>
                                    ${submit.companyVO.name}
                            </p>
                            <p class="text-grey-600">
                                <i class="h3 icon-location4 pr-2 mb-0"></i> ${submit.companyVO.addr1.concat(' ').concat(submit.companyVO.addr2)}
                            </p>
                        </div>
                        <div class="col-12">
                            <div class="card border-primary-300 border-1">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-2">
                                            <i class="icon-checkmark4"></i> 차량 옵션
                                        </div>
                                        <div class="col-10">
                                            <ul class="list-unstyled mb-0">
                                                <c:forEach var="opt" items="${submit.carVO.optionList}">
                                                    <li class="d-inline-block pr-3 mb-1"><i class="icon-checkbox-checked2 text-primary"></i> ${opt.optName}
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-primary-300 border-1">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-2">
                                            <i class="icon-checkmark4"></i> 여행 옵션
                                        </div>
                                        <div class="col-10">
                                            <ul class="list-unstyled mb-0">
                                                <c:forEach var="itm" items="${submit.itemsList}">
                                                    <li class="d-inline-block pr-3 mb-1"><i class="icon-checkbox-checked2 text-primary"></i> ${itm}
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-primary-300 border-1">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-2">
                                            <i class="icon-checkmark4"></i> 안내사항
                                        </div>
                                        <div class="col-10">
                                            ${submit.memo}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    <div>
        <c:if test="${submitList.size() > 5}">
        <jsp:include page="/pagination"/>
        </c:if>
    </div>
</div>
