<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>小米商城</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body>
<div class="login-box">
	<div class="box">
        <div class="login clearFix">
            <ul class="left">
                <li><a href="xiaomi.html">小米</a></li>
                <li><a href="#.html">MIUI</a></li>
                <li><a href="#.html">米聊</a></li>
                <li><a href="#.html">游戏</a></li>
                <li><a href="#.html">多看阅读</a></li>
                <li><a href="#.html">云服务</a></li>
                <li><a href="#.html">小米网移动版</a></li>
                <li><a href="#.html">问题反馈</a></li>
                <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">商品展示</a></li>
                <li><a href="sec/goodsAdd.jsp">管理员入口</a></li>
                <li><a href="#.html">Select</a></li>
            </ul>
            <ul class="right">
            	<li style="color: #A4A4A4;font-size: 10px;margin-right: 150px">
            	欢迎<a href="#" style="color: red">
               		 <% String name = request.getParameter("uname");
                		out.print(name);%>
               	 </a>进入小米商城</li>
                <li><a href="xiaomi.html" style="color: red">注销</a></li>
                <li class="buy-in">
                	<a href="shoppingcartController?op=shopCar" class="buy">购物车（0）</a>
                    <span>购物车中还没有商品，赶快选购吧！</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="box">
	<div class="nav-box clearFix">
    	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="left logo1">
        	<img class="left"; src="images/logo1.png">
        </a>
        <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="left logo2">
            <img class="left"; src="images/logo2.png">
        </a>
        <ul class="left">
        	<li>
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=1&pageNum=1">小米手机</a>
            </li>
            <li>
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=1&pageNum=1">红米</a>
            </li>
            <li>
            	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">平板</a>
            </li>
            <li>
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=2&pageNum=1">电视</a>
            </li>
            <li>
            	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">盒子</a>
            </li>
            <li>
            	<a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=205">路由器</a>
            </li>
            <li>
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=5&pageNum=1">智能硬件</a>
            </li>
            <li>
            	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">服务</a>
            </li>
            <li>
            	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">社区</a>
            </li>
        </ul>
        <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="input"><img src="images/input.png"></a>
    </div>
    
    <div class="banner-box">
    	<ul class="left-side left">
        	<li class="pad-li">
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=1&pageNum=1">手机&nbsp;平板&nbsp;电话卡&nbsp;</a>
                
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=2&pageNum=1">电视&nbsp;盒子&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=5&pageNum=1">路由器&nbsp;智能硬件&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">移动电源&nbsp;插线板&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=4&pageNum=1">耳机&nbsp;音响&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=7&pageNum=1">电池&nbsp;存储卡&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=7&pageNum=1">保护套&nbsp;后盖&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=7&pageNum=1">贴膜&nbsp;其他配件&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=6&pageNum=1">米兔&nbsp;服装&nbsp;</a>
            </li>
            <li >
            	<a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=7&pageNum=1">箱包&nbsp;其他周边&nbsp;</a>
            </li>
        </ul>
        <div class="button">
            <input name="tab" type="radio" checked>
            <input name="tab" type="radio" checked>
    		<input name="tab" type="radio" checked >
            <input name="tab" type="radio" checked >
            <input name="tab" type="radio" checked > 
            <img class="img1" src="images/nav4.jpg">
            <img class="img2" src="images/nav1.jpg">
            <img class="img3" src="images/nav2.jpg">
            <img class="img4" src="images/nav3.jpg">
            <img class="img5" src="images/banner.png">
        </div>
    	
    </div>
    
    <div class="ad-box ">
    	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/ad-1.png"> </a>
        <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="shadow"><img src="images/bannera.png"></a>
        <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="shadow"><img src="images/bannerb.png"></a>
        <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="ad-below shadow"><img src="images/bannerc.png"></a>
    </div>
    <div class="superstar-box ">
    	<div class="clearFix super-title">
        	<h2 class="left">小米明星单品</h2>
            <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
            <img class="right" src="images/jianb.png">
            </a>
            <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
            <img class="right" src="images/jiana.png">
            </a>
        </div>
        <ul class="clearFix">
        	<li class="mi-phone">
            	<a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=204">
                	<img src="images/1.png">
                </a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=204">小米Note</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=204">标准版/女神版，HiFi双卡双待</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=204">1499元起</a>
            </li>
            <li class="mi-phone">
            	<a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">
                	<img src="images/2.png">
                </a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">小米手机4c</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">骏龙808旗舰手机，爱不释手</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">1099元</a>
            </li>
            <li class="mi-phone">
            	<a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">
                	<img src="images/2.png">
                </a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">小米盒子3 增强版</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">高端 4K 网络机顶盒</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=202">399元</a>
            </li>
            <li class="mi-phone">
            	<a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">
                	<img src="images/4.png">
                </a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">小米净水器 厨上式</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">RO反渗透直出纯净水</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">1299元</a>
            </li>	
            <li class="mi-phone mr-0">
            	<a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">
                	<img src="images/5.png">
                </a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">移动电源10000mAh 高配版</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212" class="mi-last">支持USB Type-C充放电，双向快充</a>
                <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">149元</a>
            </li>
        </ul>
    </div>
    
    <div class="smart-box">
    	<div class="smart-title">
        	<h2 class="left">智能硬件</h2>
            <img class="right" src="images/yuanjian.png">
            <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><p class="right">查看全部</p></a>
        </div>
        <div class="below-part">
            <div class="left left-side">
                <img src="images/boy.png">
            </div>
            <ul >
            	<li class="shop-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/6.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米体重秤</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" >高精度压力传感器，手机管理家庭全家健康</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">99元</a>
                </li>
                <li class="shop-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">
                        <img src="images/7.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">小米智能插座 基础版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">手机远程操控，让普通电器变智能</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">49元</a>
                </li>
                <li class="shop-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=205">
                        <img src="images/8.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=205">小米路由器 mini</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=205" >主流双频AC智能路由器</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=205">99元</a>
                </li>
                <li class="shop-part mr-0">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/9.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米智能安防套装</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" >智能警戒，为您的家增添一份安心</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">169元 <span>188元</span></a>
                </li>
               <li class="shop-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">
                        <img src="images/10.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">小蚁运动相机</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187" >边玩边录边拍，手机随时分享</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">399元</a>
                </li>
                <li class="shop-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">
                        <img src="images/11.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">小米净水器 厨下式</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206" >RO反渗透直出纯净水，包邮包安装</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=206">1999元</a>
                </li>
                <li class="shop-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">
                        <img src="images/12.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">小米智能摄像机 夜视版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">能看能听能说，手机远程观看</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=187">149元</a>
                </li>
                <li class="shop-part mr-0">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/13.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">Yeelight床头灯</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" >触摸式操作，给卧室灯1600万种颜色</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">249元</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="back-box">
	<div class="box">
        <div class="match-box">
            <div class="match-title">
                <h2 class="left">搭配</h2>
                <ul class="right">
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="mr-0">电池存储卡</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">电源</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">耳机音响</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">热门</a></li>
                </ul>
            </div>
            <ul class="match-below">
                <li class="goods-part">
                	<a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212"><img src="images/daa.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">
                            <img src="images/14.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">小米移动电源10000mAh</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">79元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">16.4万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">
                            <img src="images/15.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">小米插线板</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">49元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=207">21.3万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=189">
                            <img src="images/16.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=189">小米蓝牙耳机</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=189">79元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=189">7万人评价</a>
                </li>
                 <li class="goods-part mr-0">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">
                            <img src="images/17.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">小米移动电源10000mAh 高配版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">149元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">6003人评价</a>
                </li>
                <li class="goods-part">
                	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/daa1.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">
                            <img src="images/18.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">小米小钢炮蓝牙音箱2</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">129元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">3352人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音响却一见钟情，说：总算&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/19.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米活塞耳机 基础版</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">29元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">1.3万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=190">
                            <img src="images/20.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=190">小米活塞耳机 标准版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=190">69元 <span>99元</span></a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=190">3.5万人评价</a>
                </li>
                 <li class="goods-part mr-0 double">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/headset.png">
                    </a>
                 </li>
                 <li class="goods-part mr-0 double"> 
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/browse.png">
                    </a>
                </li>
            </ul>
        </div>
        
        <div class="match-box">
            <div class="match-title">
                <h2 class="left">配件</h2>
                <ul class="right">
                    <li><a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=7&pageNum=1" class="mr-0">其他配件</a></li>
                    <li><a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">贴膜</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">后盖</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">保护套</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">热门</a></li>
                </ul>
            </div>
            <ul class="match-below">
                <li class="goods-part">
                	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/peia.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">
                            <img src="images/22.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">红米Note3 钢化玻璃（0.33mm）</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">19元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">2万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">
                            <img src="images/23.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">小米手机5 钢化玻璃（0.22mm）</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">29元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">21.3万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">
                            <img src="images/24.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">红米手机3标准版 超薄钢化&hellip;</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">29元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=203">1797人评价</a>
                    <p>这个玻璃膜很好！<br><b>来自182546349的评价</b></p>
                </li>
                 <li class="goods-part mr-0">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/25.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米自拍杆</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">49元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">6.4万人评价</a>
                </li>
                <li class="goods-part">
                	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/peia1.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/26.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米手机5 智能翻盖保护套</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">49元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">4597人评价</a>
                    <p>质量很好，很实用，如果说有什么缺点的话 就是太贵了<br><b>来自幕遮的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/27.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">红米Note3 炫彩翻页保护套</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">39元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">1.5万人评价</a>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/28.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">红米手机3标准版 炫彩翻盖&hellip;</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">39元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">4010人评价</a>
                </li>
                 <li class="goods-part mr-0 double">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/ring.png">
                    </a>
                  </li>
                  <li class="goods-part mr-0 double">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/browse.png">
                    </a>
                </li>
            </ul>
        </div>
        
        <div class="match-box">
            <div class="match-title">
                <h2 class="left">周边</h2>
                <ul class="right">
                    <li><a href="http://localhost:8080/XiaoMi/GoodsController?op=searchGoodsShow&pageNum=1" class="mr-0">箱包</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">生活周边</a></li>
                    <li><a href="http://localhost:8080/XiaoMi/categoryController?op=showGoodsByCategory&categoryId=6&pageNum=1">米兔</a></li>
                    <li><a href="http://localhost:8080/XiaoMi/GoodsController?op=searchGoodsShow&pageNum=1">服装</a></li>
                    <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" >热门</a></li>
                </ul>
            </div>
            <ul class="match-below">
                <li class="goods-part">
                	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/zoua.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/30.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">米兔明信片</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">9.9元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">105人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音响却一见钟情，说：总&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=182">
                            <img src="images/31.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=182">魔力红米兔钥匙扣</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=182">19.9元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=182">462人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/32.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">背带裤米兔</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">49元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">451人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音响总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part mr-0">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/33.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">帆布鞋米兔</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">49元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">377人评价</a>
                    <p>我送给我爸的小米小钢炮蓝：总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                <li class="goods-part">
                	<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1"><img src="images/zoua1.png"></a>
                </li>
                <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=181">
                            <img src="images/34.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=181">经典版米兔</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=181">29元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=181">3.8万人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音响：总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">
                            <img src="images/35.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">熊猫版米兔</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">49元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">494人评价</a>
                    <p>我送给我爸的小米小钢炮蓝：总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">
                            <img src="images/36.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">30cm坐姿米兔</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">49元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=184">897人评价</a>
                    <p>我送给我爸的小米小钢炮蓝牙音说：总算找到知音&hellip;<br><b>来自1210114672的评价</b></p>
                </li>
                 <li class="goods-part mr-0 double">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/cat.png">
                    </a>
                 </li>
                 <li class="goods-part mr-0 double">
                    <a  class="left" href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                            <img src="images/browse.png">
                    </a>
                </li>
            </ul>
        </div>
        
        <div class="superstar-box recommend";>
            <div class="clearFix super-title">
                <h2 class="left">为你推荐</h2>
                <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                <img class="right" src="images/jianb.png">
                </a>
                <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                <img class="right" src="images/jiana.png">
                </a>
            </div>
            <ul class="best-thing clearFix">
                <li class="best">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=210">
                        <img src="images/38.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=210">米兔儿童手表</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=210">299元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=210">866人好评</a>
                </li>
                <li class="best">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">
                        <img src="images/39.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">小米手环</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">69元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">10.5万人好评</a>
                </li>
                <li class="best">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">
                        <img src="images/40.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">小米手环 光感版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">99元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=220">3.4万人好评</a>
                </li>
                <li class="best">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">
                        <img src="images/41.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">小米移动电源10000mAh</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">79元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">16.4万人好评</a>
                </li>	
                <li class="best mr-0">
                    <a  class="left" href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">
                        <img src="images/42.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">移动电源10000mAh 高配版</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">149元</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=212">6003人好评</a>
                </li>
            </ul>
        </div>
        
        <div class="buzz-box">
            <div class="buzz-title">
                <h2>热评产品</h2>
            </div>
            <ul class="clearFix">
                <li class="buzz-part">
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">
                        <img src="images/43.png">
                    </a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">这小钢炮给我的感觉太震撼了，完全超过了我的意料之外，小小的东西，声音这么大，低音下沉足够，听起&hellip;</a>
                    <span>来自于 dp588 的评价</span>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">小钢炮蓝牙音响</a>
                    <a href="http://localhost:8080/XiaoMi/GoodsController?op=showGoodsDetail&goodsId=213">99元</a>
                </li>
                <li class="buzz-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/44.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">外观漂亮，比很多市面上的水质检测笔外观上干净简洁许多！水质检测试验自来水286，凉白开277，井&hellip;</a>
                    <span>来自于 紫道场 的评价</span>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米水质TDS检测笔</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">39元</a>
                </li>
                <li class="buzz-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/45.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">挺好，确实比耳机可以听出不少细节，感觉我的耳朵自己被小米惯坏了，音质要求越来越了！出高端&hellip;</a>
                    <span>来自于 啊龙凡 的评价</span>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米头戴式耳机</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">499元</a>
                </li>
                <li class="buzz-part  mr-0">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/46.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="blank">好好用哦！没想到这么个小东西就可以去蹭网了！</a>
                    <span>来自于 蔡剑文 的评价</span>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">小米随身WIFI</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">19.9元</a>
                </li>
            </ul>
        </div>
        
        <div class="content-box">
            <div class="content-title">
                <h2>内容</h2>
            </div>
            <ul class="clearFix">
                <li class="content-part">
                    <p>图书</p>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">阿弥陀佛，么么哒</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">大冰新书，12个舍不得读完的、暖心的、真实的江湖故事！</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">9.99元</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/content1.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="pre">&lt;</a>
    				<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="next">&gt;</a>
                </li>
                <li class="content-part miui">
                    <p class="green">MIUI主题</p>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">你好，yellow</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">清新简洁的柠檬香主题~充满、界面各处都充满生活的小滋味</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">免费</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/content2.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="pre">&lt;</a>
    				<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="next">&gt;</a>
                </li>
                <li class="content-part game">
                    <p class="red">游戏</p>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">米柚手游模拟器</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="two">在电脑上玩遍小米所有手游<br></a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">免费</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/content3.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="pre">&lt;</a>
    				<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="next">&gt;</a>
                </li>
                <li class="content-part mr-0 apply">
                    <p class="blue">应用</p>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">2015年度应用</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="two">2015年度应用</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">免费</a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/content4.png">
                    </a>
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="pre">&lt;</a>
    				<a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1" class="next">&gt;</a>
                </li>
            </ul>
        </div>
        
        <div class="video-box">
            <h2>视频</h2>
            <ul>
                <li class="left video-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/111.png">
                        <p>小米2016春季新品发布会</p>
                        <p class="color">小米5十余项黑科技亮相</p>
                    </a>
                </li>
                <li class="left video-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/222.png">
                        <p>15秒了解小米5 有多快</p>
                        <p class="color">华少用超快语速告诉你小米5 到底有多快</p>
                    </a>
                </li>
                <li class="left video-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/333.png">
                        <p>《去探索》小米年度品牌视频</p>
                        <p class="color">与小米一起探索黑科技</p>
                    </a>
                </li>
                <li class="left mr-0 video-part">
                    <a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">
                        <img src="images/444.png">
                        <p>小米5 给你一次关于优雅的想象</p>
                        <p class="color">流光溢彩的3D陶瓷机身</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="fina-box">
    <div class="last-box">
    	<ul class="last-title">
        	<li class="left">
            	<img src="images/last1.png">
                <a href="#.html">1小时快修服务</a>
            </li>
            <li class="left">
            	<img src="images/last2.png">
                <a href="#.html">7天无理由退货</a>
            </li>
            <li class="left">
            	<img src="images/last3.png">
                <a href="#.html">15天免费换货</a>
            </li>
            <li class="left">
            	<img src="images/last4.png">
                <a href="#.html">满150包邮</a>
            </li>
            <li class="left">
            	<img src="images/last5.png">
                <a href="#.html">520余家售后网点</a>
            </li>
        </ul>
        <div class="last-part">
        	<ul class="left-part left">
            	<ul class="left form">
                	<li><h2>帮助中心</h2></li>
                    <li><a href="#.html">购物指南</a></li>
                    <li><a href="#.html">支付方式</a></li>
                    <li><a href="#.html">配送方式</a></li>
                </ul>
                <ul class="left form">
                	<li><h2>服务支持</h2></li>
                    <li><a href="#.html">售后政策</a></li>
                    <li><a href="#.html">自助服务</a></li>
                    <li><a href="#.html">相关下载</a></li>
                </ul>
                <ul class="left form">
                	<li><h2>线下门店</h2></li>
                    <li><a href="#.html">小米之家</a></li>
                    <li><a href="#.html">服务网点</a></li>
                    <li><a href="#.html">线下专区</a></li>
                </ul>
                <ul class="left form">
                	<li><h2>关于小米</h2></li>
                    <li><a href="#.html">了解小米</a></li>
                    <li><a href="#.html">加入我们</a></li>
                    <li><a href="#.html">联系我们</a></li>
                </ul>
                <ul class="left form">
                	<li><h2>关注我们</h2></li>
                    <li><a href="#.html">新浪微博</a></li>
                    <li><a href="#.html">小米部落</a></li>
                    <li><a href="#.html">官方微信</a></li>
                </ul>
                <ul class="left form">
                	<li><h2>特色服务</h2></li>
                    <li><a href="#.html">F码通道</a></li>
                    <li><a href="#.html">小米移动</a></li>
                    <li><a href="#.html">防伪查询</a></li>
                </ul>
            </ul>
            <ul class="right-part right">
            	<li class="num">400-100-5678</li>
                <li class="time">周一至周日 8:00-18:00<br>（仅收市话费）</li>
                <li class="service"><img src="images/duanxiao.png">24小时在线客服</li>
            </ul>
        </div>
    </div>
    <div class="message-box">
    	<div class="mes-body">
            <div class="left mes-left">
                <img src="images/logobottom.png">  
            </div>
            <div class="left mes-middle">
            	<span>小米网|MIUI|米聊|多看书城|小米路由器|视频电话|小米后院|小米天猫店|小米淘宝直营店|小米网盟|问题反馈|Select Region</span><br>
                <span class="color">@mi.com 京ICP备10046444号 京公安网备11010802020134号 京网文[2014]0059-0009号违法和不良信息举报电话：185-0130-1238</span><br>
                <span class="color">本网站所列数据，除特殊说明外，所有数据均出自我司实验室测试</span>
            </div>
            <div class="right mes-right">
            	<img src="images/v-logo-1.png">
                <img src="images/v-logo-2.png">
                <img src="images/v-logo-3.png">
            </div>
        </div>
        <div class="left mes-below">
        	<p>探索黑科技，小米为发烧而生！</p>
        </div>
    </div>
</div>
</body>
</html>