<%@ page contentType="text/html;charset=euc-kr" %>

<%@ page import="spring.domain.User" %>	 

<!-- ////////////////////////////////////////   �� �� ��  �� ��  //////////////////////////////////////////////////////////
	 �� Model2 Web Arch. ���� �� ::  JSP�� View ���� ��..  
	 �� Work Flow Control �κ��� Control �� ���                                                  
    �� �Ʒ��� �ּ� ó�� ������ Control �� ����ϴ� @Contoller ���� ó��     
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<!-- 	#. �� �α����� ȸ���̸�...	-->
<%	User sessionUser = (User)session.getAttribute("sessionUser");	%>

<%	//if ( user == null  ||  ! user.isActive() )  { %>
		<%-- <jsp:forward page="logon.jsp" /> --%>
<% //} %>

<!-- 	#. �α����� ȸ���̸�...	-->
<html>
	<head><title>Home Page</title></head>
	<body>
	
	<!-- ///////////// �� �� ��  �� ��(~~Controller �� �����ϴ� Message ���)  ////////////-->
		[ ��  info ] :: ${ requestScope.message } <br/><br/>
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
		<p>Simple Model2 Examples</p>
		<p> ȯ���մϴ�.  : <%= sessionUser.getUserId()%>��</p>
		<br/><br/>
		<!--  <a href = "logout.do">logout</a>  -->
		<a href = "logout">logout</a>
		
	</body>
</html>