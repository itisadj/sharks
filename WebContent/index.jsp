<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
<!-- ZTree树形插件 >  
<link rel="stylesheet" href="zTreeStyle.css" type="text/css">  
<link rel="stylesheet" href="Demo.css" type="text/css"-->  
<!-- <link rel="stylesheet" href="zTreeIcons.css" type="text/css">  -->  
<!--script type="text/javascript" src="jquery-ztree.all.min.js"></script-->  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全球鲨鱼伤人事件数据可视化</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- link href="style_new.css" rel="stylesheet" type="text/css" /-->
</head>
<body>

<script src="./echarts/echarts.js" charset="utf-8"></script>
<!--script>
var setting = {  
        isSimpleData : true,              //数据是否采用简单 Array 格式，默认false  
        treeNodeKey : "id",               //在isSimpleData格式下，当前节点id属性  
        treeNodeParentKey : "pId",        //在isSimpleData格式下，当前节点的父节点id属性  
        showLine : true,                  //是否显示节点间的连线  
        checkable : true                  //每个节点上是否显示 CheckBox  
    };  
  
var treeNodes = [   
    {"id":1, "pId":0, "name":"test1"},   
    {"id":11, "pId":1, "name":"test11"},   
    {"id":12, "pId":1, "name":"test12"},   
    {"id":111, "pId":11, "name":"test111"},   
];

var zTree;  
$(function() {  
    zTree = $("#tree").zTree(setting, treeNodes);  
 });  
</script-->


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="outer" style="width:100%">
	<tr><td class="name" style="border:0px; background:#153123;width:100%" ><span font-family:黑体><strong>we小组鲨鱼伤人事件信息可视化平台<strong></span></td></tr>

	<tr>
		<td valign="top">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr><div class="inner_copy"></div>
					<td valign="top" id="left">
						<table width="200" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr><td height="3"></td></tr>
							
							<!--sidebar start-->
      <!--aside>
          <div id="sidebar"  class="nav-collapse ">
             
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>总览</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a color:#B4CA41;text-decoration:none>
                          <i class="icon_document_alt"></i>
                          <span>地理位置信息</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="CountryDis_fin.jsp">国家分布</a></li>                          
                          <li><a class="" href="form_validation.html">地区分布</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a >
                          <i class="icon_desktop"></i>
                          <span>受害者情况分析</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="general.html">受害者活动分布</a></li>
                          <li><a class="" href="buttons.html">受害者性别分布</a></li>
                          <li><a class="" href="grids.html">受害者年龄分布</a></li>
                      </ul>
                  </li>
                  <li>
                      <a >
                          <i class="icon_genius"></i>
                          <span>鲨鱼种类分析</span>
                      </a>
                  </li>
              </ul>
             
          </div>
      </aside-->
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
							<!--tr><td height="20" class="cat-head">All Categories</td></tr-->
							<!--tr><td class="leftlinks"><a href="#" target="_parent"> Category Name</a></td></tr>
							<tr><td class="leftlinks"><a href="#" target="_parent"> Category Name</a></td></tr-->
						</table>
					</td>
					<td valign="top">
						<table width="800" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr><td class="tag" id="header">
									<div id="main2" style="width:1000 ;height:900px;" align="left"></div>
	                            	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main2'));

        var data = [["befor 1771",33],["1771",1],["1776",2],["1779",1],["1785",1],["1830",2],["1831",1],["1832",1],["1852",5],["1853",6],["1862",1],["1871",8],["1872",14],["1873",8],["1874",10],["1875",5],["1876",8],["1877",13],["1883",5],["1887",1],["1888",15],["1889",9],["1890",16],["1891",8],["1892",8],["1894",8],["1895",5],["1897",5],["1898",19],["1899",8],["1900",16],["1901",18],["1902",18],["1903",10],["1904",13],["1905",16],["1906",13],["1907",21],["1908",5],["1911",8],["1912",21],["1913",16],["1914",15],["1919",1],["1921",1],["1922",5],["1925",1],["1929",26],["1930",14],["1932",4],["1933",8],["1934",12],["1935",4],["1936",57],["1937",30],["1938",3],["1940",19],["1942",1],["1943",5],["1944",31],["1945",4],["1946",4],["1947",26],["1948",1],["1949",2],["1950",15],["1951",8],["1953",36],["1954",32],["1956",7],["1958",28],["1959",27],["1960",51],["1961",16],["1962",6],["1963",15],["1964",119],["1965",23],["1966",86],["1967",14],["1968",4],["1969",23],["1970",42],["1971",13],["1972",9],["1974",52],["1975",22],["1976",5],["1978",5],["1980",4],["1981",6],["1982",24],["1983",34],["1984",23],["1985",33],["1986",7],["1987",21],["1988",11],["1989",40],["1990",24],["1991",18],["1992",17],["1993",2],["1994",28],["1995",1],["1997",22],["1998",35],["1999",1],["2000",68],["2001",66],["2002",14],["2003",34],["2004",34],["2005",54],["2006",20],["2007",1],["2008",21],["2009",99],["2010",65],["2011",22],["2012",34],["2013",45],["2014",67],["2015",41],["2016",113]];

        var dateList = data.map(function (item) {
          return item[0];
           });
        var valueList = data.map(function (item) {
          return item[1];
           });

        // 指定图表的配置项和数据
      var option = {
    // Make gradient line here
    visualMap: [{
        show: true,
        top: '10%',
        type: 'continuous',
        text: '高低',
        seriesIndex: 0,
        min: 0,
        max: 120
    }],

    title: [{
        left: 'center',
        text: '全球鲨鱼伤人事件变化图',
        subtext:'data from kaggle',
        textStyle: {
        	fontSize: '20',  //标题文字大小
            color: '#000'
        },
        subtextStyle:{
        	fontSize: '15',
        	 color: '#000'
        }
    }],
    tooltip: {
        trigger: 'axis'
    },
    xAxis: [{
        data: dateList
    }],
    yAxis: [{
        splitLine: {show: true}
    }],
    grid: [{
        bottom: '50%'
    }],
    series: [{
        type: 'line',
        showSymbol: true,
        data: valueList
    }]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
		                    </td></tr>
		                </table>
<!--div>
   <footer>
      <p><strong>Action © 2017vis we</strong></p>
   </footer>
</div-->
</body>
</html>