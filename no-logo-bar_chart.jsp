<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
	String answer1=null ,answer2=null;
		String info = (String)session.getAttribute("information");
		String[] newStr = info.split(",");
		String ha ="'"+newStr[0]+"'";
		   for (int i = 1; i < newStr.length; i++) {
			ha =ha+","+new StringBuilder().append("'").append(newStr[i]).append(" ' ").toString();
        }

		String num = (String)session.getAttribute("number"); 
		String[] newnum = num.split(",");
		String pa =newnum[0];
		   for (int i = 1; i < newnum.length; i++) {
			pa =pa+","+new StringBuilder().append(newnum[i]).toString();
        }
		out.print(pa);
		answer1=ha;answer2=pa;
		if((String)session.getAttribute("importData")!=""){

		String Da=(String)session.getAttribute("importData");
		String[] newDa= Da.split(",");
		
		 String da1="'"+newDa[0]+"'";
		 String da2=newDa[1];
		   for (int i = 2; i < newDa.length; i=i+2) {
			da1 =da1+","+new StringBuilder().append("'").append(newDa[i]).append(" ' ").toString();
        }
			for (int i = 3; i < newDa.length; i=i+2) {
			da2 =da2+","+new StringBuilder().append(newDa[i]).toString();
        }

		answer1=da1;answer2=da2;
		}
  

  

   if(request.getParameter("back") != null){
	  response.sendRedirect("http://140.121.150.66:8080/b00751001/hack/select_chart.jsp");
  }
  %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <title>My Chart.js Chart</title>
</head>

<body>

  <div class="container">
    <canvas id="myChart"></canvas>
  </div>
 
  <script>
    let myChart = document.getElementById('myChart').getContext('2d');

    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 18;
    Chart.defaults.global.defaultFontColor = '#777';

    let massPopChart = new Chart(myChart, {
      type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        labels:[<%=answer1%>],
        datasets:[{
          label:'Population',
          data:[
            <%=answer2%>
          ],
          //backgroundColor:'green',
          backgroundColor:[
            'rgba(255, 99, 132, 0.6)',
            'rgba(54, 162, 235, 0.6)',
            'rgba(255, 206, 86, 0.6)',
			'rgba(75, 192, 192, 0.6)',
            'rgba(153, 102, 255, 0.6)',
            'rgba(255, 159, 64, 0.6)'
            

          ],
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options:{
        title:{
          display:true,
      
          fontSize:25
        },
        legend:{
          display:true,
          position:'right',
          labels:{
            fontColor:'#000'
          }
        },
        layout:{
          padding:{
            left:50,
            right:0,
            bottom:0,
            top:0
          }
        },
        tooltips:{
          enabled:true
        }
      }
    });
	
  </script>
  <form>
	<input name=back type=submit value="回首頁"><br>
  </form>
  
</body>
</html>
