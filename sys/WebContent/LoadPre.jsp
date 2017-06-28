<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>负荷预测</title>
<link href="Styles.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>

    <script src="js/JQuery-ui.js" type="text/javascript"></script>

    <script src="js/JQuery.MenuTree.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function() {
            $('#menu1').menuTree();

            $('#menu2').menuTree({
                expandSpeed: 1000,
                collapseSpeed: 1000,
                expandEasing: 'easeOutBounce',
                collapseEasing: 'easeOutBounce',
                parentMenuTriggerCallback: false,
                multiOpenedSubMenu: true
            });
            $('#menu3').menuTree({
                expandedNode: '2.1'
            }, function(rel) {
                alert(rel);
            });
        });
    </script>
</head>
<style>
.ribbon {
display:inline-block;
}

.ribbon:after, .ribbon:before {
margin-top:0.5em;
content: “”;
float:left;
border:1.5em solid #fff;
}

.ribbon:after {
border-right-color:transparent;
}

.ribbon:before {
border-left-color:transparent;
}

.ribbon a:link, .ribbon a:visited {
color:#FFFFFF;
text-decoration:none;
float:left;
height:2.5em;
overflow:hidden;
}

.ribbon span {
background:	#66CDAA;
display:inline-block;
line-height:2em;
padding:0 1em;
margin-top:0.5em;
position:relative;

-webkit-transition: background-color 0.2s, margin-top 0.2s; /* Saf3.2+, Chrome */
-moz-transition: background-color 0.2s, margin-top 0.2s; /* FF4+ */
-ms-transition: background-color 0.2s, margin-top 0.2s; /* IE10 */
-o-transition: background-color 0.2s, margin-top 0.2s; /* Opera 10.5+ */
transition: background-color 0.2s, margin-top 0.2s;
}

.ribbon a:hover span {
background:#FFD204;
margin-top:0;
}

.ribbon span:before {
content: “”;
position:absolute;
top:3em;
left:0;
border-right:0.5em solid #9B8651;
border-bottom:0.5em solid #fff;
}

.ribbon span:after {
content: “”;
position:absolute;
top:3em;
right:0;
border-left:0.5em solid #9B8651;
border-bottom:0.5em solid #fff;
}
</style>
<style>
.divcss5{
 border:1px solid #000
}
</style>
<script type="text/javascript">
function ChangeColor(id) {
	b.b1.style.background="#FFD204";
}
</script>
<body>
<div   style="position:absolute; left:200px; top:5px;background-color: #2E8B57 ;width: 1000px;height: 77.6px;">
<img src="ima/11.png" width="70" height="70" style="position:absolute; left:50px; top:6px; "> 
 <p  style="position:absolute; left:150px; top:30px;color:white;font-size:30px;"><b>复合能源电力调度系统</b></p>
 <p   style="position:absolute; left:500px; top:40px;color:white;font-size:20px;">管理员，您好！</p>
 <img src="ima/t1.jpg" width="60" height="60" style="position:absolute; left:750px; top:10px; "> 
  <img src="ima/t2.jpg" width="60" height="60" style="position:absolute; left:830px; top:10px; "> 
   <img src="ima/t3.jpg" width="60" height="60" style="position:absolute; left:910px; top:10px; "> 
</div>

<div class="ribbon" style="position:absolute; left:200px; top:85px;background-color: #66CDAA ;width: 1000px;height: 35px;">
<a href="DataManagement.jsp"><span><b>数据管理</b></span></a>
<a href="WeatherInformation.jsp"><span ><b>气象信息</b></span></a>
<a href="WindPowerPre.jsp"><span><b>风功率预测</b></span></a>
<a href="LoadPre.jsp"><span><b>负荷预测</b></span></a>
<a href="Result.jsp"><span><b>结果评价</b></span></a>
<a href="SystemManagement.jsp"><span><b>系统管理</b></span></a>
<img src="ima/t4.jpg" width="20" height="20" style="position:absolute; left:830px; top:10px; "> 
<form action="">
<input type="button" value="安全退出" style="position:absolute; left:860px; top:8px;color:white;font-size:16px; background: transparent;font-weight:bold; "onclick="window.close();">
</form>
</div>

<div id="menu1" class="menuTree divcss5" name="d" style="position:absolute; left:200px; top:123px;width:250px; height:473.6px; " >

<ul>
            <li class="parent"><a href="#"><input id=1 name="b1" type="button" value="预测负荷" style="color:black;font-size:16px;font-weight:bold;width:230px; height:30px; position:absolute; left:15px; top:2px; background:rgb(0,192,192)" onclick="ChngeColor(this.id)"></a>
                <ul>
                    <li class="child"><input id=1  type="button" value="单日负荷曲线" style="color:black;font-size:16px;font-weight:bold;width:225px; height:30px; position:absolute; left:10px; top:35px;background-color: transparent; border: 0px;" ></li>
                    <li class="child"><input id=2 type="button" value="罗列型负荷曲线" style="color:black;font-size:16px;font-weight:bold;width:225px; height:30px; position:absolute; left:10px; top:67px;background-color: transparent; border: 0px;" ></li>
                    <li class="child"><input id=3 type="button" value="日负荷对比曲线" style="color:black;font-size:16px;font-weight:bold;width:225px; height:30px; position:absolute; left:10px; top:99px;background-color: transparent; border: 0px;" ></li>
                </ul>
</ul>

          <input id=2 type="button"  value="负荷数据修正" style="color:black;font-size:16px;font-weight:bold;width:230px; height:30px; position:absolute; left:15px; top:132px; background:rgb(0,192,192) "  onclick="ChngeColor(this.id)">    
</div>
<div style="position:absolute; left:200px; top:598px;background-color: #20B2AA ;width: 1000px;height: 20px;">
<p   style="position:absolute; left:500px; top:4px;color:white;font-size:14px;">祝您工作愉快！</p>
</div>
</body>
</html>