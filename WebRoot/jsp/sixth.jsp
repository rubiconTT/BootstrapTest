<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>sixth.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <!--为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放，需要在网页的 head 之中添加 viewport meta 标签  -->
      <!-- user-scalable=no 可以禁用其缩放（zooming）功能  -->
      <!--maximum-scale=1.0 与 user-scalable=no 一起使用。这样禁用缩放功能后，用户只能滚动屏幕  -->
      <!--width 属性设置屏幕宽度,值为 'device-width'，用来告诉浏览器使用原始的分辨率  -->
      <!--initial-scale 属性是视口最初的比例。当设置为 1.0 时，将呈现设备的原始宽度。  -->
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
        body {
         margin-top:50px;
         margin-left:30px;
      }
      /*为最小宽度为768像素的设备设置样式  */
      /*通过使用 'min-width' 和 'max-width' 属性，来根据设备的最大宽度和最小宽度决定使用的样式  */
       @media (min-width:768px) {
        
           .container {
              width:750px;
           }
        }
        
        .carousel-inner .item .carousel-caption {
        
           position:absolute;
           top:200px;
        }
        
        .carousel-indicators {
           position:absolute;
           top:286px;
        }
        
        .carousel-indicators .active {
           background-color:red;
        }
        
        #map_canvas {
          width:400px;
          height:400px;
         
        }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
      <script type="text/javascript">
         $(function(){
        	 
        	$('.start-slide').click(function(){
        		
        		$('#mycarousel1').carousel('cycle');
        		 
        	 });
        	 
			$('.pause-slide').click(function(){
				
				$('#mycarousel1').carousel('pause');
			        		 
			 });
			        	 
			$('.prev-slide').click(function(){
				 
				$('#mycarousel1').carousel('prev');
			});
			
			$('.next-slide').click(function(){
				 
				$('#mycarousel1').carousel('next');
			});
			
			$('.slide-one').click(function(){
				 
				$('#mycarousel1').carousel(0);
			});
			
			$('.slide-two').click(function(){
				$('#mycarousel1').carousel(1);
			});
			
			$('.slide-three').click(function(){
				$('#mycarousel1').carousel(2);
				 
			});
			
			$('.slide-four').click(function(){
				$('#mycarousel1').carousel(3);
				 
			});
         });
         
         $(function(){
        	 //进行轮播的时候触发该事件
//         	$("#mycarousel1").on('slide.bs.carousel',function(){
//         		alert("当调用 slide 实例方法时立即触发该事件。");
//         	}); 
        	 //轮播结束后触发该事件
//          $("#mycarousel1").on('slid.bs.carousel',function(){
//          	alert("当调用 slide 实例方法时立即触发该事件。");
//         	}); 
        	 //进行轮播的一些属性设置
            $("#mycarousel1").carousel({
            	interval:3000,
            	slide:'prev',
            	ride:'carousel'
            })
         });
      </script>
      <script type="text/javascript">
         $(function(){
        	function initialize(){
        		var mapCanvas=$("#map_canvas");
           	 	var mapOptions={
           			 center: new google.maps.LatLng(23.244066, 87.861276),
           	          zoom: 8,
           	          mapTypeId: google.maps.MapTypeId.ROADMAP
           	 }
           	 	var map= new google.maps.Map(mapCanvas,mapOptions);
        	} 
        	 google.maps.event.addDomListener(window,'load',initialize);
         });
        
      </script>
 </head>
<!-- data-slide = prev / next，用来改变幻灯片相对于当前位置的位置。  -->
<!-- data-slide-to 向轮播传递一个原始滑动索引，data-slide-to="2" 将把滑块移动到一个特定的索引，索引从 0 开始计数  -->
<!-- data-ride="carousel" 属性用于标记轮播在页面加载时就开始动画播放。 -->
<!-- data-interval 默认值：5000,自动循环每个项目之间延迟的时间量。如果为 false，轮播将不会自动循环。 -->
<!-- data-pause 鼠标进入时暂停轮播循环，鼠标离开时恢复轮播循环。 -->
<!-- data-wrap 轮播是否连续循环 -->
 <body>
<!--  -->
 <h4>bootstrap轮播</h4>
 <div id="mycarousel1" class="carousel slide" >
    <ol class="carousel-indicators">
      <li data-target="#mycarousel1" data-slide-to="0" class="active"></li>
      <li data-target="#mycarousel1" data-slide-to="1"></li>
      <li data-target="#mycarousel1" data-slide-to="2"></li>
      <li data-target="#mycarousel1" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner" align="center">
       <div class="item active">
         <img alt="First slide" src="../images/gaoling01.jpg" width="400px" height="300px">
         <div class="carousel-caption">James Gosling</div>
       </div>
       <div class="item ">
         <img alt="Second slide" src="../images/gosling02.jpg" width="400px" height="300px">
         <div class="carousel-caption">James Gosling</div>
       </div>
       <div class="item ">
         <img alt="Third slide" src="../images/KenThompson.jpg" width="400px" height="300px">
         <div class="carousel-caption">Ken Thompson</div>
       </div>
       <div class="item">
         <img alt="Fourth slide" src="../images/JohnMcCarthy02.jpg" width="400px" height="300px">
         <div class="carousel-caption">John Mccarthy</div>
       </div>
    </div>
    <a href="#mycarousel1" class="carousel-control left" data-slide="prev"><span class="icon-prev"></span></a>
    <a href="#mycarousel1" class="carousel-control right" data-slide="next"><span class="icon-next"></span></a>
    <br><br>
    <div style="text-align:center;">
       <input type="button" class="btn btn-success start-slide" value="start">
       <input type="button" class="btn btn-success pause-slide" value="pause">
       <input type="button" class="btn btn-success prev-slide" value="previous">
       <input type="button" class="btn btn-success next-slide" value="next">
       <input type="button" class="btn btn-success slide-one" value="slide 1">
       <input type="button" class="btn btn-success slide-two" value="slide 2">
       <input type="button" class="btn btn-success slide-three" value="slide 3">
       <input type="button" class="btn btn-success slide-four" value="slide 4">
    </div>
 </div>
 <br><br>
 <p>添加谷歌地图</p>
 <div class="container">
   <div id="map-canvas">
     
   </div>
 </div>
 </body>
 </html>