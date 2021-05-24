<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.*" %>
<%
 request.setCharacterEncoding("utf-8");
 
 String id=request.getParameter("member_id"); 
 String pass=request.getParameter("pw");
 System.out.println("member_id="+id);
 System.out.println("pw="+pw);
 
 MemberDAO md = new MemberDAO();

 int reid=md.checkMemberId(id);
 //1이면 중복 -1이면 사용가능 아이디

 out.println(re);
%>
 