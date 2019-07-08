<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
    String modalName=request.getParameter("modalName");
    String flag=request.getParameter("flag");
%>
<!DOCTYPE html>
<html>
<head>
    <title>需求统计报表</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/resources/common/css/bootstrap.min.3.3.7.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/bootstrap-datetimepicker.4.15.35.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.all.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.base.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.theme.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.accordion.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.core.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.dialog.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.progressbar.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.resizable.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.slider.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/jquery.ui.tabs.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/ichart-style.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/resources/common/css/demo.css" rel="stylesheet" media="screen">
    
    <script  src="<%=path %>/resources/common/js/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/resources/common/js/bootstrap-3.3.7.min.js"></script>
	<script  src="<%=path %>/resources/common/js/jquery-ui-1.8.21.custom.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/resources/common/js/moment.js"></script> 
	<script  src="<%=path %>/resources/common/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/resources/common/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script  src="<%=path %>/resources/common/js/ichart.1.2.1.min.js" charset="UTF-8"></script>
	
	<script type="text/javascript">
		var path = '<%=path%>';
		var flag="<%=flag%>";
	</script>
</head>
 <body >
  <div class="container" id="chartShow"></div> 
 </body>
 <script type="text/javascript">
 $(function(){
	 var data2=[{name : '预估工时',value : [9,12,10,11,16,15,9],color:'#1385a5'},
	            {name : '实际工时',value : [9,12,10,11,16,15,9],color:'#c56966'},];
	 var data=data2;
		
		var chart = new iChart.ColumnStacked3D({
			render : 'chartShow3',
			data: data,
			labels:["16年1月","16年2月","16年3月","16年4月","16年5月","16年6月"],
			title : {
				text : '需求统计',
				color : '#254d70'
			},
			footnote : {
				text : '本周新提预需求'+'15个'+',本月预需求'+'20个',
				color : '#486c8f',
				fontsize : 13,
				padding : '0 38'
			},
			width : 800,
			height : 400,
			column_width:20,
			background_color:'#ffffff',
			padding:'0 0 10',
			shadow : true,
			shadow_blur : 3,
			shadow_color : '#aaaaaa',
			shadow_offsetx : 1,
			shadow_offsety : 0,
			sub_option : {
				label : {color:'#f9f9f9',fontsize:12,fontweight:300},//控制y坐标字体大小
				border : {width : 2,color : '#ffffff'}
			},
			label:{color:'#254d70',fontsize:12,fontweight:300},//控制方块中数量字体大小
			legend:{
				enable:true,
				background_color : null,
				line_height:25,
				color:'#254d70',
				fontsize:12,//控制方块所指内容字体
				fontweight:200,
				align : 'center',
				valign : 'top',
				row:1,
				column:'max',
				border : {enable : false}
			},
			tip:{
				enable :true,
				listeners:{
					//tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
					parseText:function(tip,name,value,text,i){
						return name+":"+value+ '个';
					}
				} 
			},
			text_space : 15,//坐标系下方的label距离坐标系的距离。
			zScale:1,
			xAngle : 50,
			bottom_scale:1.1, 
			coordinate:{
				width:'80%',
				height:'80%',
				board_deep:5,//背面厚度
				pedestal_height:10,//底座高度
				left_board:false,//取消左侧面板 
				shadow:true,//底座的阴影效果
//				grid_color:'#6a6a80',//网格线//坐标系的各个面样式
				gridlinesVisible:false,
				crosshair:{enable:true},
				wall_style:[{color : '#6a6a80'},{color : '#b2b2d3'},
							{color : '#a6a6cb'},{color : '#6a6a80'},
							{color : '#74749b'},{color : '#a6a6cb'}],
				axis : {color : '#c0d0e0',width : 0},
			    scale:[{
					 position:'left',	
					 scale_enable : false,
					 start_scale:0,
					 scale_space:40,
					 end_scale:120,
					 label:{color:'#254d70',fontsize:11,fontweight:600}
				  },{
					 position:'right',	
					 start_scale:0,
					 scale_space:2,
					 end_scale:10,
					 scale_enable : false,
					 which:'v',
					 scaleAlign:'center',
					 label:{fontsize:11,fontweight:600,color:'#666666'}
				    }]
			}
		});
		//利用自定义组件构造左上侧单位
		chart.plugin(new iChart.Custom({
				drawFn:function(){
					//计算位置
					var coo = chart.getCoordinate(),
					x = coo.get('originx'),
					y = coo.get('originy');
					
					//在左侧的位置，渲染说明文字
					chart.target.textAlign('end')
					.textBaseline('bottom')
					.textFont('600 12px Verdana')
					.fillText('单位/个',x+10,y-20,false,'#254d70');
					
					//在右侧的位置，渲染说明文字
					chart.target.textAlign('end')
					.textBaseline('bottom')
					.textFont('600 12px Verdana')
					.fillText('单位/100h',x+680,y-20,false,'#254d70');
				}
		}));

//		chart.draw();
	});
 </script>
 </html>