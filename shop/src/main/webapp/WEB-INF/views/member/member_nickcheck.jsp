<%-- <%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="shop.dao.*" %>
<%
 request.setCharacterEncoding("utf-8");
 
 String nickname=request.getParameter("memnickname");
 System.out.println("member_id="+nickname);
 
 MemberDAO md = new MemberDAO();

 int re1=md.checkNickname(nickname);
 //1이면 중복 -1이면 사용가능 아이디

 out.println(re1);
%> --%>