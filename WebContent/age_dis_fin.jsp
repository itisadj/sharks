<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <script src="echarts/echarts.js"></script>  
    <script src="echarts/world_.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全球鲨鱼伤人事件数据可视化</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="outer"  style="width:100%">
	<tr><td class="name" style="border:0px; background:#153123" ;width:100%"><span style="font-family:黑体"><strong>we小组鲨鱼伤人事件信息可视化平台</strong></span> </td></tr>

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
					<td valign="top" id="right">
						<table width="800" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr><td class="tag" id="header"> 
							     <div id="age_dis" style="width: 1000;height:800px;"></div>  
							</td></tr>
		                </table>
    <script type="text/javascript">  
var myChart = echarts.init(document.getElementById("age_dis"));
option = {
	    title : {
	        text: '被鲨鱼攻击者年龄段分布图',
	        subtext: 'data from kaggle',
	        x:'center',
	        y:'0%',
	        textStyle :{
	        	fontSize: '20',  //标题文字大小
	            color: '#000'
	        },
	        subtextStyle :{
	        	fontSize: '15',  //标题文字大小
	            color: '#000'
	        }
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        x : 'center',
	        y : '10%',
	        data:['1-10','11-20','21-30','31-40','41-50','51-60','61-70','>70']
	    },
	    toolbox: {
	        show : false,
	        feature : {
	            mark : {show: true},
	            dataView : {show: true, readOnly: false},
	            magicType : {
	                show: false,
	                type: ['pie', 'funnel']
	            },
	            restore : {show: true},
	            saveAsImage : {show: true}
	        }
	    },
	    calculable : true,
	    series : [
	        {
	            name:'年龄段',
	            type:'pie',
	            radius : [40, 200],
	            center : ['50%', '50%'],
	            roseType : 'radius',
	            label: {
	                normal: {
	                    show: false
	                },
	                emphasis: {
	                    show: true
	                }
	            },
	            lableLine: {
	                normal: {
	                    show: false
	                },
	                emphasis: {
	                    show: true
	                }
	            },
	            data:[
	              {value:72, name:'1-10'},
                  {value:504, name:'11-20'},
                  {value:379, name:'21-30'},
                  {value:204, name:'31-40'},
                  {value:135, name:'41-50'},
                  {value:63, name:'51-60'},
                  {value:24, name:'61-70'},
                  {value:10, name:'>70'}
	            ]
	        }
	    ]
	};

myChart.setOption(option);
</script>
<!--div>
   <footer>
      <p><strong>Action © 2017vis we</strong></p>
   </footer>
</div-->
</body>
</html>