<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/main.css">
	</head>
	
	<body>
		<div class="wrap">
			<%--공통 헤더 --%>
			<jsp:include page="/WEB-INF/views/include/header.jsp"/> <%--실행한 결과를 넣겠다 --%>
			<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%> <%--파일 내용을 복사 카피하겠다--%>
			<%-- 내용 --%>
			<div class="mainCenter">
				<%-- 공통 메뉴 --%>
				<jsp:include page="/WEB-INF/views/include/menu.jsp"></jsp:include>
				
				<div class="content">
					<div class="sector">
						<h5>GET방식 요청</h5>
						<div>
							<a class="btn btn-info btn-sm" href="method2?param1=문자열&param2=5&param3=3.14&param4=true&param5=2021-01-5"> 데이터 전달</a>
						</div> 
					</div>
						
					<div class="sector">
					<h5>POST 방식 요청</h5>
						<div>
							<form method="post" action="method2"> 
								<input type="text" name="param1" value="문자열"/> <br/>
								<input type="number" name="param2" value="5"/> <br/>
								<input type="number" name="param3" value="3.14"/> <br/>
								<input type="checkbox" name="param4" checked/> <br/>
								<input type="date" name="param5" value="2021-12-25"/> <br/>
								<button class="btn btn-info btn-sm"> 데이터 전달 </button>
							</form>
						</div> 
					</div>
						
					<div class="sector">
					<h5>디폴트 값</h5>
						<div>
							<form method="post" action="method3"> 
								<input type="text" name="param1" value="good"/> <br/>
								<button class="btn btn-info btn-sm"> 데이터 전달 </button>
							</form>
						</div> 
					</div>
				</div> <%-- content --%>
			</div> <%-- mainCenter --%>
		</div> <%-- wrapper --%>
	</body>
</html>