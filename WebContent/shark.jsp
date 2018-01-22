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
							<tr><td class="tag" id="header1">
									<div id="main1" style="width:1000 ;height:500px;" align="left"></div></td></tr>
							<tr><td class="tag" id="header2">
							        <div id="main2" style="width:1000 ;height:800px;" align="left"></div></td></tr>	
							
		                </table>
	    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main1'));
        var dataAxis = ['white shark', 'tiger shark', 'bull shark', 'mako shark', 'hammerhead shark', 'small shark', 'zambesi shark', 'blacktip shark', 'nurse shark', 'blue shark', 'wobbegong shark', 'sand shark', 'raggedtooth shark', 'lemon shark', 'bronze whaler shark', 'dog shark', 'sandtiger shark', 'sevengill shark', 'angel shark', 'copper shark','carpet shark','dusky shark','reef shark','shovelnose shark','sandbar shark'];
        var data = [264, 106, 59, 24, 22, 23, 17, 49, 39, 60, 14, 10, 18, 21, 23, 3, 6, 11, 9, 3, 4, 5, 7, 30, 2, 6];
        var yMax = 270;
        var dataShadow = [];

        for (var i = 0; i < data.length; i++) {
            dataShadow.push(yMax);
        }

        option = {
            title: {
                text: '鲨鱼种类与伤人数目',
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
            xAxis: {
                data: dataAxis,
                axisLabel: {
                    inside: true,
                    textStyle: {
                    	//align : center,
                    	//verticalAlign: bottom,
                        color: '#f00'
                    }
                },
                axisTick: {
                    show: false
                },
                axisLine: {
                    show: false
                },
                z: 10
            },
            yAxis: {
                axisLine: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    textStyle: {
                        color: '#999'
                    }
                }
            },
            dataZoom: [
                {
                    type: 'inside'
                }
            ],
            series: [
                { // For shadow
                    type: 'bar',
                    itemStyle: {
                        normal: {color: 'rgba(0,0,0,0.05)'}
                    },
                    barGap:'-100%',
                    barCategoryGap:'40%',
                    data: dataShadow,
                    animation: false
                },
                {
                    type: 'bar',
                    itemStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#83bff6'},
                                    {offset: 0.5, color: '#188df0'},
                                    {offset: 1, color: '#188df0'}
                                ]
                            )
                        },
                        emphasis: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#2378f7'},
                                    {offset: 0.7, color: '#2378f7'},
                                    {offset: 1, color: '#83bff6'}
                                ]
                            )
                        }
                    },
                    data: data
                }
            ]
        };

        // Enable data zoom when user click bar.
        var zoomSize = 6;
        myChart.on('click', function (params) {
            console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
            myChart.dispatchAction({
                type: 'dataZoom',
                startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
            });
        });

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>     
<script type="text/javascript">
//基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main2'));
//app.title = '堆叠条形图';

option = {
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    legend: {
    //    data: ['直接访问', '邮件营销','联盟广告','视频广告','搜索引擎']
    data: ['全部人数','死亡人数']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis:  {
        type: 'value'
    },
    yAxis: {
        type: 'category',
       // data: ['周一','周二','周三','周四','周五','周六','周日']
        data: ['white shark', 'tiger shark', 'bull shark', 'mako shark', 'hammerhead shark', 'small shark', 'zambesi shark', 'blacktip shark', 'nurse shark', 'blue shark', 'wobbegong shark', 'sand shark', 'raggedtooth shark', 'lemon shark', 'bronze whaler shark', 'dog shark', 'sandtiger shark', 'sevengill shark', 'angel shark', 'copper shark','carpet shark','dusky shark','reef shark','shovelnose shark','sandbar shark']
    },
    series: [
         /*    
        {
            name: '直接访问',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [320, 302, 301, 334, 390, 330, 320]
        },
        {
            name: '邮件营销',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [120, 132, 101, 134, 90, 230, 210]
        },
        {
            name: '联盟广告',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [220, 182, 191, 234, 290, 330, 310]
        },*/
        {
            name: '全部人数',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            // data: [150, 212, 201, 154, 190, 330, 410]
            data:[201, 64, 44, 24, 21, 20, 14, 49, 39, 60, 14, 10, 17, 21, 23, 3, 6, 11, 9, 3, 4, 5, 6, 30, 2, 6]
        },
        {
            name: '死亡人数',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            //data: [820, 832, 901, 934, 1290, 1330, 1320]
            data:[63, 42, 15, 0, 1, 3, 3, 0, 16, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]
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