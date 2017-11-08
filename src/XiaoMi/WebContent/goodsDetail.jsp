<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${goods.name }</title>
<link type="text/css" href="css/css.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/wb.js" type="text/javascript" charset="utf-8"></script>
<script src="js/MagicZoom.js" type="text/javascript"></script>
<script type="text/javascript">
			$(function(){
				$("#add").click(function(){
					var varl = $("#goodsAmountInput").val();
					
					$("#goodsAmountInput").val(parseInt(varl)+1);
				});
				$("#sub").click(function(){
					var varl = $("#goodsAmountInput").val();
					if(parseInt(varl)-1>=1)
						$("#goodsAmountInput").val(parseInt(varl)-1);
				});
			});
		</script>
</head>

<body>
 <div class="mianCont">
  <div class="top">
   <span>您好！欢迎来到小米商城</span>
   <span class="topRight">
    <a href="vip.html">我的小米</a>&nbsp;| 
    <a href="vipOrder.html">我的订单</a>&nbsp;| 
    <a href="login.html">会员中心</a>&nbsp;|
    <a href="contact.html">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
   <h1 class="logo"><a href="xiaomi.html"><img src="images/logo.png" width="217" height="90" /></a></h1>
   <form action="GoodsController?op=searchGoodsShow&pageNum=1" method="post" class="subBox">
    <div class="subBoxDiv">
     <input type="text" name="name" class="subLeft" />
     <input type="image" src="images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
      热门搜索：
      <a href="#.html">小米6</a>&nbsp;
      <a href="#.html">红米NOTE 4X</a> &nbsp;
      <a href="#.html">小米MIX</a>&nbsp;
      <a href="#.html">小米手机5c</a>&nbsp;
      <a href="#.html">手环</a>
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
     <a href="#"><img src="images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" /></a>
     <strong class="red">&nbsp;&nbsp;&nbsp;&nbsp;</strong>|
     <strong class="red">&nbsp;&nbsp;</strong> 
     <a href="shoppingcartController?op=shopCar">购物车</a> <img src="images/youjian.jpg" width="5" height="8" />    
    </div><!--gouCar/-->
    <div class="myChunlv">
     <a href="userInfo.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->
  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">所有商品分类
     <ul class="InPorNav">
     <li><a href="#">手机 平板 电话卡</a>
      <div class="chilInPorNav">
       <a href="#">小米6</a>
       <a href="#">红米NOTE 4X</a>
       <a href="#">小米MIX</a>
       <a href="#">小米手机5c</a>
       <a href="#">小米5plus</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">电视 盒子</a>
      <div class="chilInPorNav">
       <a href="#">小米电视3s</a>
       <a href="#">小米电视4</a>
       <a href="#">小米电视4A</a>
       <a href="#">小米盒子3s</a>
       <a href="#">小米盒子3c</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">耳机 音响</a>
      <div class="chilInPorNav">
       <a href="#">小米头戴式耳机</a>
       <a href="#">小米降噪耳机</a>
       <a href="#">小米圈铁耳机</a>
       <a href="#">小米胶囊耳机</a>
       <a href="#">小米蓝牙音响</a>
       <a href="#">小钢炮音箱</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">保护套 后盖</a>
      <div class="chilInPorNav">
       <a href="#">贴膜</a>
       <a href="#">保护套</a>
       <a href="#">保护壳</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">电池 存储卡</a>
      <div class="chilInPorNav">
       <a href="#">小米移动电源</a>
       <a href="#">移动电源附件</a>
       <a href="#">彩虹5号电池</a>
       <a href="#">存储卡</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">米兔 服装</a>
      <div class="chilInPorNav">
       <a href="#">米兔玩偶</a>
       <a href="#">毛巾/浴巾</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">箱包 其他周边</a>
      <div class="chilInPorNav">
       <a href="#">小米会刊</a>
       <a href="#">乳胶床品</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">路由器 智能硬件</a>
      <div class="chilInPorNav">
       <a href="#">9号平衡车</a>
       <a href="#">小米VR眼睛</a>
       <a href="#">净化器</a>
       <a href="#">血压计</a>
      </div><!--chilLeftNav/-->
     </li>
    </ul><!--InPorNav/-->
    </h2>
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li><a href="xiaomi.html">商城首页</a></li>
     <li class="navCur"><a href="product.html">促销中心</a></li>
     <li><a href="login.html">会员中心</a></li>
     <li><a href="help.html">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：400-100-5678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="xiaomi.html">首页</a> &gt; <a href="#" class="posCur">商品</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft">
    <ul class="leftPorNav">
     <li><a href="#">手机 平板 电话卡</a>
      <div class="chilInPorNav">
       <a href="#">小米6</a>
       <a href="#">红米NOTE 4X</a>
       <a href="#">小米MIX</a>
       <a href="#">小米手机5c</a>
       <a href="#">小米5plus</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">电视 盒子</a>
      <div class="chilInPorNav">
       <a href="#">小米电视3s</a>
       <a href="#">小米电视4</a>
       <a href="#">小米电视4A</a>
       <a href="#">小米盒子3s</a>
       <a href="#">小米盒子3c</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">耳机 音响</a>
      <div class="chilInPorNav">
       <a href="#">小米头戴式耳机</a>
       <a href="#">小米降噪耳机</a>
       <a href="#">小米圈铁耳机</a>
       <a href="#">小米胶囊耳机</a>
       <a href="#">小米蓝牙音响</a>
       <a href="#">小钢炮音箱</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">保护套 后盖</a>
      <div class="chilInPorNav">
       <a href="#">贴膜</a>
       <a href="#">保护套</a>
       <a href="#">保护壳</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">电池 存储卡</a>
      <div class="chilInPorNav">
       <a href="#">小米移动电源</a>
       <a href="#">移动电源附件</a>
       <a href="#">彩虹5号电池</a>
       <a href="#">存储卡</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">米兔 服装</a>
      <div class="chilInPorNav">
       <a href="#">米兔玩偶</a>
       <a href="#">毛巾/浴巾</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">箱包 其他周边</a>
      <div class="chilInPorNav">
       <a href="#">小米会刊</a>
       <a href="#">乳胶床品</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="#">路由器 智能硬件</a>
      <div class="chilInPorNav">
       <a href="#">9号平衡车</a>
       <a href="#">小米VR眼睛</a>
       <a href="#">净化器</a>
       <a href="#">血压计</a>
      </div><!--chilLeftNav/-->
     </li>
    </ul><!--InPorNav/-->
   </div><!--contLeft/-->
   <div class="contRight" style="border:0;">
   <div class="proBox">
   <div id="tsShopContainer">
	<div id="tsImgS"><a href="${goods.img }" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="${goods.img }" /></a></div>
	<div id="tsPicContainer">
		<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
		<div id="tsImgSCon">
			<ul>
				<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="${goods.img }" tsImgS="${goods.img }" /></li>
				<li onclick="showPic(1)"><img height="42" width="42" src="${goods.img }" tsImgS="${goods.img }" /></li>
				<li onclick="showPic(2)"><img height="42" width="42" src="${goods.img }" tsImgS="${goods.img }" /></li>
				<li onclick="showPic(3)"><img height="42" width="42" src="${goods.img }" tsImgS="${goods.img }" /></li>
				<li onclick="showPic(4)"><img height="42" width="42" src="${goods.img }" tsImgS="${goods.img }" /></li>
			</ul>
		</div>
		<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
	</div>
	<img class="MagicZoomLoading" width="16" height="16" src="images/loading.gif" alt="Loading..." />
    <script src="js/ShopShow.js"></script>
    </div><!--tsShopContainer/-->
    <div class="proBoxRight">
     <h3 class="proTitle">${goods.name }</h3>
     <div>商品编号：${goods.id} </div>
     <div>会员价：<strong class="red">${goods. price}</strong> </div>
     <div>单位：个</div>
     <div>库存：<strong class="red">[有货] </strong> 从${goods.addr}发货</div>
     <ul class="rongliang">
      <li>豪华套餐</li>
      <li>套餐一</li>
      <li>套餐二</li>
      <div class="clears"></div>
     </ul><!--rongliang/-->
     <div class="shuliang2">
      数量： <span id="add" style="font-size: 22px">+</span>
		<input id="goodsAmountInput" type="text" name="goodsAmount" value="1" style="display: inline;width: 30px;">
		<span id="sub" style="font-size: 22px">-</span><br>
     </div><!--shuliang2/-->
     <div class="gc">
      <a href="GoodsController?op=goumai&goodsId=${goods.id}"><img src="images/goumai.png" width="117"  height="36" /></a>&nbsp;&nbsp;
      <a href="shoppingcartController?op=add&goodsId=${goods.id }"><img src="images/shoucang.png" width="117" height="36" /></a>
     </div><!--gc/-->    
    </div><!--proRight/-->
    <div class="clears"></div>
    </div><!--proBox/-->
    <ul class="fangyuan">
      <li>商品描述</li>
      <li>商品参数</li>
      <li>商品评论</li>
      <li>商品晒图</li>
      <div class="clears"></div>
    </ul><!--fangyuan/-->
    <div class="fangList">
    <div class="fangPar">
        <h3> 你值得拥有！！！！！！！<br></h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>${goods.miaoShu }<h3>
		<h3>还在等什么，赶紧下单吧！！！！！！！<br></h3>
    </div><!--fangPar/-->
    </div><!--fangList/-->
    <div class="fangList">
     商品参数
    </div><!--fangList/-->
    <div class="fangList">
     商品评论
    </div><!--fangList/-->
    <div class="fangList">
     <img src="${goods.img }" width="400" height="350" /><br /><br />
     <img src="${goods.img }" width="400" height="350" /><br /><br />
     <img src="${goods.img }" width="400" height="350" /><br /><br />
     <img src="${goods.img }" width="400" height="350" /><br /><br />
     <img src="${goods.img }" width="400" height="350" /><br /><br />
    </div><!--fangList/-->
   </div><!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="help.html">购物指南</a></li>
     <li><a href="help.html">支付方式</a></li>
     <li><a href="help.html">售后服务</a></li>
     <li><a href="#">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="regist.html">会员注册</a></li>
     <li><a href="login.html">会员登录</a></li>
     <li><a href="shoppingcartController?op=shopCar">购物车</a></li>
     <li><a href="#">我的订单</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHRight">
    <h4>全国统一免费服务热线</h4>
    <div class="telBox">400-100-5678</div>
    <div class="weibo">
    <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
   </div><!--inHRight/-->
   <div class="clears"></div>
  </div><!--inHelp/-->
  <div class="footer">
   <p>
   <a href="xiaomi.html">进入小米官网</a>&nbsp;|&nbsp;
   <a href="xiaomi.html">商城首页</a>&nbsp;|&nbsp;
   <a href="#">促销中心</a>&nbsp;|&nbsp;
   <a href="#">我的订单</a>&nbsp;|&nbsp;
   <a href="#">新闻动态</a>&nbsp;|&nbsp;
   <a href="login.html">会员中心</a>&nbsp;|&nbsp;
   <a href="#">帮助中心</a>
   </p>
  </div><!--footer/-->
 </div><!--mianCont/-->
</body>
</html>