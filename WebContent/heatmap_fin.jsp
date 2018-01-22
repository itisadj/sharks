<%@ page contentType="text/html;charset=UTF-8" language="java" import="visp.yeararray,java.lang.*,java.util.*" pageEncoding="UTF-8" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全球鲨鱼伤人事件数据可视化</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<% 
  yeararray a=new yeararray();
  String rsstr=a.getString(); 
  String[] strarr=rsstr.split("count");
  String stryear=strarr[0];
  String strvalue=strarr[1];
  String days_str;
  rsstr="12a,1a,2a,3a,4a,5a,6a,7a,8a,9a,10a,11a,12p,1p,2p,3p,4p,5p,6p,7p,8p,9p,10p,11p";
  days_str ="Saturday,Friday,Thursday,Wednesday,Tuesday,Monday,Sunday";
  rsstr=stryear;
  rsstr="1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016";
  String month_str="January,February,March,April,May,June,July,August,September,October,November,December";        
  days_str=month_str; 
%>
<script src="./echarts/echarts.js" charset="utf-8"></script>
	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="outer"  style="width:100%">
	<tr><td class="name" style="border:0px; background:#153123 ;width:100%"><span style="font-family:黑体"><strong>we小组鲨鱼伤人事件信息可视化平台<strong></span></td></tr>

	<tr>
		<td valign="top">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr><div class="inner_copy"></div>
					<td valign="top" id="left">
						<table width="200" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr><td height="3"></td></tr>
							<tr><td height="20" class="cat-head">总览</td></tr>
							<tr><td class="leftlinks"><a href="index.jsp" target="_parent">事件数总览</form></a></td></tr>
							<tr><td height="20" class="cat-head">地理位置信息</td></tr>
							<tr><td class="leftlinks"><a href="CountryDis_fin.jsp" target="_parent">国家分布</a></td></tr>
							<tr><td class="leftlinks"><a href="map_value_fin.jsp" target="_parent">地区分布</a></td></tr>
							<tr><td height="20" class="cat-head">事件发生时间信息</td></tr>
							<tr><td class="leftlinks"><a href="heatmap_fin.jsp" target="_parent">事件发生时间分布</a></td></tr>
							<tr><td class="leftlinks"><a href="3-2.jsp" target="_parent">各洲事件数随时间分布</a></td></tr>
							<tr><td height="20" class="cat-head">受害者信息</td></tr>
							<tr><td class="leftlinks"><a href="age_dis_fin.jsp" target="_parent">受害者年龄分布</a></td></tr>
							<tr><td class="leftlinks"><a href="river.jsp" target="_parent">受害者活动分布</a></td></tr>
							<tr><td class="leftlinks"><a href="sex_2.jsp" target="_parent">受害者性别分布</a></td></tr>
							<tr><td height="20" class="cat-head">鲨鱼种类信息</td></tr>
							<tr><td class="leftlinks"><a href="shark.jsp" target="_parent">鲨鱼种类分布</a></td></tr>
							<!--tr><td class="leftlinks"><a href="#" target="_parent"> Category Name</a></td></tr>
							<tr><td class="leftlinks"><a href="#" target="_parent"> Category Name</a></td></tr-->
						</table>
					</td>
					<td valign="top">
						<table width="800" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr><td class="tag" id="header">
									<div id="main" style="width:1000 ;height:800px;" align="left"></div></td></tr>	
							<!--tr><td><%=rsstr %></td></tr>
							<tr><td><%=days_str %></td></tr>
							<tr><td><%=strvalue%></td></tr-->
							
		                </table>
	    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var str='<%=rsstr%>';
        var hours= str.split(",");
        var str_varlue='<%=strvalue%>';
        var t_value=str_varlue.split(",");
        //hours = initPages(); 
        //app.title = '笛卡尔坐标系上的热力图';
        //var year=new Array();
       // var month=['January','February,'March','April','May','June','July' ,'August' ,'September' ,'October','November','December'];
        var daysstr ='<%=days_str%>';
        var days =daysstr.split(",");
        //var days = ['Saturday', 'Friday', 'Thursday',
                   // 'Wednesday', 'Tuesday', 'Monday', 'Sunday'];
        /*
        var t;
        var data=new Array();
        for(var i=1;i<=days.length;i++){
        	for(var j=1;j<=hours.length;j++)
        		{
        		var temp=new Array(3);
        		temp[0]=i-1;
        		temp[1]=j-1;
        		temp[2]=t_value[t-1];
        		t=(i-1)*hours.length+j;
        		data[t-1]=temp;
        		}
        }
        */
        //var data = [[0,0,2],[0,1,2],[0,2,0],[0,3,0],[0,4,0],[0,5,0],[0,6,2],[0,7,14],[0,8,2],[0,9,0],[0,10,0],[0,11,0],[1,0,4],[1,1,1],[1,2,1],[1,3,3],[1,4,4],[1,5,6],[1,6,4],[0,19,4],[0,20,3],[0,21,3],[0,22,2],[0,23,5],[1,0,7],[1,1,0],[1,2,0],[1,3,0],[1,4,0],[1,5,0],[1,6,0],[1,7,0],[1,8,0],[1,9,0],[1,10,5],[1,11,2],[1,12,2],[1,13,6],[1,14,9],[1,15,11],[1,16,6],[1,17,7],[1,18,8],[1,19,12],[1,20,5],[1,21,5],[1,22,7],[1,23,2],[2,0,1],[2,1,1],[2,2,0],[2,3,0],[2,4,0],[2,5,0],[2,6,0],[2,7,0],[2,8,0],[2,9,0],[2,10,3],[2,11,2],[2,12,1],[2,13,9],[2,14,8],[2,15,10],[2,16,6],[2,17,5],[2,18,5],[2,19,5],[2,20,7],[2,21,4],[2,22,2],[2,23,4],[3,0,7],[3,1,3],[3,2,0],[3,3,0],[3,4,0],[3,5,0],[3,6,0],[3,7,0],[3,8,1],[3,9,0],[3,10,5],[3,11,4],[3,12,7],[3,13,14],[3,14,13],[3,15,12],[3,16,9],[3,17,5],[3,18,5],[3,19,10],[3,20,6],[3,21,4],[3,22,4],[3,23,1],[4,0,1],[4,1,3],[4,2,0],[4,3,0],[4,4,0],[4,5,1],[4,6,0],[4,7,0],[4,8,0],[4,9,2],[4,10,4],[4,11,4],[4,12,2],[4,13,4],[4,14,4],[4,15,14],[4,16,12],[4,17,1],[4,18,8],[4,19,5],[4,20,3],[4,21,7],[4,22,3],[4,23,0],[5,0,2],[5,1,1],[5,2,0],[5,3,3],[5,4,0],[5,5,0],[5,6,0],[5,7,0],[5,8,2],[5,9,0],[5,10,4],[5,11,1],[5,12,5],[5,13,10],[5,14,5],[5,15,7],[5,16,11],[5,17,6],[5,18,0],[5,19,5],[5,20,3],[5,21,4],[5,22,2],[5,23,0],[6,0,1],[6,1,0],[6,2,0],[6,3,0],[6,4,0],[6,5,0],[6,6,0],[6,7,0],[6,8,0],[6,9,0],[6,10,1],[6,11,0],[6,12,2],[6,13,1],[6,14,3],[6,15,4],[6,16,0],[6,17,0],[6,18,0],[6,19,0],[6,20,1],[6,21,2],[6,22,2],[6,23,6]];
        ///*
        var data = [[0,0,2],[0,1,2],[0,2,0],[0,3,0],[0,4,0],[0,5,0],
                   [0,6,2],[0,7,14],[0,8,2],[0,9,0],[0,10,0],[0,11,0],
                   [1,0,0],[1,1,0],[1,2,0],[1,3,4],[1,4,7],[1,5,4],
         		   [1,6,5],[1,7,9],[1,8,5],[1,9,1],[1,10,0],[1,11,0],
         		   [2,0,0],[2,1,0],[2,2,0],[2,3,1],[2,4,0],[2,5,0],
         		   [2,6,0],[2,7,0],[2,8,0],[2,9,0],[2,10,0],[2,11,0],
         		   [3,0,0],[3,1,10],[3,2,22],[3,3,2],[3,4,4],[3,5,9],
         		   [3,6,17],[3,7,4],[3,8,0],[3,9,0],[3,10,0],[3,11,0],
         		   [4,0,0],[4,1,2],[4,2,10],[4,3,26],[4,4,9],[4,5,4],
         		   [4,6,10],[4,7,5],[4,8,0],[4,9,0],[4,10,0],[4,11,0],
         		   [5,0,0],[5,1,0],[5,2,1],[5,3,8],[5,4,5],[5,5,0],
         		   [5,6,0],[5,7,0],[5,8,0],[5,9,0],[5,10,0],[5,11,0],
         		   
         		   [6,0,0],[6,1,0],[6,2,0],[6,3,0],[6,4,0],[6,5,3],
         		   [6,6,3],[6,7,3],[6,8,12],[6,9,12],[6,10,1],[6,11,0],
         		   
         		   [7,0,0],[7,1,0],[7,2,2],[7,3,7],[7,4,10],[7,5,6],
         		   [7,6,0],[7,7,0],[7,8,0],[7,9,6],[7,10,3],[7,11,0],
         		   
         		   [8,0,0],[8,1,4],[8,2,8],[8,3,9],[8,4,8],[8,5,11],
         		   [8,6,9],[8,7,4],[8,8,0],[8,9,0],[8,10,1],[8,11,0],
         		   
         		   [9,0,0],[9,1,0],[9,2,0],[9,3,0],[9,4,4],[9,5,11],
         		   [9,6,5],[9,7,0],[9,8,0],[9,9,0],[9,10,0],[9,11,0],
         		   
         		   [10,0,0],[10,1,0],[10,2,0],[10,3,0],[10,4,0],[10,5,0],
         		   [10,6,0],[10,7,0],[10,8,1],[10,9,0],[10,10,0],[10,11,0],
         		   
         		   [11,0,0],[11,1,0],[11,2,0],[11,3,0],[11,4,1],[11,5,3],
         		   [11,6,17],[11,7,0],[11,8,0],[11,9,0],[11,10,0],[11,11,0],
         		   
         		   [12,0,12],[12,1,9],[12,2,13],[12,3,11],[12,4,7],[12,5,0],
         		   [12,6,0],[12,7,0],[12,8,0],[12,9,10],[12,10,16],[12,11,21],
         		   
         		   [13,0,11],[13,1,11],[13,2,1],[13,3,4],[13,4,6],[13,5,2],
         		   [13,6,0],[13,7,0],[13,8,5],[13,9,12],[13,10,8],[13,11,5],
         		   
         		   [14,0,0],[14,1,1],[14,2,8],[14,3,6],[14,4,5],[14,5,0],
         		   [14,6,0],[14,7,0],[14,8,0],[14,9,0],[14,10,0],[14,11,2],
         		   
         		   [15,0,6],[15,1,0],[15,2,0],[15,3,0],[15,4,0],[15,5,0],
         		   [15,6,0],[15,7,2],[15,8,13],[15,9,10],[15,10,3],[15,11,0],
         		   
         		   [16,0,0],[16,1,0],[16,2,0],[16,3,0],[16,4,2],[16,5,12],
         		   [16,6,10],[16,7,13],[16,8,8],[16,9,0],[16,10,0],[16,11,0],
         		   
         		   [16,0,4],[16,1,5],[16,2,10],[16,3,8],[16,4,7],[16,5,13],
         		   [16,6,12],[16,7,4],[16,8,0],[16,9,0],[16,10,0],[16,11,4],
         		   
         		   [17,0,5],[17,1,0],[17,2,0],[17,3,0],[17,4,0],[17,5,0],
         		   [17,6,6],[17,7,9],[17,8,16],[17,9,0],[17,10,1],[17,11,4],
         		   
         		   [18,0,3],[18,1,0],[18,2,0],[18,3,0],[18,4,0],[18,5,30],
         		   [18,6,40],[18,7,14],[18,8,26],[18,9,0],[18,10,0],[18,11,0]];
        //*/
        //alert(data);
        //data数组中第一个是星期几，第二个是hour，第三个是值
        data = data.map(function (item) {
            return [item[0], item[1], item[2] || '-'];
        });

        option = {
        		title: {  
        	        text: '鲨鱼伤人事件时间分布情况',
        	        subtext:'data form kaggle',
        	        //sublink: 'http://esa.un.org/wpp/Excel-Data/population.htm',  
        	        left: 'center',  
        	        textStyle: {
        	        	fontSize: '20',  //标题文字大小
        	            color: '#000'
        	        },
        	        subtextStyle:{
        	        	fontSize: '15',
        	        	 color: '#000'
        	        },
        	        top: 'top'  
        	    },  
            tooltip: {
                position: 'top'
            },
            animation: false,
            grid: {
                height: '50%',
                y: '10%'
            },
            xAxis: {
                type: 'category',
                data: hours,
                splitArea: {
                    show: true
                }
            },
            yAxis: {
                type: 'category',
                data: days,
                splitArea: {
                    show: true
                }
            },
            visualMap: {
                min: 0,
                max: 40,
                calculable: true,
                orient: 'horizontal',
                left: 'center',
                bottom: '30%'
            },
            series: [{
                name: '事件数',
                type: 'heatmap',
                data: data,
                label: {
                    normal: {
                        show: true
                    }
                },
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>     
<!--div>
   <footer>
      <p><strong>Action © 2017vis we</strong></p>
   </footer>
</div-->
</body>
</html>