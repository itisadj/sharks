
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <script src="echarts/echarts.js"></script>  
    <script src="echarts/world_.js"></script>
    <script src="echarts/china.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全球鲨鱼伤人事件数据可视化</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="outer">
	<tr><td class="name" style="border:0px; background:#E2E2E2"><span style="font-family:黑体"><strong>we小组鲨鱼伤人事件信息可视化平台</strong></span> </td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr>
		<td valign="top">
			<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
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
							     <div id="main1" style="width: 1000;height:800px;"></div>  
							</td></tr>
		                </table>
  
<script>
var myChart = echarts.init(document.getElementById("main1"));
option = {
	    title : {
	        text: '2011全国GDP（亿元）',
	        subtext: '数据来自国家统计局'
	    },
	    tooltip : {
	        trigger: 'item'
	    },
	    legend: {
	        x:'right',
	        selectedMode:false,
	        data:['北京','上海','广东']
	    },
	    dataRange: {
	        orient: 'horizontal',
	        min: 0,
	        max: 55000,
	        text:['高','低'],           // 文本，默认为数值文本
	        splitNumber:0
	    },
	    toolbox: {
	        show : true,
	        orient: 'vertical',
	        x:'right',
	        y:'center',
	        feature : {
	            mark : {show: true},
	            dataView : {show: true, readOnly: false}
	        }
	    },
	    series : [
	        {
	            name: '2011全国GDP分布',
	            type: 'map',
	            mapType: 'china',
	            mapLocation: {
	                x: 'left'
	            },
	            selectedMode : 'multiple',
	            itemStyle:{
	                normal:{label:{show:true}},
	                emphasis:{label:{show:true}}
	            },
	            data:[
	                {name:'西藏', value:605.83},
	                {name:'青海', value:1670.44},
	                {name:'宁夏', value:2102.21},
	                {name:'海南', value:2522.66},
	                {name:'甘肃', value:5020.37},
	                {name:'贵州', value:5701.84},
	                {name:'新疆', value:6610.05},
	                {name:'云南', value:8893.12},
	                {name:'重庆', value:10011.37},
	                {name:'吉林', value:10568.83},
	                {name:'山西', value:11237.55},
	                {name:'天津', value:11307.28},
	                {name:'江西', value:11702.82},
	                {name:'广西', value:11720.87},
	                {name:'陕西', value:12512.3},
	                {name:'黑龙江', value:12582},
	                {name:'内蒙古', value:14359.88},
	                {name:'安徽', value:15300.65},
	                {name:'北京', value:16251.93, selected:true},
	                {name:'福建', value:17560.18},
	                {name:'上海', value:19195.69, selected:true},
	                {name:'湖北', value:19632.26},
	                {name:'湖南', value:19669.56},
	                {name:'四川', value:21026.68},
	                {name:'辽宁', value:22226.7},
	                {name:'河北', value:24515.76},
	                {name:'河南', value:26931.03},
	                {name:'浙江', value:32318.85},
	                {name:'山东', value:45361.85},
	                {name:'江苏', value:49110.27},
	                {name:'广东', value:53210.28, selected:true}
	            ]
	        },
	        {
	            name:'2011全国GDP对比',
	            type:'pie',
	            roseType : 'area',
	            tooltip: {
	                trigger: 'item',
	                formatter: "{a} <br/>{b} : {c} ({d}%)"
	            },
	            center: [document.getElementById('main').offsetWidth - 250, 225],
	            radius: [30, 120],
	            data:[
	                {name: '北京', value: 16251.93},
	                {name: '上海', value: 19195.69},
	                {name: '广东', value: 53210.28}
	            ]
	        }
	    ],
	    animation: false
	};
require.config({
	　　paths: {
	　　　　echarts: 'http://echarts.baidu.com/build/dist'
	　　}
	});
	  // 使用柱状图就加载bar模块，按需加载
	  require(
	　　　　　　[
	　　　　　　　　'echarts',
	　　　　　　　　'echarts/chart/bar',
	　　　　　　　　'echarts/chart/line'
	　　　　　　],
	　　　　　　drawEcharts
	);
	var ecConfig = require('echarts/config');
	myChart.on(ecConfig.EVENT.MAP_SELECTED, function (param){
	    var selected = param.selected;
	    var mapSeries = option.series[0];
	    var data = [];
	    var legendData = [];
	    var name;
	    for (var p = 0, len = mapSeries.data.length; p < len; p++) {
	        name = mapSeries.data[p].name;
	        //mapSeries.data[p].selected = selected[name];
	        if (selected[name]) {
	            data.push({
	                name: name,
	                value: mapSeries.data[p].value
	            });
	            legendData.push(name);
	        }
	    }
	    option.legend.data = legendData;
	    option.series[1].data = data;
	    myChart.setOption(option, true);
	})
	                    

//myChart.setOption(option,true);
</script>
</body>
<div>
  <footer>
      <p><strong>Action © 2017 we</strong></p>
   </footer>
</div>
</body>
</html>