<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/font.css" type="text/css">
<link rel="stylesheet" href="../../css/share/title.css" type="text/css">
<link rel="stylesheet" href="../../css/share/share.css" type="text/css">
<link rel="stylesheet" href="../../css/user/homepage.css" type="text/css">
<link rel="stylesheet" href="../../css/user/commquery.css" type="text/css">
<link rel="stylesheet" href="../../css/user/shoppingcart.css" type="text/css">
<script src="../../js/user/homepage.js"></script>
<script src="../../js/user/commquery.js"></script>
<script src="../../js/user/shoppcartcolumn.js"></script>
<title>FLC PLUS-网上商城</title>
</head>
<script type="text/javascript">
  window.onload=function()
	{ 
	  var i=1;
	  function poster()
		{ 
		  i=i+1;  
		  document.getElementById("div-poster").style.background="url(../../images/commodity/dp"+i+".jpg)";
		  document.getElementById("div-poster").style.backgroundSize="100% 100%";
		  if(i==5)
			i=0;
		}
	  setInterval(poster,5000);
	}
</script>
<body class="body" style="background:#F0F0F0;">
<div class="top-poster" style="background:url(../../images/commodity/topaa.jpg); background-size:100% 100%;"></div>
<div class="div-assort">
   <div class="homepage-logo" style="background:url(../../images/share/Logo.jpg); background-size:100% 100%;"></div>
   <div class="comm-assort"><strong>商品分类</strong></div>
   <div id="1" class="assort-title" style="margin-top:10px;" onmousemove="openarea('1')" onmouseout="closearea('1')">女士服装</div>
   <div id="2" class="assort-title" onmousemove="openarea('2')" onmouseout="closearea('2')">男士服装</div>
   <div id="3" class="assort-title" onmousemove="openarea('3')" onmouseout="closearea('3')">女鞋 / 男鞋 / 背包</div>
   <div id="4" class="assort-title" onmousemove="openarea('4')" onmouseout="closearea('4')">美妆 / 个人护理</div>
   <div id="5" class="assort-title" onmousemove="openarea('5')" onmouseout="closearea('5')">运动 / 户外</div>
   <div id="6" class="assort-title" onmousemove="openarea('6')" onmouseout="closearea('6')">童装 / 玩具</div>
   <div id="7" class="assort-title" onmousemove="openarea('7')" onmouseout="closearea('7')">生鲜水果</div>
   <div id="8" class="assort-title" onmousemove="openarea('8')" onmouseout="closearea('8')">食品 / 饮料</div>
   <div id="9" class="assort-title" onmousemove="openarea('9')" onmouseout="closearea('9')">家庭用品</div>
   <div id="10" class="assort-title" onmousemove="openarea('10')" onmouseout="closearea('10')">图书 / 乐器</div>
</div>

