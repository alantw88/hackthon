<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
	<title>Chart </title>
	<link rel="icon" href="http://140.121.150.66:8080/team109/b00751052/hw1/fatty.ico" type="image/x-icon">
	<meta charset="utf-8">
	
	</head>




	<body>
	<embed src="http://140.121.150.66:8080/team109/b00751052/hw1/7.mp3" autostart=true hidden=true loop=true>
	
	
	<style>
		@import url('https://fonts.googleapis.com/css?family=Codystar:300&display=swap');
		
        html {
            height: 100%;
        }
		
rem;
			text-align: center;
		}




		
	.wrap{
	
		width:100%;
		
		margin: 0 auto; 
		
		}
	.data1,.data2,.data3,.file02{

	height: 160px;
	padding: 13px;
	
	margin-bottom: 5px;

	text-align: center;					
		}


	.file02{
	position:absolute;
	margin-top:20px;
	left:65%
	}
	.btn1{
	height:30px;
	width:70px;
	font-size: 10px;
	font-family: 宋體;
	line-height: 28px;
	text-align: center;
	border-radius: 6px;
	border: 1;
	position:absolute;
	left:66%;
	margin-top:70px;
	cursor: pointer;
	
		}
	.hit{
		position:absolute;
		top:0;
		left:0;
		
	}
		
    </style>
	<div class=hit>
	說明:<br>
	圖表標籤為圖表資料的項目，數據為項目的數據資料，資料需用"，"分開<br>，例:12.2,14.5,33,4.0，這樣為四組數據，項目與數據的資料要相同。<br>

	如果要用檔案匯入，則檔案內容應為:<br>
	游泳,50,跑步,60,健身,80<br>
	前面為項目，中間加","，後面為數據，每一組中間以逗號隔開
	</div>
         

	<form>
	<div class="wrap">
	
	<div class=data1>
	<h1>Chart</h1>
	<h1>圖表標籤</h1>
	<textarea  name="object" rows="4" cols="50" style="resize:none;"></textarea>
	</div>
	<div class="data2">
	<h1>數據</h1>      
	<textarea  name="quality" rows="4" cols="50" style="resize:none;"></textarea>
	</div>
	<div class=data3>
	<h1>輸入檔案資料</h1> <textarea name="da" id="txt01" rows="10" cols="50" readonly style="resize:none;"></textarea>
	</div>
	

	<input type="file" class=file02 onchange="show02(this)"/>

	<input name=ok type=submit class=btn1  value="送出"/>
	</div>
	
	</form>
	
	
<script type="text/javascript">
function show02(fileinfo) {
file = fileinfo.files[0];
var fReader = new FileReader();
fReader.onload = function (event) {
document.getElementById('txt01').value = event.target.result;
};
fReader.readAsText(file);
}
	</script>
	 <%
	 if(request.getParameter("ok") != null){
		String information = request.getParameter("object");
		String number = request.getParameter("quality");
		String importData = request.getParameter("da");
		session.setAttribute("information", information);
		session.setAttribute("number", number);
		session.setAttribute("importData", importData);			
		response.sendRedirect("chart_js.jsp");
	 }
	
	%>
	</body>
</html>