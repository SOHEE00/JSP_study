<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	 <div class="container">
		<%@ include file="bootNav.jsp" %>		  
		<%@ include file="bootCarousel.jsp" %> 
		<%-- <%@ include file="bootService1.jsp" %>  
		<%@ include file="bootService2.jsp" %> --%>
		
		<%
			String searchUsername = request.getParameter("search_username");
			if (searchUsername != null && !searchUsername.isEmpty()) {
				// search_username 값이 있는 경우 search.jsp 포함
				request.setAttribute("search_username", searchUsername);
				%>
				<%@ include file="search.jsp" %>
				<%
			} else {
				// search_username 값이 없는 경우 bootService3.jsp 포함
				%>
				<%@ include file="bootService3.jsp" %>
				<%
			}
		%>
		
	</div> 
	
	<%-- <div class="container">
        <%@ include file="bootNav.jsp" %>
        <%@ include file="bootCarousel.jsp" %>
        <%@ include file="bootService1.jsp" %>
        <%@ include file="bootService2.jsp" %>
       
        <%@ include file="search.jsp" %>
        <jsp:include page="search.jsp">
            <jsp:param name="search_username" value="<%= search_username %>" />
        </jsp:include>
    </div> --%>

</body>
</html>