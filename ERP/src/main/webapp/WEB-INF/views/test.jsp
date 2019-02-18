<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- <s:url var="url_jqlib" value="/static/js/jquery-3.3.1.min.js"/> --%>

<%-- <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script> --%>

 <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%-- <script type="text/javascript"  src="${url_jqlib}"></script> --%>
<script>
$(document).ready(function(){
	//alert("ga");
	$("#id_get_time").click(function(){
		//alert("helo boss");

		$.ajax({
		url : 'get_time',
		success : function(data)
		{
$("#id_time").html(data);
			}

			});
		});
});
</script>
</head>
<body>
<h2>Ajax testing</h2>
<button id="id_get_time">Click here to get server time</button>

<br/>

<p id="id_time"></p>
</body>
</html>