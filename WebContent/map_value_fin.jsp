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

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="outer" style="width:100%">
	<tr><td class="name" style="border:0px; background:#153123;width:100%"><span style="font-family:黑体"><strong>we小组鲨鱼伤人事件信息可视化平台</strong></span> </td></tr>
	<!-- <tr><td>&nbsp;</td></tr> -->
	<tr>
		<td valign="top">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr><div class="inner_copy"></div>
					<td valign="top" id="left">
						<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
							<!-- <tr><td height="3"></td></tr> -->
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
var data = [
{name:'  Banaadir Region                                                ',value:4 },
{name:'  Sinai Peninsula                                                ',value:4 },
{name:'  Tuscany                                                        ',value:4 },
{name:'  22?N, 88?E                                                     ',value:4 },
{name:'  Zadar County                                                   ',value:4 },
{name:'  Saint-Denis                                                    ',value:4 },
{name:'  Sardinia                                                       ',value:4 },
{name:'  Guerro                                                         ',value:4 },
{name:'  Primorje-Gorski Kotar County                                   ',value:4 },
{name:'  Saint-Gilles                                                   ',value:4 },
{name:'  Vanua Levu                                                     ',value:4 },
{name:'  Liguria                                                        ',value:4 },
{name:'  Eleuthera                                                      ',value:4 },
{name:'  New Ireland Province, Bismarck Archipelago                     ',value:4 },
{name:'  New Territories                                                ',value:4 },
{name:'  Vita Levu                                                      ',value:4 },
{name:'  Cook Islands                                                   ',value:4 },
{name:'  Catalonia                                                      ',value:4 },
{name:'  Taveuni                                                        ',value:5 },
{name:'  Exuma Islands                                                  ',value:5 },
{name:'  Madang                                                         ',value:5 },
{name:'  Limpopo River                                                  ',value:5 },
{name:'  Saint-Paul                                                     ',value:5 },
{name:'  Maranho                                                       ',value:5 },
{name:'  Vavau                                                         ',value:5 },
{name:'  Bali                                                           ',value:5 },
{name:'  Mississippi                                                    ',value:5 },
{name:'  Western Province                                               ',value:5 },
{name:'  Tamaulipas                                                     ',value:5 },
{name:'  US Virgin Islands                                              ',value:5 },
{name:'  Guantanamo Province                                            ',value:6 },
{name:'  Connecticut                                                    ',value:6 },
{name:'  Bimini Islands                                                 ',value:6 },
{name:'  Inhambane Province                                             ',value:6 },
{name:'  Tuamotus                                                       ',value:6 },
{name:'  Ehime Prefecture                                               ',value:6 },
{name:'  Shatt-al-Arab River                                            ',value:6 },
{name:'  Coast Province                                                 ',value:6 },
{name:'  Hamilton                                                       ',value:6 },
{name:'  Galapagos Islands                                              ',value:6 },
{name:'  Loyalty Islands                                                ',value:6 },
{name:'  Cap Vert Peninsula                                             ',value:6 },
{name:'  South Sinai Peninsula                                          ',value:7 },
{name:'  Maryland                                                       ',value:7 },
{name:'  Mirs Bay                                                       ',value:7 },
{name:'  Aden                                                           ',value:7 },
{name:'  Andros Islands                                                 ',value:7 },
{name:'  Canary Islands                                                 ',value:7 },
{name:'  Delaware                                                       ',value:7 },
{name:'  Tamil Nadu                                                     ',value:7 },
{name:'  Western Area                                                   ',value:7 },
{name:'  New Providence Island                                          ',value:7 },
{name:'  Sicily                                                         ',value:7 },
{name:'  Karun River                                                    ',value:7 },
{name:'  West New Britain Province                                      ',value:7 },
{name:'  Caribbean Sea                                                  ',value:7 },
{name:'  Rhode Island                                                   ',value:7 },
{name:'  Morobe Province                                                ',value:8 },
{name:'  Binh Dinh Province                                             ',value:8 },
{name:'  Milne Bay Province                                             ',value:8 },
{name:'  New Britain                                                    ',value:8 },
{name:'  Kingston Parish                                                ',value:8 },
{name:'  Admiralty Islands, Manus Province                              ',value:8 },
{name:'  West Bengal                                                    ',value:8 },
{name:'HongKong',value:1},
{name:'Viti Levu Island',value:8 },
{name:'Maputo Province',value:8 },
{name:'Primorje-Gorski Kotar County',value:9 },
{name:'Society Islands',value:9 },
{name:'Bougainville (North Solomons)',value:9 },
{name:'Red Sea',value:9 },
{name:'Basrah',value:9 },
{name:'Eastern Province',value:9 },
{name:'Baja California',value:10 },
{name:'Grand Bahama Island',value:10 },
{name:'Louisiana',value:11 },
{name:'Malampa Province',value:11 },
{name:'Rio de Janeiro',value:11 },
{name:'Mediterranean Sea',value:11 },
{name:'Tyrrhenian Sea',value:11 },
{name:'Massachusetts',value:11 },
{name:'Luzon Island',value:11 },
{name:'North Province',value:12 },
{name:'Adriatic Sea',value:12 },
{name:'Quintana Roo',value:12 },
{name:'Khuzestan Province',value:13 },
{name:'Guerrero',value:13 },
{name:'Georgia',value:13 },
{name:'Alabama',value:14 },
{name:'Madang Province',value:15 },
{name:'New Ireland Province',value:15 },
{name:'Gaza',value:16 },
{name:'Veracruz',value:16 },
{name:'Puerto Rico',value:16 },
{name:'Havana Province',value: 18 },
{name:'Virginia',value: 19 },
{name:'Abaco Islands',value: 22 },
{name:'Northern Territory',value: 23 },
{name:'Oregon',value: 28 },
{name:'New York',value: 30 },
{name:'South Island',value: 39 },
{name:'Tasmania',value: 41 },
{name:'New Jersey',value:  49 },
{name:'North Island',value: 65 },
{name:'Pernambuco',value :70 },
{name:'Texas',value: 71 },
{name:'Torres Strait',value: 72 },
{name:'Victoria',value: 83 },
{name:'North Carolina',value:102 },
{name:'South Australia',value:103 },
{name:'South Carolina',value:146 },
{name:'Eastern Cape Province',value:156 },
{name:'Western Australia',value:172 },
{name:'Western Cape Province',value:188 },
{name:'KwaZulu-Natal',value:210 },
{name:'California',value:276 },
{name:'Hawaii',value:282 },
{name:'Queensland',value:301 },
{name:'New South Wales',value:468 },
{name:'Florida',value:991 },
        ];
        
        
