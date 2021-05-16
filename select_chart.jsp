<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<html >
<head>

<title>Select chart</title>
<link rel="stylesheet" type="text/css" href="select_chart.css"/>
</head>
<body>

<form method="post">

<div class="select_frame">
<table align='center' border=3>
<tr ><td align='center' colspan="3"><label class="i">選擇圖表</label></td></tr>
<tr ><td align='center'><a href="http://140.121.150.66:8080/b00751001/hack/bar_chart_importData.jsp"><img src="Bar_graph.jpg" width="180px" height="150px"></a></td>
	 <td align='center'><a href="http://140.121.150.66:8080/b00751001/hack/importData.jsp"><img src="pie_graph.jpg" width="180px" height="150px"></a></td>
	 <td align='center'><a href="http://140.121.150.66:8080/b00751001/hack/line_chart_importData.jsp"><img src="line_chart.jpg" width="180px" height="150px"></a></td>
</tr>
<tr ><td align='center'><input type ="button" class="btn btn1" onclick=location.href='http://140.121.150.66:8080/b00751001/hack/bar_chart_importData.jsp'  value="Bar_graph " ></input></td>
				   <td align='center'><input type ="button" class="btn btn1" onclick=location.href='http://140.121.150.66:8080/b00751001/hack/importData.jsp'  value="Pie_graph " ></input></td>
				   <td align='center'><input type ="button" class="btn btn1" onclick=location.href='http://140.121.150.66:8080/b00751001/hack/line_chart_importData.jsp' value="Line_graph " ></input></td>
</tr>

</table>
</div>
</div>

</form>

</body>
</html>