<div id="assort-area-1" class="assort-area" onmousemove="openarea('1')" onmouseout="closearea('1')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>女装热销＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">秋冬新款</a><a class="title-3" onclick="titlequery(this)">商场同款</a>
	     <a class="title-3" onclick="titlequery(this)">羽绒服</a><a class="title-3" onclick="titlequery(this)">棉服</a>
	     <a class="title-3" onclick="titlequery(this)">自营女装</a><a class="title-3" onclick="titlequery(this)">套装裙 </a>
	     <a class="title-3" onclick="titlequery(this)">羊绒大衣</a><a class="title-3" onclick="titlequery(this)">宽松卫衣</a>
	     <a class="title-3" onclick="titlequery(this)">打底衫</a><a class="title-3" onclick="titlequery(this)">女士裙装</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>女士裙装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">新品</a><a class="title-3" onclick="titlequery(this)">连衣裙</a>
	     <a class="title-3" onclick="titlequery(this)">针织连衣裙</a><a class="title-3" onclick="titlequery(this)">长袖连衣裙</a>
	     <a class="title-3" onclick="titlequery(this)">蕾丝连衣裙</a><a class="title-3" onclick="titlequery(this)">羊绒裙</a>
	     <a class="title-3" onclick="titlequery(this)">毛呢连衣裙</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>女士上装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">羽绒服</a><a class="title-3" onclick="titlequery(this)">中长款羽绒服</a>
	     <a class="title-3" onclick="titlequery(this)">轻薄羽绒服 </a><a class="title-3" onclick="titlequery(this)">皮草</a>
	     <a class="title-3" onclick="titlequery(this)">呢大衣</a><a class="title-3" onclick="titlequery(this)">蕾丝打底衫</a>
	     <a class="title-3" onclick="titlequery(this)">牛仔外套 </a><a class="title-3" onclick="titlequery(this)">皮衣羽绒马甲</a>
	     <a class="title-3" onclick="titlequery(this)">羊毛衫</a><a class="title-3" onclick="titlequery(this)">加绒衬衫</a>
	     <a class="title-3" onclick="titlequery(this)">加绒卫衣</a><a class="title-3" onclick="titlequery(this)">羊绒衫</a>
	     <a class="title-3" onclick="titlequery(this)">卫衣套装</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>女士下装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">羽绒裤</a><a class="title-3" onclick="titlequery(this)">棉裤</a>
	     <a class="title-3" onclick="titlequery(this)">羊绒裤</a><a class="title-3" onclick="titlequery(this)">打底裤</a>
	     <a class="title-3" onclick="titlequery(this)"> 牛仔裤</a><a class="title-3" onclick="titlequery(this)">阔腿裤 </a>
	     <a class="title-3" onclick="titlequery(this)">哈伦裤 </a><a class="title-3" onclick="titlequery(this)"> 皮裤</a>
	     <a class="title-3">  西装裤</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>特色品类＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">大码女装</a><a class="title-3" onclick="titlequery(this)">中老年女装 </a>
	     <a class="title-3" onclick="titlequery(this)">唐装  </a><a class="title-3" onclick="titlequery(this)">婚纱</a>
	     <a class="title-3" onclick="titlequery(this)">旗袍 </a><a class="title-3" onclick="titlequery(this)">礼服</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-2" class="assort-area" onmousemove="openarea('2')" onmouseout="closearea('2')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>男装热销＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">牛仔裤</a><a class="title-3" onclick="titlequery(this)">新品到货 </a>
	     <a class="title-3" onclick="titlequery(this)">夹克 </a><a class="title-3" onclick="titlequery(this)">衬衫 </a>
	     <a class="title-3" onclick="titlequery(this)">卫衣</a><a class="title-3" onclick="titlequery(this)">短裤 </a>
	     <a class="title-3" onclick="titlequery(this)">T恤 </a><a class="title-3" onclick="titlequery(this)">休闲裤 </a>
	     <a class="title-3" onclick="titlequery(this)">风衣</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>热销活动＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">五周年店庆</a><a class="title-3" onclick="titlequery(this)">男神养成</a>
	     <a class="title-3" onclick="titlequery(this)">一套的秋冬搭</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>男士上装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">T恤 </a><a class="title-3" onclick="titlequery(this)">衬衫 </a>
	     <a class="title-3" onclick="titlequery(this)">短裤 </a><a class="title-3" onclick="titlequery(this)">西服 </a>
	     <a class="title-3" onclick="titlequery(this)">夹克 </a><a class="title-3" onclick="titlequery(this)">风衣 </a>
	     <a class="title-3" onclick="titlequery(this)">马甲</a><a class="title-3" onclick="titlequery(this)"> 仿皮皮衣</a>
	     <a class="title-3" onclick="titlequery(this)"> 卫衣</a><a class="title-3" onclick="titlequery(this)">POLO衫 </a>
	     <a class="title-3" onclick="titlequery(this)">针织衫 </a><a class="title-3" onclick="titlequery(this)">真皮皮衣</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>男士下装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">牛仔裤</a><a class="title-3" onclick="titlequery(this)"> 西裤 </a>
	     <a class="title-3" onclick="titlequery(this)">卫裤 </a><a class="title-3" onclick="titlequery(this)">休闲裤</a>
	     <a class="title-3" onclick="titlequery(this)">工装裤 </a><a class="title-3" onclick="titlequery(this)">哈伦裤</a>
	     <a class="title-3" onclick="titlequery(this)">修身裤 </a><a class="title-3" onclick="titlequery(this)">运动裤</a>
	     <a class="title-3" onclick="titlequery(this)">九分裤</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>潮流风向＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">春夏上新 </a><a class="title-3" onclick="titlequery(this)">潮流精选  </a>
	     <a class="title-3" onclick="titlequery(this)">潮男新计  </a><a class="title-3" onclick="titlequery(this)">明星同款 </a>
	     <a class="title-3" onclick="titlequery(this)">雅痞绅潮   </a><a class="title-3" onclick="titlequery(this)">街拍潮服   </a>
	     <a class="title-3" onclick="titlequery(this)">早春上新 </a><a class="title-3" onclick="titlequery(this)">玩酷时尚  </a>
	     <a class="title-3" onclick="titlequery(this)">春装热卖</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-3" class="assort-area" onmousemove="openarea('3')" onmouseout="closearea('3')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>女鞋热卖＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">休闲鞋</a><a class="title-3" onclick="titlequery(this)">单鞋</a>
	     <a class="title-3" onclick="titlequery(this)">凉鞋 </a><a class="title-3" onclick="titlequery(this)">ECCO</a>
	     <a class="title-3" onclick="titlequery(this)">百丽</a><a class="title-3" onclick="titlequery(this)">斯凯奇</a>
	     <a class="title-3" onclick="titlequery(this)">UGG</a><a class="title-3" onclick="titlequery(this)">高跟鞋 </a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>特色品类＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">妈妈鞋 </a><a class="title-3" onclick="titlequery(this)">舞蹈鞋 </a>
	     <a class="title-3" onclick="titlequery(this)">大码鞋 </a><a class="title-3" onclick="titlequery(this)"> 布鞋 </a>
	     <a class="title-3" onclick="titlequery(this)">婚鞋 </a><a class="title-3" onclick="titlequery(this)">绣花鞋</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>热门分类＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">豆豆鞋</a><a class="title-3" onclick="titlequery(this)"> 拖鞋</a>
	     <a class="title-3" onclick="titlequery(this)">网面鞋 </a><a class="title-3" onclick="titlequery(this)">套脚鞋</a>
	     <a class="title-3" onclick="titlequery(this)">增高鞋</a><a class="title-3" onclick="titlequery(this)">运动休闲</a>
	     <a class="title-3" onclick="titlequery(this)">正装鞋 </a><a class="title-3" onclick="titlequery(this)">帆布鞋</a>
	     <a class="title-3" onclick="titlequery(this)">工装鞋 </a><a class="title-3" onclick="titlequery(this)">老爹鞋</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>男鞋热卖＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">男靴 </a><a class="title-3" onclick="titlequery(this)">商务休闲</a>
	     <a class="title-3" onclick="titlequery(this)">正装鞋</a><a class="title-3" onclick="titlequery(this)"> 帆布鞋</a>
	     <a class="title-3" onclick="titlequery(this)">工装鞋 </a><a class="title-3" onclick="titlequery(this)">运动休闲 </a>
	     <a class="title-3" onclick="titlequery(this)">商务休闲</a><a class="title-3" onclick="titlequery(this)">皮鞋 </a>
	     <a class="title-3" onclick="titlequery(this)">板鞋</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>精品男包＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">男士钱包</a><a class="title-3" onclick="titlequery(this)">男士手包</a>
	     <a class="title-3" onclick="titlequery(this)">双肩包</a><a class="title-3" onclick="titlequery(this)">公文包</a>
	     <a class="title-3" onclick="titlequery(this)">单肩斜挎</a><a class="title-3" onclick="titlequery(this)"> 男士腰带</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	   <div class="assort-two-title"><strong>潮流女包＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">双肩包 </a><a class="title-3" onclick="titlequery(this)">单肩包</a>
	     <a class="title-3" onclick="titlequery(this)">帆布包</a><a class="title-3" onclick="titlequery(this)">小方包</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>旅行箱包＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">拉杆箱  </a><a class="title-3" onclick="titlequery(this)">电脑包 </a>
	     <a class="title-3" onclick="titlequery(this)">休闲运动 </a><a class="title-3" onclick="titlequery(this)"> 旅行包</a>
	     <a class="title-3" onclick="titlequery(this)">真皮包 </a><a class="title-3" onclick="titlequery(this)">水桶包  </a>
	     <a class="title-3" onclick="titlequery(this)">书包</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-4" class="assort-area" onmousemove="openarea('4')" onmouseout="closearea('4')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>精选品牌＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">SKII </a><a class="title-3" onclick="titlequery(this)">玉兰油  </a>
	     <a class="title-3" onclick="titlequery(this)">美宝莲</a><a class="title-3" onclick="titlequery(this)">维达  </a>
	     <a class="title-3" onclick="titlequery(this)">海飞丝 </a><a class="title-3" onclick="titlequery(this)">蓝月亮 </a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>护肤美白＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">补水</a><a class="title-3" onclick="titlequery(this)">保湿 </a>
	     <a class="title-3" onclick="titlequery(this)">美白</a><a class="title-3" onclick="titlequery(this)"> 洁面 </a>
	     <a class="title-3" onclick="titlequery(this)">面膜 </a><a class="title-3" onclick="titlequery(this)">爽肤水</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>彩妆香水＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">口红</a><a class="title-3" onclick="titlequery(this)"> 底妆 </a>
	     <a class="title-3" onclick="titlequery(this)"> 眉眼</a><a class="title-3" onclick="titlequery(this)">女香 </a>
	     <a class="title-3" onclick="titlequery(this)">男香 </a><a class="title-3" onclick="titlequery(this)">套装/礼盒</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>清洁纸品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">抽纸 </a><a class="title-3" onclick="titlequery(this)">卷纸 </a>
	     <a class="title-3" onclick="titlequery(this)">湿纸巾</a><a class="title-3" onclick="titlequery(this)">洗衣液</a>
	     <a class="title-3" onclick="titlequery(this)">洗衣粉 </a><a class="title-3" onclick="titlequery(this)">柔顺剂</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>护发护理＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">沐浴 </a><a class="title-3" onclick="titlequery(this)">润肤</a>
	     <a class="title-3" onclick="titlequery(this)">洗发</a><a class="title-3" onclick="titlequery(this)">护发 </a>
	     <a class="title-3" onclick="titlequery(this)">染发</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	   <div class="assort-two-title"><strong>潮流女包＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">双肩包 </a><a class="title-3" onclick="titlequery(this)">单肩包</a>
	     <a class="title-3" onclick="titlequery(this)">帆布包 </a><a class="title-3" onclick="titlequery(this)">小方包</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>旅行箱包＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">拉杆箱  </a><a class="title-3" onclick="titlequery(this)">电脑包 </a>
	     <a class="title-3" onclick="titlequery(this)"> 休闲运动 </a><a class="title-3" onclick="titlequery(this)"> 旅行包</a>
	     <a class="title-3" onclick="titlequery(this)"> 真皮包 </a><a class="title-3" onclick="titlequery(this)"> 水桶包  </a>
	     <a class="title-3" onclick="titlequery(this)">书包</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-5" class="assort-area" onmousemove="openarea('5')" onmouseout="closearea('5')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>运动鞋包＞</strong></div>
	  <div class="three-title-area"><a class="title-3">慢跑鞋 </a>
	  <a class="title-3" onclick="titlequery(this)">滑板鞋 </a><a class="title-3" onclick="titlequery(this)">涉水鞋  </a>
	  <a class="title-3" onclick="titlequery(this)">三叶草</a><a class="title-3" onclick="titlequery(this)">透气跑鞋</a>
	  <a class="title-3" onclick="titlequery(this)">帆布鞋 </a><a class="title-3" onclick="titlequery(this)">休闲鞋 </a>
	  <a class="title-3" onclick="titlequery(this)">板鞋</a><a class="title-3" onclick="titlequery(this)"> 篮球鞋</a>
	  <a class="title-3" onclick="titlequery(this)">足球鞋 </a><a class="title-3" onclick="titlequery(this)">运动包 </a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>运动服饰＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">T恤  </a><a class="title-3" onclick="titlequery(this)">运动裤 </a>
	     <a class="title-3" onclick="titlequery(this)">卫衣/套头衫 </a><a class="title-3" onclick="titlequery(this)">夹克/风衣 </a>
	     <a class="title-3" onclick="titlequery(this)">棉服</a><a class="title-3" onclick="titlequery(this)"> 羽绒服 </a>
	     <a class="title-3" onclick="titlequery(this)">运动套装</a><a class="title-3" onclick="titlequery(this)"> 运动配饰</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>健身训练＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">跑步机 </a><a class="title-3" onclick="titlequery(this)">动感单车 </a>
	     <a class="title-3" onclick="titlequery(this)">仰卧板  </a><a class="title-3" onclick="titlequery(this)">运动器材 </a>
	     <a class="title-3" onclick="titlequery(this)">护具</a><a class="title-3 onclick="titlequery(this)"">舞蹈瑜伽</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>户外鞋服＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">冲锋衣裤  </a><a class="title-3" onclick="titlequery(this)">羽绒服棉服  </a>
	     <a class="title-3" onclick="titlequery(this)">越野跑鞋 </a><a class="title-3" onclick="titlequery(this)"> 登山鞋  
	      </a><a class="title-3" onclick="titlequery(this)">休闲鞋</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>户外装备＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">帐篷 </a><a class="title-3" onclick="titlequery(this)">照明   </a>
	     <a class="title-3" onclick="titlequery(this)">背包  </a><a class="title-3" onclick="titlequery(this)">智能手环</a>
	     <a class="title-3" onclick="titlequery(this)">工具  </a><a class="title-3" onclick="titlequery(this)"> 望远镜   </a>
	     <a class="title-3" onclick="titlequery(this)">旅游用品  </a><a class="title-3" onclick="titlequery(this)">便携桌椅床 </a>
	     <a class="title-3" onclick="titlequery(this)">野餐烧烤</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	   <div class="assort-two-title"><strong>骑行运动＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">山地车  </a><a class="title-3" onclick="titlequery(this)"> 电动车 </a>
	     <a class="title-3" onclick="titlequery(this)">电动滑板车 </a><a class="title-3" onclick="titlequery(this)">骑行穿戴装备 </a>
	     <a class="title-3" onclick="titlequery(this)">公路车 </a><a class="title-3" onclick="titlequery(this)">平衡车</a>
	     <a class="title-3" onclick="titlequery(this)">折叠车 </a><a class="title-3" onclick="titlequery(this)">教育培训 </a>
	     <a class="title-3" onclick="titlequery(this)">装车服务</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>游泳垂钓＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">垂钓季  </a><a class="title-3" onclick="titlequery(this)">浮漂鱼饵 </a>
	     <a class="title-3" onclick="titlequery(this)">钓鱼箱包 </a><a class="title-3" onclick="titlequery(this)">鱼竿鱼线 </a>
	     <a class="title-3" onclick="titlequery(this)">钓鱼配件 </a><a class="title-3" onclick="titlequery(this)">钓鱼桌椅 </a>
	     <a class="title-3" onclick="titlequery(this)">泳镜  </a><a class="title-3" onclick="titlequery(this)">冲浪潜水</a>
	     <a class="title-3" onclick="titlequery(this)">游泳包 </a><a class="title-3" onclick="titlequery(this)">防水包 </a>
	     <a class="title-3" onclick="titlequery(this)">泳帽书包</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-6" class="assort-area" onmousemove="openarea('6')" onmouseout="closearea('6')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>新品热门＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">婴儿礼盒 </a><a class="title-3" onclick="titlequery(this)">儿童内衣 </a>
	     <a class="title-3" onclick="titlequery(this)">童装女 </a><a class="title-3" onclick="titlequery(this)">童装男</a>
	     <a class="title-3" onclick="titlequery(this)">运动鞋</a><a class="title-3" onclick="titlequery(this)">女童套装</a>
	     <a class="title-3" onclick="titlequery(this)">男童套装 </a><a class="title-3" onclick="titlequery(this)">宝宝馆</a>
	     <a class="title-3" onclick="titlequery(this)">婴儿连体</a><a class="title-3" onclick="titlequery(this)"> 运动裤 </a>
	     <a class="title-3" onclick="titlequery(this)">跑步鞋</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>精选童装＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">品质童装</a><a class="title-3" onclick="titlequery(this)">上衣 </a>
	     <a class="title-3" onclick="titlequery(this)">外套  </a><a class="title-3" onclick="titlequery(this)">裤子</a>
	     <a class="title-3" onclick="titlequery(this)">亲子装  </a><a class="title-3" onclick="titlequery(this)">自营童装</a>
	     <a class="title-3" onclick="titlequery(this)">儿童套装</a><a class="title-3" onclick="titlequery(this)"> 毛衣</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>益智玩具＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">早教机</a><a class="title-3" onclick="titlequery(this)">点读笔 </a>
	     <a class="title-3" onclick="titlequery(this)">早教教具 </a><a class="title-3" onclick="titlequery(this)">床铃/摇铃 </a>
	     <a class="title-3" onclick="titlequery(this)">挂图 </a><a class="title-3" onclick="titlequery(this)">儿童电子琴</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>遥控电动＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">遥控车</a><a class="title-3" onclick="titlequery(this)">遥控飞机</a>
	     <a class="title-3" onclick="titlequery(this)">遥控船 </a><a class="title-3" onclick="titlequery(this)">机器人</a>
	     <a class="title-3" onclick="titlequery(this)">轨道/助力</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>积木拼插＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">乐高 </a><a class="title-3" onclick="titlequery(this)">积木 </a>
	     <a class="title-3" onclick="titlequery(this)">磁力片 </a><a class="title-3" onclick="titlequery(this)">拼图 </a>
	     <a class="title-3" onclick="titlequery(this)">木质积木</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>健身玩具＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">炫舞毯 </a><a class="title-3" onclick="titlequery(this)">爬行垫/毯 </a>
	     <a class="title-3" onclick="titlequery(this)">户外玩具 </a><a class="title-3" onclick="titlequery(this)">戏水玩具</a>
	     <a class="title-3" onclick="titlequery(this)">儿童泳池</a>	  
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>毛绒封娃＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">娃娃</a><a class="title-3" onclick="titlequery(this)">兔子 </a>
	     <a class="title-3" onclick="titlequery(this)">公仔 </a><a class="title-3" onclick="titlequery(this)">泰迪熊</a>
	     <a class="title-3" onclick="titlequery(this)">玩具熊</a><a class="title-3" onclick="titlequery(this)">抱枕公仔</a>	  
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>
   