var data_top = [
{name:'New York',value: 30 },
{name:'South Island',value: 39 },
{name:'Tasmania',value: 41 },
{name:'New Jersey',value:  49 },
{name:'North Island',value: 65 },
{name:'Pernambuco',value :70 },
{name:'Texas',value: 71 },
{name:'Torres Strait',value: 72 },
{name:'Victoria',value: 83 },
{name:'North Carolina',value:102 },
{name:'South Australia',value:103 },
{name:'South Carolina',value:146 },
{name:'Eastern Cape Province',value:156 },
{name:'Western Australia',value:172 },
{name:'Western Cape Province',value:188 },
{name:'KwaZulu-Natal',value:210 },
{name:'California',value:276 },
{name:'Hawaii',value:282 },
{name:'Queensland',value:301 },
{name:'New South Wales',value:468 },
{name:'Florida',value:991 },
        ];

        var geoCoordMap = {
        		/*{name:'Viti Levu Island',value:8 },
        		{name:'Maputo Province',value:8 },
        		{name:'Primorje-Gorski Kotar County',value:9 },
        		{name:'Society Islands',value:9 },
        		{name:'Bougainville (North Solomons)',value:9 },
        		{name:'Red Sea',value:9 },
        		{name:'Basrah',value:9 },
        		{name:'Eastern Province',value:9 },
        		{name:'Baja California',value:10 },
        		{name:'Grand Bahama Island',value:10 },
        		{name:'Louisiana',value:11 },
        		{name:'Malampa Province',value:11 },
        		{name:'Rio de Janeiro',value:11 },
        		{name:'Mediterranean Sea',value:11 },
        		{name:'Tyrrhenian Sea',value:11 },
        		{name:'Massachusetts',value:11 },
        		{name:'Luzon Island',value:11 },
        		{name:'North Province',value:12 },
        		{name:'Adriatic Sea',value:12 },
        		{name:'Quintana Roo',value:12 },
        		{name:'Khuzestan Province',value:13 },
        		{name:'Guerrero',value:13 },
        		{name:'Georgia',value:13 },
        		{name:'Alabama',value:14 },
        		{name:'Madang Province',value:15 },
        		{name:'New Ireland Province',value:15 },
        		{name:'Gaza',value:16 },
        		{name:'Veracruz',value:16 },
        		{name:'Puerto Rico',value:16 },
        		{name:'Havana Province',value: 18 },
        		{name:'Virginia',value: 19 },
        		{name:'Abaco Islands',value: 22 },
        		{name:'Northern Territory',value: 23 },
        		{name:'Oregon',value: 28 },
        		{name:'New York',value: 30 },*/
        		"South Island" : [169.8926333000,-45.1526707000],
        		"Tasmania" : [145.9706647000,-41.4545196000],
        		"New Jersey" : [-74.4056612000,40.0583238000],
        		"North Island" : [175.6023643000,-39.2378365000],
        		"Pernambuco" : [-36.9541070000,-8.8137173000],
        		"Texas" : [-99.9018131000,31.9685988000],
        		"Torres Strait" : [141.9368545000,-10.2199025000],
        		"Victoria" : [-123.3656444000,48.4284207000],
        		"North Carolina" : [-79.0192997000,35.7595731000],
        		"South Australia" : [136.2091547000,-30.0002315000],
        		"South Carolina" : [-81.1637245000,33.8360810000],
        		"Eastern Cape Province" : [26.4193890000,-32.2968402000],
        		"Western Australia" : [121.6283098000,-27.6728168000],
        		"Western Cape Province" : [21.8568586000,-33.2277918000],
        		"KwaZulu-Natal" : [30.8958242000,-28.5305539000],
        		"California" : [-119.4179324000,36.7782610000],
        		"Hawaii" : [-155.5827818000,19.8967662000],
        		"Queensland" : [142.7027956000,-20.9175738000],
        		"New South Wales" : [146.9210990000,-31.2532183000],
        		"New York" : [-74.0059731,40.7143528],
        		//////////////////////////////////////////////////////////////////////////////////////////////
        		"OntheKowloonpenisula,southofSaiKung":[114.2707867000,22.3836890000],
        		"ElquiProvince":[-70.8119953000,-29.8294614000],
        		"MoroGulf":[123.4383530000,6.8013737000],
        		"BayofBengal":[87.5395855000,13.5316650000],
        		"Shatt-el-ArabRiver":[47.5965946000,30.8511206000],
        		"CaviteProvince,Luzon":[120.8785658000,14.2456329000],
        		"Chungnam":[126.8000000000,36.5184000000],
        		"SanBlascoast":[-117.6490576000,33.6293926000],
        		"Norfolk":[-76.2858726000,36.8507689000],
        		"TrelawneyProvince":[2.1949903000,41.3853304000],
        		"AulongIsland":[134.2940786000,7.2772692000],
        		"BetweenNoumea&Sydney":[151.2091480000,-33.8766130000],
        		"RiauProvince":[101.7068294000,0.2933469000],
        		"CienfuegosProvince":[-80.4437781000,22.1599753000],
        		"Lukovo":[14.8938172000,44.8557183000],
        		"Dubai":[55.2707828000,25.2048493000],
        		"NorthPalawan":[118.7383615000,9.8349493000],
        		"Kwajalein":[167.7333330000,8.7166670000],
        		"HolquinProvince":[-75.8069082000,20.7837893000],
        		"OffSamarIslandintheGulfofLeyte":[125.0388164000,12.2445533000],
        		"Lagos":[3.3792057000,6.5243793000],
        		"NorthernDistrict":[35.3027226000,32.8972246000],
        		"NorthernBahamas":[-78.6945922000,26.5255373000],
        		"Madeira":[-16.9594723000,32.7607074000],
        		"ClearwaterBay":[114.2982151000,22.2641097000],
        		"BasrahCity":[47.7834888000,30.5081033000],
        		"Muala":[38.1275600000,-14.2822800000],
        		"CookStrait":[174.3121264000,41.3409910000],
        		"SantaIsabelProvince":[-66.3897939000,18.0046774000],
        		"SalernoProvince":[15.2194808000,40.4287832000],
        		"ValparisoProvince":[-71.6203607000,-33.0456463000],
        		"2to3milesoffTaboguillaIsland,PacificOcean":[-79.5167829000,8.8064281000],
        		"NorthSumatra":[99.5450974000,2.1153547000],
        		"CapeHaitien":[-72.2067681000,19.7370362000],
        		"CaribbeanCoast":[113.9488140000,22.2922883000],
        		"EasternCatalona":[-120.2886790000,47.4488199000],
        		"GrandBaie":[57.5816352000,-20.0089204000],
        		"300mileseastofSt.Thomas(VirginIslands)":[-64.8940946000,18.3380965000],
        		"SouthernThailand":[99.5450974000,8.7158321000],
        		"Sfax":[10.7600196000,34.7398220000],
        		"WesternLuzonIsland":[121.2626366000,16.5662318000],
        		"NorthernProvince":[80.2767327000,8.8855027000],
        		"MuhafazatHadramawt":[49.3653149000,16.9304135000],
        		"Illinois":[-89.3985283000,40.6331249000],
        		"Istanbul":[28.9783589000,41.0082376000],
        		"Johor":[103.7618154000,1.4853682000],
        		"BayelsaState":[5.8987139000,4.8677767000],
        		"NorthwestofVitiLevu":[178.0118473000,-17.8483187000],
        		"EronogoRegion":[15.4068079000,-22.2565682000],
        		"Thessaly":[22.0476370000,39.6102887000],
        		"IslandofSt.Thomas":[-64.8940946000,18.3380965000],
        		"LEtang-Sale":[55.3696628000,-21.2498393000],
        		"InConvoyOB274":[77.5881580000,12.9557390000],
        		"AlicanteProvince":[-0.4907945000,38.3460627000],
        		"Pennsylvania":[-77.1945247000,41.2033216000],
        		"BikiniAtoll":[165.3768099000,11.6065142000],
        		"KowloonPeninsula":[114.1833330000,22.3166670000],
        		"Phuket":[98.3380884000,7.9519331000],
        		"Queaon":[121.0437003000,14.6760413000],
        		"CarolineIslands":[150.1860176000,5.5530091000],
        		"Dar-es-Salaam":[39.2083284000,-6.7923540000],
        		"OffGreenIsland":[-71.7798956000,42.2178224000],
        		"NewBrunswick":[-66.4619164000,46.5653163000],
        		"Trieste":[13.7768182000,45.6495264000],
        		"Southwestcoast":[-3.5072591000,50.5280634000],
        		"BetweenComores&Madagascar":[],
        		"IslaProvedencia":[-81.3729372000,13.3387613000],
        		"WesternCarolineIslands(NorthPacificOcean)":[-124.5085230000,-8.7831950000],
        		"Eastcoast":[85.7043750000,20.1535472000],
        		"Taranto":[17.2470303000,40.4643606000],
        		"ViscayanSea":[123.5280072000,11.4328240000],
        		"Granada":[-3.5985571000,37.1773363000],
        		"Cycladesarchipelago":[25.0687356000,37.1548247000],
        		"Leyte":[124.8811195000,10.8624536000],
        		"WallisandFutuna":[-178.1165000000,-14.2938000000],
        		"NorthDevon":[-3.8918711000,51.0729874000],
        		"WestofCeylon(SriLanka)":[80.0087746000,6.9016086000],
        		"GolfodeVenezia":[12.8811712000,38.0206668000],
        		"SouthAtlanticOcean":[-15.9960940000,-33.7243400000],
        		"ShefaProvince":[168.3387066000,-17.6523412000],
        		"LosRoquesIslands":[-66.7665377000,11.8566815000],
        		"Cookislans":[-159.7776710000,-21.2367360000],
        		"IslesdelRosario":[-75.7633060000,10.1994901000],
        		"SantaCatarinaState":[-50.2188556000,-27.2423392000],
        		"MagdalenaDepartment":[-74.4056612000,10.4113014000],
        		"SouthIsland?":[169.8926333000,-45.1526707000],
        		"Coquimbo":[-71.3389183000,-29.9590009000],
        		"SouthernDistrict":[114.1974398000,22.2432164000],
        		"SanmaProvince":[166.9182097000,-15.4840017000],
        		"AbauSubdistrict,CentralProvince":[50.5395197000,26.1862229000],
        		"AnconaProvince":[13.2663479000,43.5493245000],
        		"GenoaProvince":[8.9462560000,44.4056499000],
        		"PortShelter":[114.2829720000,22.3436515000],
        		"SantiagoIsland":[-23.6204644000,15.0852627000],
        		"Alagoas":[-36.7819505000,-9.5713058000],
        		"Istria":[13.8901858000,45.2745018000],
        		"HeadoftheGulf":[-74.1782314000,40.6183314000],
        		"NorthRegion":[-58.3716902000,-2.0953182000],
        		"PacificOcean":[-124.5085230000,-8.7831950000],
        		"5aint-Denis":[2.3574430000,48.9361810000],
        		"St.Catherine":[114.1781230000,22.3350040000],
        		"Cyclades":[25.0687356000,37.1548247000],
        		"Kerala":[76.2710833000,10.8505159000],
        		"GreenBay":[-88.0198260000,44.5191590000],
        		"AichiPrefecture":[136.9065647000,35.1801883000],
        		"Argyllshire":[-5.4326426000,56.0383475000],
        		"Kedah":[100.3684595000,6.1183964000],
        		"CorregidorIsland":[120.5804350000,14.3851391000],
        		"Manfredonia":[15.9165105000,41.6307347000],
        		"CargadosCarajosShoals(St.Brandon)":[59.5512748000,-16.7984814000],
        		"Westcoast":[-149.0729714000,62.4113634000],
        		"MountLebanon":[36.1166670000,34.3000000000],
        		"CentralPhilippines":[121.0040573000,14.5912301000],
        		"Halifax":[-63.5753196000,44.6488625000],
        		"ConakryRegion":[-13.5784012000,9.6411855000],
        		"SouthernJapan":[139.7003028000,35.6863588000],
        		"Galicia":[-8.1338558000,42.5750554000],
        		"TabukProvince":[36.9541070000,27.8201000000],
        		"SurigaodelNorte":[125.6969984000,9.5148280000],
        		"WakeIsland":[120.3544900000,36.0871220000],
        		"WestAfrica":[-2.4604145000,13.5316650000],
        		"MafiaIsland":[39.7549511000,-7.8698950000],
        		"NorfolkIsland":[167.9547120000,-29.0408350000],
        		"JejuProvince":[126.4983023000,33.4890113000],
        		"Tamilnadu":[78.6568942000,11.1271225000],
        		"Ryukyu":[128.0000000000,26.5000000000],
        		"PagasitikosGulf":[22.9535409000,39.2292403000],
        		"BayofBiscay":[-3.1632157000,45.5570384000],
        		"LomaivitiIslandGroup":[179.0910000000,-17.7090000000],
        		"NewBritain,BismarckArchipelago":[150.0000000000,-5.0000000000],
        		"SouthSinai,GulfofAqaba":[34.7298765000,28.6929261000],
        		"PanamaBay(PacificOcean)":[-79.1548533000,8.8110496000],
        		"Antibes":[7.1251020000,43.5804180000],
        		"Quezon":[121.0437003000,14.6760413000],
        		"PrimorskyKrai":[135.0000000000,45.0525641000],
        		"RoncadorBank":[-80.0666670000,13.5666670000],
        		"BaRia-VungTauProvince":[107.2429976000,10.5417397000],
        		"SimpsonBay":[-63.1163276000,18.0385649000],
        		"LaucalaIsland":[-179.6863219000,-16.7527144000],
        		"MuglaProvince":[28.4863963000,37.1835819000],
        		"EasternCapeProvince":[26.4193890000,-32.2968402000],
        		"PANAMA":[-80.7821270000,8.5379810000],
        		"Batangasprovince":[121.1312012000,13.9450336000],
        		"TaipeiHsien":[121.5051619000,25.1383709000],
        		"Alaska":[-149.4936733000,64.2008413000],
        		"NeartheFijiIslands":[178.0000000000,-18.0000000000],
        		"VitiLevugroup":[177.9664576000,-17.7556862000],
        		"Nice&Marseilles":[5.3702084000,43.2400169000],
        		"TafeaProvince":[169.0645056000,-18.7237827000],
        		"SocotraIslands":[53.8237385000,12.4634205000],
        		"LaLibertad":[-78.4751945000,-8.1435933000],
        		"TokyoPrefecture":[139.7534490000,35.6662420000],
        		"Galica":[24.7313165000,49.1237705000],
        		"Moorea":[-149.8295234000,-17.5388435000],
        		"PuntarenasProvince":[-83.3361880000,9.2169531000],
        		"CamiguinIsland":[124.7298765000,9.1732164000],
        		"HongKong":[113.9749150000,22.2275970000],
        		"GulfofSuez":[32.9006200000,28.9793120000],
        		"AntofagastaProvince":[-70.4000000000,-23.6500000000],
        		"MalaitaProvince":[160.9071236000,-8.9446168000],
        		"IsleofMan":[-4.5480560000,54.2361070000],
        		"WakayaIsland":[179.0012007000,-17.6160613000],
        		"AltagraciaProvince":[-68.6201072000,18.5850236000],
        		"Brittany":[-2.9326435000,48.2020471000],
        		"Masbate":[123.5588558000,12.3060239000],
        		"PearlIslands":[-78.9625714000,8.4318812000],
        		"Shat-Al-ArabRiver":[47.5965946000,30.8511206000],
        		"NorthCarolina":[-79.0192997000,35.7595731000],
        		"Rodrigues":[63.4272185000,-19.7026025000],
        		"Paraiba":[-36.7819505000,-7.2399609000],
        		"SanCarlos":[-122.2605222000,37.5071591000],
        		"EstuaireProvince":[10.0807298000,0.4432864000],
        		"Bwagaoia":[152.8485247000,-10.6784069000],
        		"KochiPrefecture":[133.5310786000,33.5597062000],
        		"IlleginniAtoll":[167.4724765000,9.0864456000],
        		"RioSanJuan":[-84.7733325000,11.4781610000],
        		"PetertheGreatBay,Khasan,PrimorskyKrai(FarEast)":[131.9954946000,42.6851457000],
        		"WesternDistrict":[114.1498806000,22.2730219000],
        		"MoalaIsland":[179.8972820000,-18.5819100000],
        		"EastWall":[-6.2341133000,53.3543216000],
        		"Teramo":[13.6986639000,42.6611431000],
        		"Sainte-Marie":[-60.9932889000,14.7794318000],
        		"Gibraltar":[-5.3535850000,36.1407510000],
        		"NewJersey":[-74.4056612000,40.0583238000],
        		"IntheGulfStream":[-80.0550417000,26.4936835000],
        		"StraitofMalacca":[99.5450974000,4.6625895000],
        		"IbarakiPrefecture":[140.4467935000,36.3418112000],
        		"40milessouthofNaples":[153.0916890000,-27.5598346000],
        		"Balearics":[2.7356328000,39.3587759000],
        		"MercuryIslands":[175.9166667000,-36.5833333000],
        		"OfftheCoromandelPeninsula,NorthIsland":[175.5833333000,-36.8333333000],
        		"MagaritaorCubaguaIslands":[-64.1892319000,10.8201196000],
        		"IzoIslands":[139.7718445000,33.1713992000],
        		"KagoshimaPrefecture":[130.5579779000,31.5601464000],
        		"Argyll":[147.4795042000,-23.2986957000],
        		"Suez":[32.5498069000,29.9668343000],
        		"KurilIslandsinthePacific":[150.9705378000,47.1543981000],
        		"SagoPrefecture":[130.2997942000,33.2494416000],
        		"Saint-Louis":[-90.1994042000,38.6270025000],
        		"DemeraraCounty":[-96.7969623000,32.8090795000],
        		"NearBougainville(NorthSolomons)":[155.3807101000,-6.3753919000],
        		"Malaga":[-4.4213988000,36.7212737000],
        		"VeniceProvince":[12.3155151000,45.4408474000],
        		"GreatExumaIsland":[-75.8333333000,23.5333333000],
        		"IonianSea":[18.8076195000,37.7884803000],
        		"Saint-Joseph":[-94.8466810000,39.7674578000],
        		"Newfoundland":[-57.6604364000,53.1355091000],
        		"WakayamaPrefecture":[135.1675086000,34.2259867000],
        		"VeraCruz":[-96.1342241000,19.1737730000],
        		"EnglishChannel":[-0.3570560000,50.1346640000],
        		"BerryIslands":[-77.8252203000,25.6250042000],
        		"Sussex":[77.2522580000,28.5477350000],
        		"Praslin":[55.7467259000,-4.3325908000],
        		"Nukualofa":[-175.2049470000,-21.1393418000],
        		"CanalZone":[-70.7456909000,-33.4313514000],
        		"Oaxaca":[-96.7132304000,17.0542297000],
        		"Kadavu":[178.1876676000,-19.0127122000],
        		"Taitung":[121.1438152000,22.7613207000],
        		"Maharashtra":[75.7138884000,19.7514798000],
        		"DukeofYorkIslands":[152.4621561000,-4.1666002000],
        		"Saint-Leu":[55.2878651000,-21.1747552000],
        		"EastNewBritainProvince":[151.8877321000,-4.6128943000],
        		"SeaofJapan":[135.0000000000,38.8488480000],
        		"GrandCanaryIsland":[-15.5474373000,27.9202202000],
        		"Makira-UlawaProvince":[161.8096941000,-10.5737447000],
        		"ColonProvince":[-80.0534923000,9.1851989000],
        		"Montserrado":[-10.5296115000,6.5525815000],
        		"AlinglaplapAtoll":[168.7500000000,7.4000000000],
        		"GrandTerre":[-61.4668962000,16.2732353000],
        		"WestEnd":[144.6669756000,-37.4658396000],
        		"Honiara":[159.9728999000,-9.4456381000],
        		"Split-DalmatiaCounty":[16.8178377000,43.5240328000],
        		"Orissa":[85.0985236000,20.9516658000],
        		"NuevaEsparta":[-63.9113296000,10.9970723000],
        		"RioGrandedeNorte":[-35.2009160000,-5.7792569000],
        		"InhambeProvince":[34.5508758000,-22.8527997000],
        		"Luzon":[121.2626366000,16.5662318000],
        		"Rangoon":[96.1951320000,16.8660694000],
        		"Saint-Philippe":[-73.4767279000,45.3569439000],
        		"LigurianSea":[8.8362755000,43.7542275000],
        		"PhoenixIslands":[109.4939760000,18.2401920000],
        		"Southland":[145.0548080000,-37.9584440000],
        		"Guanacaste":[-85.4436706000,10.6267399000],
        		"NewIreland":[152.0000000000,-3.3300000000],
        		"LauGroup":[-179.3985283000,-18.8066560000],
        		"EasternProvince":[50.6793759000,22.2954496000],
        		"EasternCarolineIslands":[150.1860176000,5.5530091000],
        		"HooglyRiver":[88.1470926000,23.0718297000],
        		"PalmyraAtoll":[-162.0786656000,5.8885026000],
        		"Ha api":[-175.0545197000,-19.7506337000],
        		"Anzoategui":[-63.9586111000,8.5913073000],
        		"VillaClaraProvince":[-79.9192702000,22.4937204000],
        		"Dorset":[-2.3444786000,50.7487635000],
        		"Saint-Benoit":[55.6245586000,-21.0909871000],
        		"StMichaelParish":[-59.5988089000,13.1132219000],
        		"ChathamIslands":[-175.9304546000,-44.0237474000],
        		"NewGeorgia":[157.5231713000,-8.1335743000],
        		"Cheshire":[-2.6103158000,53.2326344000],
        		"MiyakoIsland":[125.3246769000,24.7673666000],
        		"CamagueyProvince":[-77.7452081000,21.2167247000],
        		"SanBlasIslands":[-79.5435715000,8.9604421000],
        		"EastJava":[112.2384017000,-7.5360639000],
        		"RalikArchipelago":[164.8867956000,8.1472388000],
        		"DodecaneseIslands":[27.9285982000,36.4029176000],
        		"NearPuntarenas":[-84.8267160000,9.9771140000],
        		"BoraBora":[-151.7414904000,-16.5004126000],
        		"Palawan":[118.7383615000,9.8349493000],
        		"Paget":[149.1788204000,-21.1870890000],
        		"EastSepik":[143.0458930000,-4.3150058000],
        		"GulfProvince":[145.1375834000,-7.2691821000],
        		"CatCay":[-79.2833333000,25.5333333000],
        		"GilbertIslands":[174.7552634000,0.3524262000],
        		"IstriaCounty":[13.9015420000,45.1286455000],
        		"RedSeaState":[35.2148469000,19.4556063000],
        		"Saint-Pierre":[-56.1806363000,46.7758459000],
        		"Manila":[120.9842195000,14.5995124000],
        		"GuadalcanalProvince":[160.1455805000,-9.5773284000],
        		"IsleofWight":[-1.3047340000,50.6938479000],
        		"Trinidad":[-61.2225030000,10.6918030000],
        		"Devon":[-3.5308750000,50.7155591000],
        		"Bahia":[-41.7007272000,-12.5797380000],
        		"EniwetokAtoll":[162.1890000000,11.4653625000],
        		"Saint-Gilles-les-Bains":[55.2286827000,-21.0538749000],
        		"LaLibertad":[-78.4751945000,-8.1435933000],
        		"OkayamaPrefecture":[133.9344057000,34.6617511000],
        		"ZamboangadelSurProvince":[123.2966657000,7.8383054000],
        		"Colima":[-104.0072348000,19.1222634000],
        		"Grand Anse":[55.4637770000,-4.6773920000],
        		"Mombasa":[39.6682065000,-4.0434771000],
        		"Sinaloa":[-107.4795173000,25.1721091000],
        		"NorthernTaiwan":[121.7920259000,24.8300162000],
        		"Rocha":[-54.3352997000,-34.4790141000],
        		"Calabria":[16.3463791000,39.3087714000],
        		"WestmorelandParish":[-78.1564432000,18.2944378000],
        		"YasawaIslands":[177.2505928000,-17.0249832000],
        		"Guerrrero":[-99.5450974000,17.4391926000],
        		"NovaScotia":[-63.7443110000,44.6819866000],
        		"Cornwall":[-5.0527125000,50.2660471000],
        		"Split-DalmatiaCount,":[16.8178377000,43.5240328000],
        		"WesternCarolineIslands":[150.1860176000,5.5530091000],
        		"GulfofPanama":[-79.5603440000,8.1731755000],
        		"Valencia":[-0.3762881000,39.4699075000],
        		"TutuilaIsland":[-170.7325287000,-14.3257552000],
        		"LakeNicaragua(freshwater)":[-85.3549650000,11.5786576000],
        		"SantiagodeCubaProvince":[-75.9927652000,20.2397682000],
        		"HongKong":[114.1094970000,22.3964280000],
        		"UpoluIsland":[-171.7349420000,-13.9134084000],
        		"Alicante":[-0.4906855000,38.3459963000],
        		"CorfuIsland":[19.9216777000,39.6242621000],
        		"AbauSubDistrict,CentralProvince":[50.5395197000,26.1862229000],
        		"LouisiadeArchipelago":[152.5418135000,-10.9612237000],
        		"VitiLevu":[178.0118473000,-17.8483187000],
        		"Corfu":[19.9216777000,39.6242621000],
        		"VituLevu":[178.0118473000,-17.8483187000],
        		"BanaadirRegion":[45.3369459000,2.1187375000],
        		"SinaiPeninsula":[34.0000000000,29.5000000000],
        		"Tuscany":[11.2486208000,43.7710513000],
        		"ZadarCounty":[15.6164943000,44.1469390000],
        		"Saint-Denis":[2.3574430000,48.9361810000],
        		"Sardinia":[9.0128926000,40.1208752000],
        		"Guerro":[10.9874091000,44.5683161000],
        		"Primorje-GorskiKotarCounty":[14.8167466000,45.3173996000],
        		"Saint-Gilles":[4.3402184000,50.8301436000],
        		"VanuaLevu":[179.0179332000,-16.6268225000],
        		"Liguria":[8.3964938000,44.3167917000],
        		"Eleuthera":[-76.1899661000,24.9314461000],
        		"NewIrelandProvince,BismarckArchipelago":[150.0000000000,-5.0000000000],
        		"NewTerritories":[114.1234149000,22.3704243000],
        		"VitaLevu":[178.0118473000,-17.8483187000],
        		"CookIslands":[-159.7776710000,-21.2367360000],
        		"Catalonia":[1.5208624000,41.5911589000],
        		"Taveuni":[-179.9813445000,-16.8414365000],
        		"ExumaIslands":[-75.8333333000,23.5333333000],
        		"Madang":[145.7856324000,-5.2218841000],
        		"LimpopoRiver":[30.2754883000,-23.6491933000],
        		"Saint-Paul":[-93.0899578000,44.9537029000],
        		"Vavau":[-173.9902982000,-18.6227560000],
        		"Bali":[115.1889160000,-8.4095178000],
        		"Mississippi":[-89.3985283000,32.3546679000],
        		"WesternProvince":[80.0087746000,6.9016086000],
        		"Tamaulipas":[-98.8362755000,24.2669400000],
        		"USVirginIslands":[-64.8963350000,18.3357650000],
        		"GuantanamoProvince":[-74.8741045000,20.1455917000],
        		"Connecticut":[-73.0877490000,41.6032207000],
        		"BiminiIslands":[-79.8699529000,24.6415325000],
        		"InhambaneProvince":[34.5508758000,-22.8527997000],
        		"Tuamotus":[-138.7191423000,-18.6159490000],
        		"EhimePrefecture":[132.7656808000,33.8416238000],
        		"Shatt-al-ArabRiver":[47.5965946000,30.8511206000],
        		"Hamilton":[-79.8711024000,43.2557206000],
        		"GalapagosIslands":[-90.4233344000,-0.3831060000],
        		"LoyaltyIslands":[167.2716614000,-21.0416378000],
        		"CapVertPeninsula":[-17.1484521000,14.7974583000],
        		"SouthSinaiPeninsula":[34.0000000000,29.5000000000],
        		"Maryland":[-76.6412712000,39.0457549000],
        		"MirsBay":[114.4470383000,22.5603172000],
        		"Aden":[45.0186548000,12.7854969000],
        		"AndrosIslands":[-78.0195387000,24.7063805000],
        		"CanaryIslands":[-16.6291304000,28.2915637000],
        		"Delaware":[-75.5276699000,38.9108325000],
        		"TamilNadu":[78.6568942000,11.1271225000],
        		"WesternArea":[-13.0356940000,8.3114983000],
        		"NewProvidenceIsland":[-77.3554130000,25.0479835000],
        		"Sicily":[14.0153557000,37.5999938000],
        		"KarunRiver":[49.1303736000,31.3832162000],
        		"WestNewBritainProvince":[150.0259466000,-5.7047432000],
        		"CaribbeanSea":[-74.9676365000,14.5401107000],
        		"RhodeIsland":[-71.4774291000,41.5800945000],
        		"MorobeProvince":[146.5616470000,-6.8013737000],
        		"BinhDinhProvince":[108.9026830000,14.1665324000],
        		"MilneBayProvince":[150.6749653000,-9.5221451000],
        		"NewBritain":[150.7679216000,-5.7465904000],
        		"KingstonParish":[-76.7827020000,17.9683271000],
        		"AdmiraltyIslands,ManusProvince":[147.1013188000,-2.1993879000],
        		"WestBengal":[87.8549755000,22.9867569000],
        		"VitiLevuIsland":[178.0118473000,-17.8483187000],
        		"MaputoProvince":[32.5372741000,-25.2569876000],
        		"Primorje-GorskiKotarCounty":[14.8167466000,45.3173996000],
        		"SocietyIslands":[-151.4435890000,-16.7613013000],
        		"Bougainville(NorthSolomons)":[155.3807101000,-6.3753919000],
        		"RedSea":[38.5125730000,20.2802320000],
        		"Basrah":[47.7834888000,30.5081033000],
        		"EasternProvince":[50.6793759000,22.2954496000],
        		"BajaCalifornia":[-115.2837585000,30.8406338000],
        		"GrandBahamaIsland":[-78.5206500000,26.6594470000],
        		"Louisiana":[-91.9623327000,30.9842977000],
        		"MalampaProvince":[167.6077865000,-16.4011405000],
        		"RiodeJaneiro":[-43.1728965000,-22.9068467000],
        		"MediterraneanSea":[18.0480105000,34.5531284000],
        		"TyrrhenianSea":[11.3431058000,40.0769862000],
        		"Massachusetts":[-71.3824374000,42.4072107000],
        		"LuzonIsland":[121.2626366000,16.5662318000],
        		"NorthProvince":[73.2307406000,5.4103710000],
        		"AdriaticSea":[17.2902839000,41.8550904000],
        		"QuintanaRoo":[-88.4791376000,19.1817393000],
        		"KhuzestanProvince":[49.0413120000,31.4360149000],
        		"Guerrero":[-99.5450974000,17.4391926000],
        		"Georgia":[43.3568920000,42.3154070000],
        		"Alabama":[-86.9022980000,32.3182314000],
        		"MadangProvince":[145.1375834000,-4.9849733000],
        		"NewIrelandProvince":[-4.282781529355114,152.9185342164551],
        		"Gaza":[34.306747450805695,31.356815071494274],
        		"Veracruz":[-96.13627466179193,19.177568046448392],
        		"PuertoRico":[-66.59224906506358,18.223239054809973],
        		"SouthProvince":[-193.82261908012688,-21.745829797730398],
        		"HavanaProvince":[-82.34621792004398,23.056362833183048],
        		"Virginia":[-78.65893171817632,37.43356610317467],
        		"AbacoIslands":[-77.15052152211912,26.357815697127307],
        		"NorthernTerritory":[-227.45104247153316,-19.48758462171317],
        		"Oregon":[-120.55619636057118,43.80600554117347],
        		"NewYork":[-74.00795351931153,40.71582350966609],
        		"SouthIsland":[-190.10833749326184,-45.149808854582474],
        		"Tasmania":[-214.03139056087636,-41.45151612367537],
        		"NewJersey":[104.07642,38.6518],
        		"NorthIsland":[104.07642,38.6518],
        		"Pernambuco":[-36.95410700000003,-8.810803477713543],
        		"Texas":[-99.9018131,31.969888680501924],
        		"TorresStrait":[141.9368545000,-10.2199025000],
        		"Victoria":[-123.3656444000,48.4284207000],
        		"NorthCarolina":[-79.0192997000,35.7595731000],
        		"SouthAustralia":[136.2091547000,-30.0002315000],
        		"SouthCarolina":[-81.1637245000,33.8360810000],
        		"EasternCapeProvince":[26.4193890000,-32.2968402000],
        		"WesternAustralia":[121.6283098000,-27.6728168000],
        		"WesternCapeProvince":[21.8568586000,-33.2277918000],
        		"KwaZulu-Natal":[30.8958242000,-28.5305539000],
        		"California":[-119.4179324000,36.7782610000],
        		"Hawaii":[-155.5827818000,19.8967662000],
        		"Queensland":[142.7027956000,-20.9175738000],
        		"NewSouthWales":[146.9210990000,-31.2532183000],
        		"Florida":[-81.5157535000,27.6648274000]
        };
    	var rawData = [
     	       		["Sicily",1],
    	       		["KarunRiver",1],
    	       		["WestNewBritainProvince",1],
    	       		["CaribbeanSea",1],
    	       		["RhodeIsland",1],
    	       		["MorobeProvince",1],
    	       		["BinhDinhProvince",1],
    	       		["MilneBayProvince",1],
    	       		["NewBritain",1],
    	       		["KingstonParish",1],
    	       		["AdmiraltyIslands,ManusProvince",1],
    	       		["WestBengal",1],
    	       		["VitiLevuIsland",1],
    	       		["MaputoProvince",1],
    	       		["Primorje-GorskiKotarCounty",1],
    	       		["SocietyIslands",1],
    	       		["Bougainville(NorthSolomons)",1],
    	       		["RedSea",1],
    	       		["Basrah",1],
    	       		["EasternProvince",1],
    	       		["BajaCalifornia",1],
    	       		["GrandBahamaIsland",1],
    	       		["Louisiana",1],
    	       		["MalampaProvince",1],
    	       		["RiodeJaneiro",1],
    	       		["MediterraneanSea",1],
    	       		["TyrrhenianSea",1],
    	       		["Massachusetts",1],
    	       		["LuzonIsland",1],
    	       		["NorthProvince",1],
    	       		["AdriaticSea",1],
    	       		["QuintanaRoo",1],
    	       		["KhuzestanProvince",1],
    	       		["Guerrero",1],
    	       		["Georgia",1],
    	       		["Alabama",1],
    	       		["MadangProvince",1],
    	       		["NewIrelandProvince",1],
    	       		["Gaza",1],
    	       		["Veracruz",1],
    	       		["PuertoRico",1],
    	       		["SouthProvince",1],
    	       		["HavanaProvince",1],
    	       		["Virginia",1],
    	       		["AbacoIslands",1],
    	       		["NorthernTerritory",1],
    	       		["Oregon",1],
    	       		["NewYork",1],
    	       		["SouthIsland",1],
    	       		["Tasmania",1],
    	       		["NewJersey",1],
    	       		["NorthIsland",1],
    	       		["Pernambuco",1],
    	       		["Texas",1],
    	       		["TorresStrait",1],
    	       		["Victoria",1],
    	       		["NorthCarolina",1],
    	       		["SouthAustralia",1],
    	       		["SouthCarolina",1],
    	       		["EasternCapeProvince",1],
    	       		["WesternAustralia",1],
    	       		["WesternCapeProvince",1],
    	       		["KwaZulu-Natal",1],
    	       		["California",1],
    	       		["Hawaii",1],
    	       		["Queensland",1],
    	       		["NewSouthWales",1],
    	       		["Florida",1]
    	             ];  
        function makeMapData(rawData) {  
    	    var mapData = [];  
    	    for (var i = 0; i < rawData.length; i++) {  
    	        var geoCoord = geoCoordMap[rawData[i][0]];  
    	        if (geoCoord) {  
    	            mapData.push({  
    	                name: rawData[i][0],  
    	                value: geoCoord.concat(rawData[i].slice(1))  
    	            });  
    	        }  
    	    }  
    	    return mapData;  
    	};  
        
        var convertData = function(data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var geoCoord = geoCoordMap[data[i].name];
                if (geoCoord) {
                    res.push({
                        name: data[i].name,
                        value: geoCoord.concat(data[i].value)
                    });
                }
            }
            return res;
        };

        var convertedData = [
            convertData(data),
            convertData(data.sort(function(a, b) {
                return b.value - a.value;
            }).slice(0, 6))
        ];
        data.sort(function(a, b) {
            return a.value - b.value;
        })

        var selectedItems = [];
        var categoryData = [];
        var barData = [];
        //   var maxBar = 30;
        var sum = 0;
        var count = data.length;
        for (var i = 0; i < data_top.length; i++) {
            categoryData.push(data_top[i].name);         //条形图纵坐标显示的数据  top多少
            barData.push(data_top[i].value);
            sum += data[i].value;
        }
        console.log(categoryData);
        console.log(sum + "   " + count)
        option = {
            backgroundColor: '#fff',
            animation: true,
            animationDuration: 1000,
            animationEasing: 'cubicInOut',
            animationDurationUpdate: 1000,
            animationEasingUpdate: 'cubicInOut',
            title: [{
                text: '全球各地区鲨鱼伤人事件分布情况图',
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
            }, {
                id: 'statistic',
                text: count ? '平均: ' + parseInt((sum / count).toFixed(4)) : '',
                right: 120,
                top: 40,
                width: 100,
                textStyle: {
                    color: '#fff',
                    fontSize: 16
                }
            }],
            toolbox: {
            	show : false,
                iconStyle: {
                    normal: {
                        borderColor: '#fff'
                    },
                    emphasis: {
                        borderColor: '#b1e4ff'
                    }
                },
                feature: {
                    dataZoom: {},
                    brush: {
                        type: ['rect', 'polygon', 'clear']
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            brush: {
                outOfBrush: {
                    color: '#abc'
                },
                brushStyle: {
                    borderWidth: 2,
                    color: 'rgba(0,0,0,0.2)',
                    borderColor: 'rgba(0,0,0,0.5)',
                },
                seriesIndex: [0, 1],
                throttleType: 'debounce',
                throttleDelay: 300,
                geoIndex: 0
            },
            geo: {
                map: 'world',
                left: '10',
                right: '35%',
                //center: [117.98561551896913, 31.205000490896193],
                zoom: 1.5,
                label: {
                    emphasis: {
                        show: true,
                        color:'#f00' //  当鼠标放在某个国家上时国家名字的颜色
                    }
                },
                roam: true,
                itemStyle: {
                    normal: {
                        areaColor: '#E2E2E2',  //地图的颜色
                        borderColor: '#000'  //国界线颜色
                    },
                    emphasis: {
                        areaColor: '#DDA0DD'  //当鼠标放在某个国家时该国家显示的颜色
                    }
                }
            },
            tooltip: {
                trigger: 'item'
            },
            grid: {
                right: 40,
                top: 100,
                bottom: 40,
                width: '20%'  //条形图位置
            },
            xAxis: {
            	type: 'value',
                //name : '0-1000',
                scale: true,
                position: 'top',
                boundaryGap: false,
               
                splitLine: {
                    show: false
                },
                axisLine: {
                    show: true
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                	text: '0-1000',
                    margin: 2,
                    textStyle: {
                        color: '#000'   //条形图横坐标字体颜色
                    }
                },
            },
            yAxis: {
                type: 'category',
                position: 'center',
                name: '攻击事件发生地区TOP榜',
                nameGap: 16,
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: '#000'
                    }
                },
                axisTick: {
                    show: false,
                    lineStyle: {
                        color: '#000'
                    }
                },
                axisLabel: {
                    interval: 0,
                    textStyle: {
                        color: '#000'
                    }
                },
                data: categoryData
                //data: data
            },
            series: [{  /////////////////////////////////////////////////////////////////////////////////////////
                // name: 'pm2.5',
                type: 'scatter',
                coordinateSystem: 'geo',
                //data: makeMapData(rawData),  /////////////////////////////////////////////////////////////////
                data: convertedData[0],
                symbolSize: function(val) {
                    return Math.max(val[2] / 20, 1);
                },
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: false //受攻击地区名是否显示
                    },
                    emphasis: {
                        show: true   
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#F00',
                        position: 'right',
                        show: true
                    }
                }
            }, {
                // name: 'Top 5',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                //data: data,
                data: convertedData[0],     //////在地图上展示的攻击地点
                //data: makeMapData(rawData),   ///////////////////////////////////////////////////////////////////////////
                symbolSize: function(val) {
                    return Math.max(val[2] / 20, 1);
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        center :['20%','50%'],
                        show: false
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#0000FF',    //地图上攻击发生地点文字颜色
                        shadowBlur: 100,
                        shadowColor: '#ff0000'
                    }
                },
                zlevel: 1
            }, {
                id: 'bar',
                zlevel: 2,
                type: 'bar',
                symbol: 'none',
                center:['35%','50%'],
                itemStyle: {
                    normal: {
                        color: '#f00'   //条形图颜色
                    }
                },

                data: data_top
            }]
        };



        function renderBrushed(params) {
            var mainSeries = params.batch[0].selected[0];

            var selectedItems = [];
            var categoryData = [];
            var barData = [];
            var maxBar = 30;
            var sum = 0;
            var count = 0;

            for (var i = 0; i < mainSeries.dataIndex.length; i++) {
                var rawIndex = mainSeries.dataIndex[i];
                var dataItem = convertedData[0][rawIndex];
                var pmValue = dataItem.value[2];

                sum += pmValue;
                count++;

                selectedItems.push(dataItem);
            }

            selectedItems.sort(function(a, b) {
                //   return b.value[2] - a.value[2];
                return a.value - b.value;
            });

            for (var i = 0; i < Math.min(selectedItems.length, maxBar); i++) {
                categoryData.push(selectedItems[i].name);
                barData.push(selectedItems[i].value[2]);
            }

            this.setOption({
                yAxis: {
                    data: categoryData
                },
                xAxis: {
                    axisLabel: {
                        show: !!count
                    }
                },
                title: {
                    id: 'statistic',
                    text: count ? '平均: ' + (sum / count).toFixed(4) : ''
                },
                series: {
                    id: 'bar',
                    //        sort:'descending',
                    data: barData
                }
            });
        }

myChart.setOption(option);
</script>
</body>
<!--div>
   <footer>
      <p><strong>Action © 2017vis we</strong></p>
   </footer>
</div-->
</body>
</html>