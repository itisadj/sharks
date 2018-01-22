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
	<tr><td class="name" style="border:0px; background:#153123;width:100%" ;font-family:黑体"><span ><strong>we小组鲨鱼伤人事件信息可视化平台<strong></span></td></tr>

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
							        <div id="main2" style="width:1000 ;height:600px;" align="left"></div></td></tr>	
							
		                </table>    
<script type="text/javascript">
//基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main2'));
option = {

	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'line',
	            lineStyle: {
	                color: 'rgba(0,0,0,0.2)',
	                width: 1,
	                type: 'solid'
	            }
	        }
	    },
	    title: {
            text: '受害者活动情况分析',
            //link: 'http://pages.anjuke.com/expert/newexpert.html',
            subtext: 'data from kaggle',
            //sublink: 'http://pages.anjuke.com/expert/newexpert.html',
            left: 'center',
            textStyle: {
            	fontSize: '20',  //标题文字大小
                color: '#000'
            },
            subtextStyle:{
            	fontSize: '15',
            	 color: '#000'
            }
        },
	    legend: {
	    	x:'center',
	    	y: '10%',
	        data: ['Surfing', 'Swimming', 'Fishing', 'Spearfishing', 'Diving', 'Bathing']
	    },

	    singleAxis: {
	        top: 50,
	        bottom: 50,
	        axisTick: {},
	        axisLabel: {},
			max: 2010,
			min: 1950,
	       // type: 'time',
	        axisPointer: {
	            animation: true,
				//animation: false,
	            label: {
	                show: true
					//show: false
	            }
	        },
	        splitLine: {
	            show: true,
	            lineStyle: {
	                type: 'dashed',
	                opacity: 0.2
	            }
	        }
	    },

	    series: [
	        {
	            type: 'themeRiver',
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 20,
	                    shadowColor: 'rgba(0, 0, 0, 0.8)'
	                }
	            },
	            data: [
				/*['1500',0,'Surfing'],
				['1510',0,'Surfing'],
				['1520',0,'Surfing'],
				['1530',0,'Surfing'],
				['1540',0,'Surfing'],			
				['1550',0,'Surfing'],
				['1560',0,'Surfing'],
				['1570',0,'Surfing'],
				['1580',0,'Surfing'],
				['1590',0,'Surfing'],			
				['1600',0,'Surfing'],
				['1610',0,'Surfing'],
				['1620',0,'Surfing'],
				['1630',0,'Surfing'],
				['1640',0,'Surfing'],			
				['1650',0,'Surfing'],
				['1660',0,'Surfing'],
				['1670',0,'Surfing'],
				['1680',0,'Surfing'],
				['1690',0,'Surfing'],			
				['1700',0,'Surfing'],
				['1710',0,'Surfing'],
				['1720',0,'Surfing'],
				['1730',0,'Surfing'],
				['1740',0,'Surfing'],
				['1750',0,'Surfing'],
				['1760',0,'Surfing'],
				['1770',0,'Surfing'],
				['1780',0,'Surfing'],
				['1790',0,'Surfing'],*/
				/*['1800',0,'Surfing'],
				['1810',0,'Surfing'],
				['1820',1,'Surfing'],
				['1830',0,'Surfing'],
				['1840',0,'Surfing'],
				['1850',0,'Surfing'],
				['1860',0,'Surfing'],
				['1870',0,'Surfing'],
				['1880',0,'Surfing'],
				['1890',0,'Surfing'],*/
				/*['1900',0,'Surfing'],
				['1910',1,'Surfing'],
				['1920',5,'Surfing'],
				['1930',6,'Surfing'],
				['1940',8,'Surfing'],*/
				['1950',13,'Surfing'],['1960',24,'Surfing'],['1970',52,'Surfing'],['1980',106,'Surfing'],
	            // ['2000/11/11',38,'Surfing'],['2000/11/12',22,'Surfing'],['2000/11/13',16,'Surfing'],
	            //['2000/11/14',7,'Surfing'],['2000/11/15',2,'Surfing'],['2000/11/16',17,'Surfing'],
	           // ['2000/11/17',33,'Surfing'],['2000/11/18',40,'Surfing'],['2000/11/19',32,'Surfing'],
	            //['2000/11/20',26,'Surfing'],['2000/11/21',35,'Surfing'],['2000/11/22',40,'Surfing'],
	            ['1990',166,'Surfing'],['2000',331,'Surfing'],['2010',259,'Surfing'],
	 
	           /* ['1500',0,'Swimming'],
				['1510',0,'Swimming'],
				['1520',0,'Swimming'],
				['1530',0,'Swimming'],
				['1540',0,'Swimming'],			
				['1550',1,'Swimming'],
				['1560',0,'Swimming'],
				['1570',0,'Swimming'],
				['1580',0,'Swimming'],
				['1590',0,'Swimming'],			
				['1600',0,'Swimming'],
				['1610',0,'Swimming'],
				['1620',0,'Swimming'],
				['1630',0,'Swimming'],
				['1640',1,'Swimming'],			
				['1650',0,'Swimming'],
				['1660',0,'Swimming'],
				['1670',0,'Swimming'],
				['1680',0,'Swimming'],
				['1690',0,'Swimming'],			
				['1700',1,'Swimming'],
				['1710',0,'Swimming'],
				['1720',1,'Swimming'],
				['1730',1,'Swimming'],
				['1740',2,'Swimming'],
				['1750',0,'Swimming'],
				['1760',1,'Swimming'],
				['1770',0,'Swimming'],
				['1780',1,'Swimming'],
				['1790',0,'Swimming'],*/
				/*['1800',1,'Swimming'],
				['1810',5,'Swimming'],
				['1820',3,'Swimming'],
				['1830',1,'Swimming'],
				['1840',8,'Swimming'],
				['1850',15,'Swimming'],
				['1860',10,'Swimming'],
				['1870',7,'Swimming'],
				['1880',14,'Swimming'],
				['1890',19,'Swimming'],*/
				/*['1900',38,'Swimming'],
				['1910',35,'Swimming'],
				['1920',44,'Swimming'],
				['1930',51,'Swimming'],
				['1940',54,'Swimming'],*/
	            ['1950',60,'Swimming'],['1960',61,'Swimming'],['1970',50,'Swimming'],['1980',47,'Swimming'],
	            ['1990',65,'Swimming'],['2000',144,'Swimming'],['2010',111,'Swimming'],		
				/*
				['1500',0,'Fishing'],
				['1510',0,'Fishing'],
				['1520',0,'Fishing'],
				['1530',0,'Fishing'],
				['1540',0,'Fishing'],			
				['1550',0,'Fishing'],
				['1560',0,'Fishing'],
				['1570',0,'Fishing'],
				['1580',0,'Fishing'],
				['1590',0,'Fishing'],			
				['1600',0,'Fishing'],
				['1610',0,'Fishing'],
				['1620',0,'Fishing'],
				['1630',0,'Fishing'],
				['1640',0,'Fishing'],			
				['1650',0,'Fishing'],
				['1660',0,'Fishing'],
				['1670',0,'Fishing'],
				['1680',0,'Fishing'],
				['1690',0,'Fishing'],			
				['1700',0,'Fishing'],
				['1710',0,'Fishing'],
				['1720',0,'Fishing'],
				['1730',0,'Fishing'],
				['1740',0,'Fishing'],
				['1750',0,'Fishing'],
				['1760',0,'Fishing'],
				['1770',1,'Fishing'],
				['1780',1,'Fishing'],
				['1790',0,'Fishing'],*/
			/*	['1800',0,'Fishing'],
				['1810',0,'Fishing'],
				['1820',0,'Fishing'],
				['1830',1,'Fishing'],
				['1840',1,'Fishing'],
	            ['1850',1,'Fishing'],
				['1860',2,'Fishing'],
				['1870',14,'Fishing'],
				['1880',7,'Fishing'],
				['1890',14,'Fishing'],*/
				/*['1900',14,'Fishing'],
				['1910',13,'Fishing'],
				['1920',21,'Fishing'],
				['1930',43,'Fishing'],
				['1940',23,'Fishing'],*/
	            ['1950',54,'Fishing'],['1960',64,'Fishing'],['1970',16,'Fishing'],['1980',18,'Fishing'],
	            ['1990',22,'Fishing'],['2000',64,'Fishing'],['2010',71,'Fishing'],
	/*
				['1500',0,'Spearfishing'],
				['1510',0,'Spearfishing'],
				['1520',0,'Spearfishing'],
				['1530',0,'Spearfishing'],
				['1540',0,'Spearfishing'],			
				['1550',0,'Spearfishing'],
				['1560',0,'Spearfishing'],
				['1570',0,'Spearfishing'],
				['1580',0,'Spearfishing'],
				['1590',0,'Spearfishing'],			
				['1600',0,'Spearfishing'],
				['1610',0,'Spearfishing'],
				['1620',0,'Spearfishing'],
				['1630',0,'Spearfishing'],
				['1640',0,'Spearfishing'],			
				['1650',0,'Spearfishing'],
				['1660',0,'Spearfishing'],
				['1670',0,'Spearfishing'],
				['1680',0,'Spearfishing'],
				['1690',0,'Spearfishing'],			
				['1700',0,'Spearfishing'],
				['1710',0,'Spearfishing'],
				['1720',0,'Spearfishing'],
				['1730',0,'Spearfishing'],
				['1740',0,'Spearfishing'],
				['1750',0,'Spearfishing'],
				['1760',0,'Spearfishing'],
				['1770',0,'Spearfishing'],
				['1780',0,'Spearfishing'],
				['1790',0,'Spearfishing'],*/
				/*['1800',0,'Spearfishing'],
				['1810',0,'Spearfishing'],
				['1820',0,'Spearfishing'],
				['1830',0,'Spearfishing'],
				['1840',0,'Spearfishing'],
				['1850',0,'Spearfishing'],
				['1860',0,'Spearfishing'],
				['1870',0,'Spearfishing'],
				['1880',0,'Spearfishing'],
				['1890',0,'Spearfishing'],*/
				/*['1900',0,'Spearfishing'],
				['1910',0,'Spearfishing'],
				['1920',0,'Spearfishing'],
				['1930',1,'Spearfishing'],
				['1940',5,'Spearfishing'],*/
	            ['1950',44,'Spearfishing'],['1960',59,'Spearfishing'],['1970',24,'Spearfishing'],['1980',44,'Spearfishing'],
	            ['1990',33,'Spearfishing'],['2000',57,'Spearfishing'],['2010',48,'Spearfishing'],
	           
	           /* ['1500',0,'Diving'],
				['1510',0,'Diving'],
				['1520',0,'Diving'],
				['1530',0,'Diving'],
				['1540',1,'Diving'],			
				['1550',0,'Diving'],
				['1560',0,'Diving'],
				['1570',0,'Diving'],
				['1580',0,'Diving'],
				['1590',0,'Diving'],			
				['1600',0,'Diving'],
				['1610',0,'Diving'],
				['1620',0,'Diving'],
				['1630',0,'Diving'],
				['1640',0,'Diving'],			
				['1650',0,'Diving'],
				['1660',0,'Diving'],
				['1670',0,'Diving'],
				['1680',0,'Diving'],
				['1690',0,'Diving'],			
				['1700',0,'Diving'],
				['1710',0,'Diving'],
				['1720',0,'Diving'],
				['1730',0,'Diving'],
				['1740',1,'Diving'],
				['1750',0,'Diving'],
				['1760',0,'Diving'],
				['1770',0,'Diving'],
				['1780',0,'Diving'],
				['1790',0,'Diving'],*/
			/*	['1800',0,'Diving'],
				['1810',0,'Diving'],
				['1820',0,'Diving'],
				['1830',0,'Diving'],
				['1840',0,'Diving'],
	            ['1850',0,'Diving'],
				['1860',0,'Diving'],
				['1870',2,'Diving'],
				['1880',5,'Diving'],
				['1890',10,'Diving'],*/
				/*['1900',4,'Diving'],
				['1910',6,'Diving'],
				['1920',17,'Diving'],
				['1930',17,'Diving'],
				['1940',3,'Diving'],*/
				['1950',17,'Diving'],['1960',35,'Diving'],['1970',22,'Diving'],['1980',27,'Diving'],
	    		['1990',37,'Diving'],['2000',69,'Diving'],['2010',66,'Diving'],
				
				/*['1500',0,'Bathing'],
				['1510',0,'Bathing'],
				['1520',0,'Bathing'],
				['1530',0,'Bathing'],
				['1540',0,'Bathing'],			
				['1550',0,'Bathing'],
				['1560',0,'Bathing'],
				['1570',0,'Bathing'],
				['1580',0,'Bathing'],
				['1590',0,'Bathing'],			
				['1600',0,'Bathing'],
				['1610',0,'Bathing'],
				['1620',0,'Bathing'],
				['1630',0,'Bathing'],
				['1640',0,'Bathing'],			
				['1650',0,'Bathing'],
				['1660',0,'Bathing'],
				['1670',0,'Bathing'],
				['1680',0,'Bathing'],
				['1690',0,'Bathing'],			
				['1700',2,'Bathing'],
				['1710',0,'Bathing'],
				['1720',0,'Bathing'],
				['1730',0,'Bathing'],
				['1740',0,'Bathing'],
				['1750',0,'Bathing'],
				['1760',1,'Bathing'],
				['1770',0,'Bathing'],
				['1780',0,'Bathing'],
				['1790',0,'Bathing'],*/
				/*['1800',0,'Bathing'],
				['1810',0,'Bathing'],
				['1820',1,'Bathing'],
				['1830',4,'Bathing'],
				['1840',3,'Bathing'],
			    ['1850',4,'Bathing'],
				['1860',10,'Bathing'],
				['1870',21,'Bathing'],
				['1880',13,'Bathing'],
				['1890',18,'Bathing'],*/
				/*['1900',21,'Bathing'],
				['1910',15,'Bathing'],
				['1920',11,'Bathing'],
				['1930',5,'Bathing'],
				['1940',8,'Bathing'],*/
	            ['1950',4,'Bathing'],['1960',9,'Bathing'],['1970',1,'Bathing'],['1980',0,'Bathing'],
	            ['1990',3,'Bathing'],['2000',1,'Bathing'],['2010',2,'Bathing']
	            /*data: [['1960',9,'Surfing'],[1970,5,'Surfing'],['1980',4,'Surfing'],
	            // ['2000/11/11',38,'Surfing'],['2000/11/12',22,'Surfing'],['2000/11/13',16,'Surfing'],
	            //['2000/11/14',7,'Surfing'],['2000/11/15',2,'Surfing'],['2000/11/16',17,'Surfing'],
	           // ['2000/11/17',33,'Surfing'],['2000/11/18',40,'Surfing'],['2000/11/19',32,'Surfing'],
	            //['2000/11/20',26,'Surfing'],['2000/11/21',35,'Surfing'],['2000/11/22',40,'Surfing'],
	            ['1990',8,'Surfing'],['2000',1,'Surfing'],['2010',8,'Surfing'],

	            ['1960',15,'Swimming'],[1970,18,'Swimming'],['1980',18,'Swimming'],
	            ['1990',16,'Swimming'],['2000',17,'Swimming'],['2010',15,'Swimming'],

	             ['1960',10,'Fishing'],[1970,7,'Fishing'],['1980',8,'Fishing'],
	            ['1990',12,'Fishing'],['2000',15,'Fishing'],['2010',10,'Fishing'],

	             ['1960',9,'Spearfishing'],[1970,6,'Spearfishing'],['1980',5,'Spearfishing'],
	            ['1990',7,'Spearfishing'],['2000',8,'Spearfishing'],['2010',10,'Spearfishing'],
	             ['1960',13,'Diving'],[1970,8,'Diving'],['1980',13,'Diving'],
	            ['1990',3,'Diving'],['2000',8,'Diving'],['2010',5,'Diving'],
	             ['1960',1,'Bathing'],[1970,1,'Bathing'],['1980',1,'Bathing'],
	            ['1990',1,'Bathing'],['2000',1,'Bathing'],['2010',1,'Bathing'],
	            */
	            // ['2000/11/26',16,'Surfing'],['2000/11/27',22,'Surfing'],['2000/11/28',10,'Surfing'],
	           // ['2010',35,'TY'],['2000/11/09',36,'TY'],['2000/11/10',37,'TY'],
	            //['2000/11/11',22,'TY'],['2000/11/12',24,'TY'],['2000/11/13',26,'TY'],
	            //['2000/11/14',34,'TY'],['2000/11/15',21,'TY'],['2000/11/16',18,'TY'],
	            //['2000/11/17',45,'TY'],['2000/11/18',32,'TY'],['2000/11/19',35,'TY'],
	           // ['2000/11/20',30,'TY'],['2000/11/21',28,'TY'],['2000/11/22',27,'TY'],
	            //['2000/11/23',26,'TY'],['2000/11/24',15,'TY'],['2000/11/25',30,'TY'],
	            //['2000/11/26',35,'TY'],['2000/11/27',42,'TY'],['2000/11/28',42,'TY'],
	            //['2000/11/08',21,'SS'],['2000/11/09',25,'SS'],['2000/11/10',27,'SS'],
	           //['2000/11/11',23,'SS'],['2000/11/12',24,'SS'],['2000/11/13',21,'SS'],
	           // ['2000/11/14',35,'SS'],['2000/11/15',39,'SS'],['2000/11/16',40,'SS'],
	           // ['2000/11/17',36,'SS'],['2000/11/18',33,'SS'],['2000/11/19',43,'SS'],
	           // ['2000/11/20',40,'SS'],['2000/11/21',34,'SS'],['2000/11/22',28,'SS'],
	            // ['2000/11/23',26,'SS'],['2000/11/24',37,'SS'],['2000/11/25',41,'SS'],
	            // ['2000/11/26',46,'SS'],['2000/11/27',47,'SS'],['2000/11/28',41,'SS'],
	            // ['2000/11/08',10,'QG'],['2000/11/09',15,'QG'],['2000/11/10',35,'QG'],
	            // ['2000/11/11',38,'QG'],['2000/11/12',22,'QG'],['2000/11/13',16,'QG'],
	           // ['2010',7,'QG'],['2000/11/15',2,'QG'],['2000/11/16',17,'QG'],
	           /* ['2000/11/17',33,'QG'],['2000/11/18',40,'QG'],['2000/11/19',32,'QG'],
	            ['2000/11/20',26,'QG'],['2000/11/21',35,'QG'],['2000/11/22',40,'QG'],
	            ['2000/11/23',32,'QG'],['2000/11/24',26,'QG'],['2000/11/25',22,'QG'],
	            ['2000/11/26',16,'QG'],['2000/11/27',22,'QG'],['2000/11/28',10,'QG'],
	            ['2000/11/08',10,'SY'],['2000/11/09',15,'SY'],['2000/11/10',35,'SY'],
	            ['2000/11/11',38,'SY'],['2000/11/12',22,'SY'],['2000/11/13',16,'SY'],
	            ['2000/11/14',7,'SY'],['2000/11/15',2,'SY'],['2000/11/16',17,'SY'],
	            ['2000/11/17',33,'SY'],['2000/11/18',40,'SY'],['2000/11/19',32,'SY'],
	            ['2000/11/20',26,'SY'],['2000/11/21',35,'SY'],['2000/11/22',4,'SY'],
	            ['2000/11/23',32,'SY'],['2000/11/24',26,'SY'],['2000/11/25',22,'SY'],
	            ['2000/11/26',16,'SY'],['2000/11/27',22,'SY'],['2000/11/28',10,'SY'],
	            ['2000/11/08',10,'DD'],['2000/11/09',15,'DD'],['2000/11/10',35,'DD'],
	            ['2000/11/11',38,'DD'],['2000/11/12',22,'DD'],['2000/11/13',16,'DD'],
	            ['2000/11/14',7,'DD'],['2000/11/15',2,'DD'],['2000/11/16',17,'DD'],
	            ['2000/11/17',33,'DD'],['2000/11/18',4,'DD'],['2000/11/19',32,'DD'],
	            ['2000/11/20',26,'DD'],['2000/11/21',35,'DD'],['2000/11/22',40,'DD'],
	            ['2000/11/23',32,'DD'],['2000/11/24',26,'DD'],['2000/11/25',22,'DD'],
	            ['2000/11/26',16,'DD'],['2000/11/27',22,'DD'],['2000/11/28',10,'DD']*/]
	        }
	    ]
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