<div id="assort-area-7" class="assort-area" onMouseMove="openarea('7')" onMouseOut="closearea('7')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>新鲜水果＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">樱桃</a><a class="title-3" onclick="titlequery(this)">芒果</a>
	     <a class="title-3" onclick="titlequery(this)">猕猴桃</a><a class="title-3" onclick="titlequery(this)">火龙果</a>
	     <a class="title-3" onclick="titlequery(this)">苹果</a><a class="title-3" onclick="titlequery(this)">橙子</a>
	     <a class="title-3" onclick="titlequery(this)">柠檬</a><a class="title-3" onclick="titlequery(this)">荔枝</a>	
	     <a class="title-3" onclick="titlequery(this)">龙眼</a><a class="title-3" onclick="titlequery(this)">蓝莓</a>
	     <a class="title-3" onclick="titlequery(this)">梨</a><a class="title-3" onclick="titlequery(this)">桃子</a>
	     <a class="title-3" onclick="titlequery(this)">草莓</a><a class="title-3" onclick="titlequery(this)">葡萄</a>
	     <a class="title-3" onclick="titlequery(this)">哈密瓜</a><a class="title-3" onclick="titlequery(this)">枇杷</a>	
	     <a class="title-3" onclick="titlequery(this)">李子</a><a class="title-3" onclick="titlequery(this)">西瓜</a>
	     <a class="title-3" onclick="titlequery(this)">菠萝</a><a class="title-3" onclick="titlequery(this)">香蕉</a>	
	     <a class="title-3" onclick="titlequery(this)">杨桃</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>精选肉类＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">羊肉</a><a class="title-3" onclick="titlequery(this)">鸡肉</a>
	     <a class="title-3" onclick="titlequery(this)">鸭肉</a><a class="title-3" onclick="titlequery(this)">冷鲜肉</a>
	     <a class="title-3" onclick="titlequery(this)">牛排</a><a class="title-3" onclick="titlequery(this)">鸡腿</a>
	     <a class="title-3" onclick="titlequery(this)">鸡翅</a><a class="title-3" onclick="titlequery(this)">牛腩</a>	
	     <a class="title-3" onclick="titlequery(this)">冷藏熟食</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>海鲜水产＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">鱼类</a><a class="title-3" onclick="titlequery(this)">蟹类</a>
	     <a class="title-3" onclick="titlequery(this)">贝类</a><a class="title-3" onclick="titlequery(this)">海带</a>
	     <a class="title-3" onclick="titlequery(this)">海参</a><a class="title-3" onclick="titlequery(this)">大闸蟹</a>
	     <a class="title-3" onclick="titlequery(this)">鱼丸</a><a class="title-3" onclick="titlequery(this)">虾仁</a>	
	     <a class="title-3" onclick="titlequery(this)">冻虾</a><a class="title-3" onclick="titlequery(this)">小龙虾</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>冷冻食品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">水饺</a><a class="title-3" onclick="titlequery(this)">馄饨</a>
	     <a class="title-3" onclick="titlequery(this)">汤圆</a><a class="title-3" onclick="titlequery(this)">冰淇淋</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>进口食品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">进口零食</a><a class="title-3" onclick="titlequery(this)">进口牛奶</a>
	     <a class="title-3" onclick="titlequery(this)">进口饼干</a><a class="title-3">进口蛋糕</a>
	     <a class="title-3" onclick="titlequery(this)">进口糖果</a><a class="title-3" onclick="titlequery(this)">进口坚果</a>
	     <a class="title-3" onclick="titlequery(this)">进口果干</a><a class="title-3" onclick="titlequery(this)">进口巧克力</a>	
	     <a class="title-3" onclick="titlequery(this)">进口葡萄酒</a><a class="title-3" onclick="titlequery(this)">进口咖啡粉</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>休闲食品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">营养零食</a><a class="title-3" onclick="titlequery(this)">休闲零食</a>
	     <a class="title-3" onclick="titlequery(this)">膨化食品</a><a class="title-3" onclick="titlequery(this)">坚果炒货</a>
	     <a class="title-3" onclick="titlequery(this)">肉干/熟食</a><a class="title-3" onclick="titlequery(this)">蜜饯果干</a>
	     <a class="title-3" onclick="titlequery(this)">糖果</a><a class="title-3" onclick="titlequery(this)">巧克力</a>	
	     <a class="title-3" onclick="titlequery(this)">饼干</a><a class="title-3" onclick="titlequery(this)">蛋糕</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>精品茗茶＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">铁观音</a><a class="title-3" onclick="titlequery(this)">普洱</a>
	     <a class="title-3" onclick="titlequery(this)">龙井</a><a class="title-3" onclick="titlequery(this)">绿茶</a>
	     <a class="title-3" onclick="titlequery(this)">红茶</a> <a class="title-3" onclick="titlequery(this)">乌龙茶</a>
	     <a class="title-3" onclick="titlequery(this)">花草茶</a><a class="title-3" onclick="titlequery(this)">花果茶</a>
	     <a class="title-3" onclick="titlequery(this)">黑茶</a><a class="title-3" onclick="titlequery(this)">白茶</a>
	     <a class="title-3" onclick="titlequery(this)">养生茶</a>	  
	    <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>
     
