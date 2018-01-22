<%@ page contentType="text/html;charset=UTF-8" language="java" import="visp.yeararray,java.lang.*,java.util.*" pageEncoding="UTF-8" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全球鲨鱼伤人事件数据可视化</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<script src="./echarts/echarts.js" charset="utf-8"></script>
	
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="outer"  style="width:100%">
	<tr><td class="name" style="border:0px; background:#153123 ;width:100%";font-family:黑体"><span ><strong>we小组鲨鱼伤人事件信息可视化平台<strong></span></td></tr>

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
						
							<tr><td class="tag" id="header2">
							        <div id="main2" style="width:1000 ;height:800px;" align="left"></div></td></tr>	
							
		                </table>    
<script type="text/javascript">
//基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main2'));
option= {
	    title : {
	        text: '男女受害者比例',
	        subtext: 'data from kaggle',
	        textStyle: {
	        	fontSize: '20',  //标题文字大小
	            color: '#000'
	        },
	        subtextStyle:{
	        	fontSize: '15',
	        	 color: '#000'
	        }
	    },
	    tooltip : {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['男','女']
	    },
	    grid:{
	        bottom:"20%"
	    },
	    toolbox: {
	        show : false,
	        feature : {
	            mark : {show: true},
	            dataView : {show: true, readOnly: false},
	            magicType : {show: true, type: ['line', 'bar']},
	            restore : {show: true},
	            saveAsImage : {show: true}
	        }
	    },
	    calculable : true,
	    xAxis : [
	        {
	            type : 'category',
	            data : ['USA','AUSTRALIA','SOUTH AFRICA','PAPUA NEW GUINEA','NEW ZEALAND','BAHAMAS','BRAZIL','MEXICO','ITALY','Fiji'],
	            axisLabel:{
	                interval:0,
	                rotate:45
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'男',
	            type:'bar',
	            data:[1808, 1199, 540, 127, 113, 99,87,71,69,57],
	            markPoint : {
	                data : [
	                    {type : 'max', name: '最大值'},
	                    {type : 'min', name: '最小值'}
	                ]
	            },
	            markLine : {
	                data : [
	                    {type : 'average', name: '平均值'}
	                ]
	            }
	        },
	        {
	            name:'女',
	            type:'bar',
	            data:[308,80,25,6,12,3,11,11,2,8],
	            markPoint : {
	                data : [
	                    {name : '最高', value : 308, xAxis: 0, yAxis: 308, symbolSize:18},
	                    {name : '最低', value : 2, xAxis: 8, yAxis: 2}
	                ]
	            },
	            markLine : {
	                data : [
	                    {type : 'average', name : '平均值'}
	                ]
	            }
	        }
	    ]
	};
	                    
	// option = {
//	     title: {
//	         text: '受害男女比例',
//	         subtext: '数据来自网络'
//	     },
//	     tooltip: {
//	         trigger: 'axis',
//	         axisPointer: {
//	             type: 'shadow'
//	         }
//	     },
//	     legend: {
//	         data: ['男', '女']
//	     },
//	     grid: {
//	         left: '3%',
//	         right: '4%',
//	         bottom: '3%',
//	         //containLabel: false
//	         containLabel: true
//	     },
//	    yAxis: {
//	         type: 'value',
//	         boundaryGap: [0, 0.01]
//	     },
//	     xAxis: {
//	         type: 'category',
//	         //data: ['Fiji','ITALY','MEXICO','BAHAMAS','BRAZIL','NEW ZEALAND','PAPUA NEW GUINEA','SOUTH AFRICA','AUSTRALIA','USA']
//	         data: ['USA','AUSTRALIA','SOUTH AFRICA','PAPUA NEW GUINEA','NEW ZEALAND','BAHAMAS','BRAZIL','MEXICO','ITALY','Fiji']
//	         //data: ['NEW ZEALAND','PAPUA NEW GUINEA','SOUTH AFRICA','AUSTRALIA','USA']
//	     },
//	     series: [
//	         {
//	             name: '男',
//	             type: 'bar',
//	             data: [1808, 1199, 540, 127, 113, 99,87,71,69,57]
//	            //data: [99,87,71,69,57]
//	         },
//	         {
//	             name: '女',
//	             type: 'bar',
//	             data: [308,80,25,6,12,3,11,11,2,8]
//	            //data: [12,3,11,11,2,8]
//	         }
//	     ]
	// };

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