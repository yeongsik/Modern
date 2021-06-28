<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" onclick="alarm()" value="장바구니 삭제">
	<script type="text/javascript">
	function alarm(){
		var msg = "제품을 삭제하시겠습니까?";
		var flag = comfirm(msg);
		if(flag==true) alert("삭제되었습니다.");
		location.href:
	}
	</script>


</body>
</html>