<div id="assort-area-8" class="assort-area" onMouseMove="openarea('8')" onMouseOut="closearea('8')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>热销食品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">进口牛奶</a><a class="title-3" onclick="titlequery(this)"> 巧克力</a>
	     <a class="title-3" onclick="titlequery(this)">橄榄油</a><a class="title-3" onclick="titlequery(this)">零食 </a>
	     <a class="title-3" onclick="titlequery(this)">坚果</a><a class="title-3" onclick="titlequery(this)">肉干</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>饮料茗茶＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">绿茶</a><a class="title-3" onclick="titlequery(this)"> 普洱 </a>
	     <a class="title-3" onclick="titlequery(this)">铁观音 </a><a class="title-3" onclick="titlequery(this)">牛奶</a>
	     <a class="title-3" onclick="titlequery(this)">饮料</a><a class="title-3" onclick="titlequery(this)">咖啡</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>食品礼券＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">食用油 </a><a class="title-3" onclick="titlequery(this)"> 大米  </a>
	     <a class="title-3" onclick="titlequery(this)">速食 </a><a class="title-3" onclick="titlequery(this)">月饼</a>
	     <a class="title-3" onclick="titlequery(this)">粽子</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>海外直采＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">1855 </a><a class="title-3" onclick="titlequery(this)">奔富 </a>
	     <a class="title-3" onclick="titlequery(this)"> 干露</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>陈年老酒＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">茅台 </a><a class="title-3" onclick="titlequery(this)"> 五粮液 </a>
	     <a class="title-3" onclick="titlequery(this)">泸州老窖 </a><a class="title-3" onclick="titlequery(this)">劲牌 </a>
	     <a class="title-3" onclick="titlequery(this)">古越 </a><a class="title-3" onclick="titlequery(this)">龙山</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-9" class="assort-area" onMouseMove="openarea('9')" onMouseOut="closearea('9')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>收纳用品＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">收纳袋/包</a><a class="title-3" onclick="titlequery(this)"> 收纳箱/盒 </a>
	     <a class="title-3" onclick="titlequery(this)">收纳柜</a><a class="title-3" onclick="titlequery(this)"> 收纳架/篮  </a>
	     <a class="title-3" onclick="titlequery(this)">防尘罩</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
	  <div class="assort-two-title"><strong>生活日用＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">雨伞</a><a class="title-3" onclick="titlequery(this)"> 雨具 </a>
	     <a class="title-3" onclick="titlequery(this)">浴室用品</a><a class="title-3" onclick="titlequery(this)"> 保暖防护</a>
	     <a class="title-3" onclick="titlequery(this)"> 缝纫针织 </a><a class="title-3" onclick="titlequery(this)">洗晒熨烫</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>家装软饰＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">相框/照片墙</a><a class="title-3" onclick="titlequery(this)"> 地毯</a>
	     <a class="title-3" onclick="titlequery(this)">地垫</a><a class="title-3" onclick="titlequery(this)">十字绣 </a>
	     <a class="title-3" onclick="titlequery(this)">装饰字画 </a><a class="title-3" onclick="titlequery(this)">装饰摆件</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>	  
	  <div class="assort-two-title"><strong>净化除味＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">活性炭</a><a class="title-3" onclick="titlequery(this)"> 光触媒 </a>
	     <a class="title-3" onclick="titlequery(this)">检测仪</a><a class="title-3" onclick="titlequery(this)"> 除味剂 </a>
	     <a class="title-3" onclick="titlequery(this)">除醛剂</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>	  
	  <div class="assort-two-title"><strong>餐厅书房＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">餐桌</a><a class="title-3" onclick="titlequery(this)"> 餐边柜</a>
	     <a class="title-3" onclick="titlequery(this)"> 酒柜</a><a class="title-3" onclick="titlequery(this)">餐椅 </a>
	     <a class="title-3" onclick="titlequery(this)">书桌 </a><a class="title-3" onclick="titlequery(this)">书椅 </a>
	     <a class="title-3" onclick="titlequery(this)">书柜</a><a class="title-3" onclick="titlequery(this)"> 书架</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>  
	  <div class="assort-two-title"><strong>阳台储物＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)"> 晾衣架</a><a class="title-3" onclick="titlequery(this)"> 折叠床 </a>
	     <a class="title-3" onclick="titlequery(this)">户外家具</a><a class="title-3" onclick="titlequery(this)">鞋架 </a>
	     <a class="title-3" onclick="titlequery(this)">衣帽架 </a><a class="title-3" onclick="titlequery(this)">置物架</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>	  
	  <div class="assort-two-title"><strong>客厅卧室＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">沙发</a><a class="title-3" onclick="titlequery(this)">茶几 </a>
	     <a class="title-3" onclick="titlequery(this)">电视柜</a><a class="title-3" onclick="titlequery(this)"> 鞋柜</a>
	     <a class="title-3" onclick="titlequery(this)"> 床</a><a class="title-3" onclick="titlequery(this)"> 床垫</a>
	     <a class="title-3" onclick="titlequery(this)"> 衣柜 </a><a class="title-3" onclick="titlequery(this)">简易衣柜</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div id="assort-area-10" class="assort-area" onMouseMove="openarea('10')" onMouseOut="closearea('10')">
   <div style="float:left;">
	  <div class="assort-two-title"><strong>热销乐器＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">电子琴</a><a class="title-3" onclick="titlequery(this)">电钢琴 </a>
	     <a class="title-3" onclick="titlequery(this)"> 吉他/尤克里里 </a><a class="title-3" onclick="titlequery(this)">钢琴 </a>
	     <a class="title-3" onclick="titlequery(this)"> 民乐</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
      </div>
      <div class="assort-two-title"><strong>文学综合＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">小说 </a><a class="title-3" onclick="titlequery(this)"> 文学 </a>
	     <a class="title-3" onclick="titlequery(this)"> 传记 </a><a class="title-3" onclick="titlequery(this)">科幻  </a>
	     <a class="title-3" onclick="titlequery(this)"> 悬疑 </a><a class="title-3" onclick="titlequery(this)"> 散文</a>
	     <a class="title-3" onclick="titlequery(this)"> 青春</a><a class="title-3" onclick="titlequery(this)"> 动漫 </a>
	     <a class="title-3" onclick="titlequery(this)"> 纪实 </a><a class="title-3" onclick="titlequery(this)"> 惊悚</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>综合成功＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">管理 </a><a class="title-3" onclick="titlequery(this)">经济</a>
	     <a class="title-3" onclick="titlequery(this)"> 投资</a><a class="title-3" onclick="titlequery(this)"> 会计 </a>
	     <a class="title-3" onclick="titlequery(this)">营销 </a><a class="title-3" onclick="titlequery(this)">女性励志</a>
	     <a class="title-3" onclick="titlequery(this)"> 心灵鸡汤 </a><a class="title-3" onclick="titlequery(this)">社交</a>
	     <a class="title-3" onclick="titlequery(this)"> 口才</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>	  
	  <div class="assort-two-title"><strong>人文社科＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">政治军事 </a><a class="title-3" onclick="titlequery(this)">国学古籍</a>
	     <a class="title-3" onclick="titlequery(this)"> 历史</a><a class="title-3" onclick="titlequery(this)"> 心理 </a>
	     <a class="title-3" onclick="titlequery(this)">哲学宗教</a><a class="title-3" onclick="titlequery(this)"> 社会科学 </a>
	     <a class="title-3" onclick="titlequery(this)">文化</a><a class="title-3" onclick="titlequery(this)"> 法律</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>艺术生活＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)">孕产胎教 </a><a class="title-3" onclick="titlequery(this)">育儿家教 </a>
	     <a class="title-3" onclick="titlequery(this)">美食家居 </a><a class="title-3" onclick="titlequery(this)">健身保健 </a>
	     <a class="title-3" onclick="titlequery(this)">旅游地图 </a><a class="title-3" onclick="titlequery(this)">美妆 </a>
	     <a class="title-3" onclick="titlequery(this)">体育</a><a class="title-3" onclick="titlequery(this)"> 娱乐休闲</a>
	     <a class="title-3" onclick="titlequery(this)"> 婚恋两性 </a><a class="title-3" onclick="titlequery(this)">绘画  </a>
	     <a class="title-3" onclick="titlequery(this)">书法</a><a class="title-3" onclick="titlequery(this)"> 摄影</a>
	     <a class="title-3" onclick="titlequery(this)"> 音乐 </a><a class="title-3" onclick="titlequery(this)">设计</a>
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
	  <div class="assort-two-title"><strong>儿童书馆＞</strong></div>
	  <div class="three-title-area">
	     <a class="title-3" onclick="titlequery(this)"> 0-2</a><a class="title-3" onclick="titlequery(this)"> 3-6 </a>
	     <a class="title-3" onclick="titlequery(this)">7-10 </a><a class="title-3" onclick="titlequery(this)">11-14 </a>
	     <a class="title-3" onclick="titlequery(this)">绘本 </a><a class="title-3" onclick="titlequery(this)">科普百科  </a>
	     <a class="title-3" onclick="titlequery(this)">儿童文学</a><a class="title-3" onclick="titlequery(this)">幼儿启蒙</a>
	     <a class="title-3" onclick="titlequery(this)">动漫卡通  </a><a class="title-3" onclick="titlequery(this)">少儿英语</a>
	     <a class="title-3" onclick="titlequery(this)">益智游戏</a>	
	     <div style="float:left; width:100%; height:10px;"></div>
	  </div>
   </div>
