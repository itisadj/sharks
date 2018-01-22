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
	<tr><td class="name" style="border:0px; background:#153123 ;width:100%"><span style="font-family:黑体"><strong>we小组鲨鱼伤人事件信息可视化平台</strong></span> </td></tr>

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
							     <div id="main1" style="width: 1000;height:800px;"></div>  
							</td></tr>
		                </table>
    <script type="text/javascript">  
     var myChart = echarts.init(document.getElementById('main1'));  
        option = {  
        title: {  
        text: '鲨鱼伤人事件各国分布情况',
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
   /* tooltip: {  
        trigger: 'item',  
        formatter: function (params) {  
            var value = (params.value + '').split('.');  
            value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,')  
                    + '.' + value[1];  
            return params.seriesName + '<br/>' + params.name + ' : ' + value;  
        }  
    }, 
    legend:{
    	show: false
    },*/ 
    visualMap: {  
        min: 1,  
        max: 200,  
        text:['High','Low'],  
        left:['50%','80%'],
        realtime: false,  
        calculable: true,  
        color: ['orangered','yellow','lightskyblue']  
    },  
    series: [  
        {  
            name: 'World Distribution',  
            type: 'map',  
            mapType: 'world',  
            roam: true,  
            itemStyle:{  
                emphasis:{label:{show:true}}  
            },  
            data:[  
                /* 
                {name: 'Afghanistan', value: 28397.812},  
                {name: 'Angola', value: 19549.124},  
                {name: 'Albania', value: 3150.143},  
                {name: 'United Arab Emirates', value: 8441.537},  
                {name: 'Argentina', value: 40374.224},  
                {name: 'Armenia', value: 2963.496},  
                {name: 'French Southern and Antarctic Lands', value: 268.065},  
                {name: 'Australia', value: 22404.488},  
                {name: 'Austria', value: 8401.924},  
                {name: 'Azerbaijan', value: 9094.718},  
                {name: 'Burundi', value: 9232.753},  
                {name: 'Belgium', value: 10941.288},  
                {name: 'Benin', value: 9509.798},  
                {name: 'Burkina Faso', value: 15540.284},  
                {name: 'Bangladesh', value: 151125.475},  
                {name: 'Bulgaria', value: 7389.175},  
                {name: 'The Bahamas', value: 66402.316},  
                {name: 'Bosnia and Herzegovina', value: 3845.929},  
                {name: 'Belarus', value: 9491.07},  
                {name: 'Belize', value: 308.595},  
                {name: 'Bermuda', value: 64.951},  
                {name: 'Bolivia', value: 716.939},  
                {name: 'Brazil', value: 195210.154},  
                {name: 'Brunei', value: 27.223},  
                {name: 'Bhutan', value: 716.939},  
                {name: 'Botswana', value: 1969.341},  
                {name: 'Central African Republic', value: 4349.921},  
                {name: 'Canada', value: 3334126.24},  
                {name: 'Switzerland', value: 7830.534},  
                {name: 'Chile', value: 17150.76},  
                {name: 'China', value: 1359821.465},  
                {name: 'Ivory Coast', value: 60508.978},  
                {name: 'Cameroon', value: 20624.343},  
                {name: 'Democratic Republic of the Congo', value: 62191.161},  
                {name: 'Republic of the Congo', value: 3573.024},  
                {name: 'Colombia', value: 46444.798},  
                {name: 'Costa Rica', value: 4669.685},  
                {name: 'Cuba', value: 11281.768},  
                {name: 'Northern Cyprus', value: 1.468},  
                {name: 'Cyprus', value: 1103.685},  
                {name: 'Czech Republic', value: 10553.701},  
                {name: 'Germany', value: 83017.404},  
                {name: 'Djibouti', value: 834.036},  
                {name: 'Denmark', value: 5550.959},  
                {name: 'Dominican Republic', value: 10016.797},  
                {name: 'Algeria', value: 37062.82},  
                {name: 'Ecuador', value: 15001.072},  
                {name: 'Egypt', value: 78075.705},  
                {name: 'Eritrea', value: 5741.159},  
                {name: 'Spain', value: 46182.038},  
                {name: 'Estonia', value: 1298.533},  
                {name: 'Ethiopia', value: 87095.281},  
                {name: 'Finland', value: 5367.693},  
                {name: 'Fiji', value: 860.559},  
                {name: 'Falkland Islands', value: 49.581},  
                {name: 'France', value: 63230.866},  
                {name: 'Gabon', value: 1556.222},  
                {name: 'United Kingdom', value: 62066.35},  
                {name: 'Georgia', value: 4388.674},  
                {name: 'Ghana', value: 24262.901},  
                {name: 'Guinea', value: 10876.033},  
                {name: 'Gambia', value: 1680.64},  
                {name: 'Guinea Bissau', value: 10876.033},  
                {name: 'Equatorial Guinea', value: 696.167},  
                {name: 'Greece', value: 11109.999},  
                {name: 'Greenland', value: 56.546},  
                {name: 'Guatemala', value: 14341.576},  
                {name: 'French Guiana', value: 231.169},  
                {name: 'Guyana', value: 786.126},  
                {name: 'Honduras', value: 7621.204},  
                {name: 'Croatia', value: 4338.027},  
                {name: 'Haiti', value: 9896.4},  
                {name: 'Hungary', value: 10014.633},  
                {name: 'Indonesia', value: 240676.485},  
                {name: 'India', value: 1205624.648},  
                {name: 'Ireland', value: 4467.561},  
                {name: 'Iran', value: 240676.485},  
                {name: 'Iraq', value: 30962.38},  
                {name: 'Iceland', value: 318.042},  
                {name: 'Israel', value: 7420.368},  
                {name: 'Italy', value: 60508.978},  
                {name: 'Jamaica', value: 2741.485},  
                {name: 'Jordan', value: 6454.554},  
                {name: 'Japan', value: 127352.833},  
                {name: 'Kazakhstan', value: 15921.127},  
                {name: 'Kenya', value: 40909.194},  
                {name: 'Kyrgyzstan', value: 5334.223},  
                {name: 'Cambodia', value: 14364.931},  
                {name: 'South Korea', value: 51452.352},  
                {name: 'Kosovo', value: 97.743},  
                {name: 'Kuwait', value: 2991.58},  
                {name: 'Laos', value: 6395.713},  
                {name: 'Lebanon', value: 4341.092},  
                {name: 'Liberia', value: 3957.99},  
                {name: 'Libya', value: 6040.612},  
                {name: 'Sri Lanka', value: 20758.779},  
                {name: 'Lesotho', value: 2008.921},  
                {name: 'Lithuania', value: 3068.457},  
                {name: 'Luxembourg', value: 507.885},  
                {name: 'Latvia', value: 2090.519},  
                {name: 'Morocco', value: 31642.36},  
                {name: 'Moldova', value: 103.619},  
                {name: 'Madagascar', value: 21079.532},  
                {name: 'Mexico', value: 117886.404},  
                {name: 'Macedonia', value: 507.885},  
                {name: 'Mali', value: 13985.961},  
                {name: 'Myanmar', value: 51931.231},  
                {name: 'Montenegro', value: 620.078},  
                {name: 'Mongolia', value: 2712.738},  
                {name: 'Mozambique', value: 23967.265},  
                {name: 'Mauritania', value: 3609.42},  
                {name: 'Malawi', value: 15013.694},  
                {name: 'Malaysia', value: 28275.835},  
                {name: 'Namibia', value: 2178.967},  
                {name: 'New Caledonia', value: 246.379},  
                {name: 'Niger', value: 15893.746},  
                {name: 'Nigeria', value: 159707.78},  
                {name: 'Nicaragua', value: 5822.209},  
                {name: 'Netherlands', value: 16615.243},  
                {name: 'Norway', value: 4891.251},  
                {name: 'Nepal', value: 26846.016},  
                {name: 'New Zealand', value: 4368.136},  
                {name: 'Oman', value: 2802.768},  
                {name: 'Pakistan', value: 173149.306},  
                {name: 'Panama', value: 3678.128},  
                {name: 'Peru', value: 29262.83},  
                {name: 'Philippines', value: 93444.322},  
                {name: 'Papua New Guinea', value: 6858.945},  
                {name: 'Poland', value: 38198.754},  
                {name: 'Puerto Rico', value: 3709.671},  
                {name: 'North Korea', value: 1.468},  
                {name: 'Portugal', value: 10589.792},  
                {name: 'Paraguay', value: 6459.721},  
                {name: 'Qatar', value: 1749.713},  
                {name: 'Romania', value: 21861.476},  
                {name: 'Russia', value: 21861.476},  
                {name: 'Rwanda', value: 10836.732},  
                {name: 'Western Sahara', value: 514.648},  
                {name: 'Saudi Arabia', value: 27258.387},  
                {name: 'Sudan', value: 35652.002},  
                {name: 'South Sudan', value: 9940.929},  
                {name: 'Senegal', value: 12950.564},  
                {name: 'Solomon Islands', value: 526.447},  
                {name: 'Sierra Leone', value: 5751.976},  
                {name: 'El Salvador', value: 6218.195},  
                {name: 'Somaliland', value: 9636.173},  
                {name: 'Somalia', value: 9636.173},  
                {name: 'Republic of Serbia', value: 3573.024},  
                {name: 'Suriname', value: 524.96},  
                {name: 'Slovakia', value: 5433.437},  
                {name: 'Slovenia', value: 2054.232},  
                {name: 'Sweden', value: 9382.297},  
                {name: 'Swaziland', value: 1193.148},  
                {name: 'Syria', value: 7830.534},  
                {name: 'Chad', value: 11720.781},  
                {name: 'Togo', value: 6306.014},  
                {name: 'Thailand', value: 66402.316},  
                {name: 'Tajikistan', value: 7627.326},  
                {name: 'Turkmenistan', value: 5041.995},  
                {name: 'East Timor', value: 10016.797},  
                {name: 'Trinidad and Tobago', value: 1328.095},  
                {name: 'Tunisia', value: 10631.83},  
                {name: 'Turkey', value: 72137.546},  
                {name: 'United Republic of Tanzania', value: 44973.33},  
                {name: 'Uganda', value: 33987.213},  
                {name: 'Ukraine', value: 46050.22},  
                {name: 'Uruguay', value: 3371.982},  
                {name: 'United States of America', value: 1359821.465},  
                {name: 'Uzbekistan', value: 27769.27},  
                {name: 'Venezuela', value: 236.299},  
                {name: 'Vietnam', value: 89047.397},  
                {name: 'Vanuatu', value: 236.299},  
                {name: 'West Bank', value: 13.565},  
                {name: 'Yemen', value: 22763.008},  
                {name: 'South Africa', value: 51452.352},  
                {name: 'Zambia', value: 13216.985},  
                {name: 'Zimbabwe', value: 13076.978}  
                */
                {name:'Saint Helena', value:1},
                {name:'Guatemala', value:1},
                {name:'Slovenia', value:1},
                {name:'Syria', value:1},
                {name:'Netherlands', value:1},
                {name:'Falkland Islands', value:1},
                {name:'Sweden', value:1},
                {name:'Iceland', value:1},
                {name:'Gabon', value:1},
                {name:'Cyprus', value:1},
                {name:'Cameroon', value:1},
                {name:'Philippines', value:1},
                {name:'Guyana', value:1},
                {name:'U.S. Virgin Is.', value:1},
                {name:'Djibouti', value:1},
                {name:'Palestine', value:1},
                //{name:'United Arab Emirates', value:1},
                {name:'Algeria', value:1},
                {name:'Greenland',value:1},
                {name:'Paraguay', value:1},
                {name:'ANTIGUA', value:1},
                {name:'Bangladesh', value:1},
                {name:'Argentina', value:1},
                {name:'Ireland', value:1},
                {name:'OCEAN', value:1},
                {name:'Angola', value:1},
                {name:'Ghana', value:1},
                {name:'Kuwait', value:1},
                {name:'Georgia', value:1},
                {name:'Puerto Rico', value:1},
                {name:'United Arab Emirates', value:2},
                {name:'Namibia', value:2},
                {name:'Norway', value:2},
                {name:'CAYMAN IS.', value:3},
                {name:'Trinidad and Tobago', value:3},
                {name:'Montenegro', value:3},
                {name:'CAPE VERDE', value:3},
                {name:'AMERICAN SAMOA', value:3},
                {name:'Tunisia', value:3},
                {name:'Liberia', value:3},
                {name:'Guinea', value:3},
                {name:'Honduras', value:3},
                {name:'Lebanon', value:3},
                {name:'Haiti', value:3},
                {name:'TONGA', value:3},
                {name:'Belize', value:3},
                {name:'Uruguay', value:3},
                {name:'MICRONESIA', value:4},
                {name:'Nigeria', value:4},
                {name:'GRENADA', value:4},
                {name:'Malaysia', value:4},
                {name:'Myanmar', value:4},
                {name:'GUAM', value:4},
                {name:'Sudan', value:4},
                {name:'El Salvador', value:4},
                {name:'Russia', value:4},
                {name:'Libya', value:5},
                {name:'BARBADOS', value:5},
                {name:'Saudi Arabia', value:5},
                {name:'MALTA', value:5},
                {name:'PALAU', value:5},
                {name:'TURKS and CAICOS IS.', value:5},
                {name:'KIRIBATI', value:6},
                {name:'Somalia', value:6},
                {name:'SINGAPORE', value:6},
                {name:'Thailand', value:6},
                {name:'Madagascar', value:7},
                {name:'Nicaragua', value:7},
                {name:'Israel', value:7},
                {name:'Dominican Rep.', value:7},
                {name:'SAMOA', value:7},
                {name:'MAURITIUS', value:7},
                {name:'Indian Ocean', value:7},
                {name:'Caribbean Sea', value:8},
                {name:'United Republic of Tanzania', value:8},
                {name:'Chile', value:8},
                {name:'North Korea', value:9},
                {name:'South Korea', value:9},
                {name:'Seychelles', value:8},
                {name:'Ecuador', value:8},
                {name:'Portugal', value:9},
                {name:'Sierra Leone', value:9},
                {name:'Colombia', value:9},
                {name:'Yemen', value:9},
                {name:'Canada', value:10},
                {name:'Kenya', value:10},
                {name:'New Guinea', value:10},
                {name:'Venezuela', value:11},
                {name:'Senegal', value:11},
                {name:'Costa Rica', value:12},
                {name:'Iraq', value:12},
                {name:'Turkey', value:12},
                {name:'Sri Lanka', value:13},
                {name:'Vanuatu', value:14},
                {name:'Vietnam', value:14},
                {name:'Tonga', value:15},
                {name:'Bermuda', value:16},
                {name:'United Kingdom', value:19},
                {name:'Indonesia', value:20},
                {name:'French Guiana', value:22},
                //{name:'Fr. Polynesia', value:22},
                {name:'Jamaica', value:23},
                {name:'Greece', value:25},
                {name:'Iran', value:30},
                {name:'Solomon Islands', value:29},
                {name:'Panama', value:32},
                {name:'Croatia', value:35},
                {name:'India', value:37},
                {name:'Japan', value:38},
                {name:'Egypt', value:39},
                {name:'China', value:40},
                {name:'Spain', value:40},
                {name:'Cuba', value:42},
                {name:'Mozambique', value:44}, 
                {name:'New Caledonia', value:51},
                {name:'Philippines', value:59},
                {name:'Fiji', value:65},
                {name:'France', value:70},
                {name:'Italy', value:72},
                {name:'Mexico', value:82},
                {name:'The Bahamas', value:98},
                {name:'Brazil', value:102},
                {name:'New Zealand', value:125},
                {name:'Papua New Guinea', value:133},
                {name:'South Africa', value:565},
                {name:'Australia', value:1279},
                {name:'United States', value:2116},
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