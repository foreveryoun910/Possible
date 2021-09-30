<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container">
	<div class="lr_bc_first_box_img_cont_wrapper">
		<h2>${notice.title}</h2>
		<ul>
			<li><i class="fa fa-calendar"></i>&nbsp; <a>${notice.writer}</a></li>
			<li><i class="fa fa-user-o"></i>&nbsp; <a>${notice.genDate}</a></li>
			<li><i class="fa fa-comments-o"></i>&nbsp; <a>${notice.views}</a></li>
		</ul>
		<p>
			${notice.content}
		</p>
	</div>
	<div class="lr_bc_first_box_img_cont_wrapper" align="right">
		<a class="btn" id="list_btn">목록</a>
		<a class="btn" id="update_btn">수정</a>
		<button id="deleteBtn" type="button" class="btn btn-dark">삭제</button>
	</div>
	<form id="intoForm" action="${pageContext.request.contextPath}/notice/update" method="get">
		<input type="hidden" id="seq" name="seq" value='<c:out value="${notice.seq}"/>'>
		<input type="hidden" id="pageNum" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" id="amount" name="amount" value='<c:out value="${cri.amount}"/>'>
	</form>
</div>
<br><br>
<script>
$('#deleteBtn').on('click', function(){

	var result = confirm('삭제 하시겠습니까?');
	
	if(result == true) {
		location.href='delete?seq=${notice.seq}';
	}
	else {
		return;
	}
})

let form = $("#intoForm");

$("#list_btn").on("click", function(e){
	form.find("#seq").remove();
	form.attr("action", "${pageContext.request.contextPath}/notice/list?pageNum="+$('#pageNum').val()+"&amount="+$('#amount').val()
			);
	form.submit();
})

$("#update_btn").on("click", function(e){
	form.attr("action", "${pageContext.request.contextPath}/notice/update")
	form.submit();
})
</script>