</div>

<div class="ti-top-title-area">
   <div class="title-left-1100"><a>fantasy</a></div>
   <div class="title-width-80"><a>免费注册</a></div>
   <div class="title"><strong>|</strong></div>
   <div class="title-width-80"><a>我的啄木鸟</a></div>
   <div class="title"><strong>|</strong></div>
   <div class="title-width-80"><a>个人中心</a></div>
</div>
<div class="div_query">
   <div class="query_input" style="margin-left:471px;"><input id="keyword" type="text" class="input-commset"/></div>
   <div class="query_button"><button class="button_1" onclick="commquery()">搜索</button></div>
   <div id="shoppcart" class="shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">我的购物车</div>
   <div id="shoppcart-column" class="shoppcart_column" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">
      <div class="sc-top-title">最新加入的商品</div>
      <div id="all-shoppcart-goods" style="height:auto; overflow:auto; max-height:150px;">
      </div>
      <div class="sc-comm-total">
         <span id="shoppcart-goods-total-number"></span>&nbsp;&nbsp;
         <span id="shoppcart-goods-total-price"></span>
         <div class="sc-go" onclick="jumpbill()">去购物车</div>
      </div>
   </div>
   <div id="patch-line-shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()"></div>
</div>

<div id="div-poster" class="div-poster" style="background:url(../../images/commodity/dp1.jpg); background-size:100% 100%;"></div>
<div id="div-poster-block"class="div-poster-block" style="background:url(../../images/commodity/tu1.jpg); background-size:100% 100%;"></div>
<br style="display:inline; line-height:145px;">
<div class="div-poster-block" style="background:url(../../images/commodity/tu2.jpg); background-size:100% 100%;"></div>
<br style="display:inline; line-height:145px;">
<div class="div-poster-block" style="background:url(../../images/commodity/tu33.jpg); background-size:100% 100%;"></div>

