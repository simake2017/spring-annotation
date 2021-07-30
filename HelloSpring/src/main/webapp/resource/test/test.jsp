
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript" src="/mavenTest/resource/js/jquery-1.9.0.js"></script>

<script type="text/javascript">
	
	$(document).ready(function(){
	
		var v = {
					header:{
						token:"15763972425_aaa",
						version_info:{
							app_version:1
						}
					},
					body:{
					
					}
				};
	
		var vv = JSON.stringify(v);
		
		$.ajax({
			url:"/cippo/businessservice/getBusinessServiceList",
			type:"post",
			contentType:"application/json",               
            data:JSON.stringify(v),
     
			success:function(data){
				alert(data);
			},
			error:function(msg){
				alert(msg);
			}
		});
		
		
	});

</script>

<title>Insert title here</title>
</head>
<body>


sdfdsf
</body>
</html>