<div id="recommend" class="div-recommend">
   <div style="float:left; width:200px; height:100%; background:url(../../images/commodity/picc.jpg); background-size:100% 100%;"></div>
   <div id="recommend-1" style="float:left; width:204px; height:100%; background:#FFFFFF;">
      <div class="update" style="margin-top:100px;" onclick="updaterecommend()">＜</div>      
      <div style="width:183px; height:70%; margin-left:10px; background:url(../../images/picture/pic1.jpg); background-size:100% 100%;"></div>
      <div class="recommend-name">Acer/宏碁 蜂鸟3 SF314旗舰版 轻薄 14英寸八代i5 便携手提女生笔记本</div>
      <div style="width:183px; height:15%; margin-left:10px;">
         <div class="reduce-price">￥<span>5499.00</span></div>
         <div class="prime-price">￥<span style="text-decoration:line-through;">6099.00</span></div>
      </div>
   </div>  
   <div id="recommend-2" class="recommend">
      <div style="width:183px; height:70%; margin-left:10px; background:url(../../images/picture/pic2.jpg); background-size:100% 100%;"></div>
      <div class="recommend-name">森麦  魔鬼猫音魔  耳机头戴式  电脑游戏吃鸡手机耳麦 重低音音乐带话筒隔音降噪
      </div>
      <div style="width:203px; height:15%; margin-left:10px;">
         <div class="reduce-price">￥<span>168.00</span></div>
         <div class="prime-price">￥<span style="text-decoration:line-through;">269.00</span></div> 
      </div>
   </div>  
   <div id="recommend-3" class="recommend">
      <div style="width:183px; height:70%; margin-left:10px;background:url(../../images/picture/pic3.jpg); background-size:100% 100%;"></div>
      <div class="recommend-name">美可卓 澳洲进口 成人奶粉蓝胖子脱脂牛奶粉低脂女士冲饮早餐</div>
      <div style="width:183px; height:15%; margin-left:10px;">
         <div class="reduce-price">￥<span>128.00</span></div>
         <div class="prime-price">￥<span style="text-decoration:line-through;">196.00</span></div>
      </div>
   </div>  
   <div id="recommend-4" class="recommend">
      <div style="width:183px; height:70%; margin-left:10px; background:url(../../images/picture/pic4.jpg); background-size:100% 100%;"></div>
      <div class="recommend-name">OliviaBurton  腕表  英国小众 手表dw/ob手表女士正品简约潮流石英表
      </div>
      <div style="width:183px; height:15%; margin-left:10px;">
         <div class="reduce-price">￥<span>880.00</span></div>
         <div class="prime-price">￥<span style="text-decoration:line-through;">1690.00</span></div>
      </div>
   </div>   
   <div id="recommend-5" class="recommend">
      <div class="update" style="margin-top:100px; margin-left:178px;" onclick="updaterecommend()">＞</div>
      <div style="width:183px; height:70%; margin-left:10px; background:url(../../images/picture/pic5.jpg); background-size:100% 100%;"></div>
      <div class="recommend-name">正品 VOTO IX20 刘海屏 全网通 智能手机 游戏学生 全面屏
      </div>
      <div style="width:183px; height:15%; margin-left:10px;">
         <div class="reduce-price">￥<span>828.00</span></div>
         <div class="prime-price">￥<span style="text-decoration:line-through;">1756.00</span></div>
      </div>
   </div> 
</div>
</body>
</html>