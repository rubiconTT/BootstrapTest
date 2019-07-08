<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>fifth.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
        body {
         margin-top:50px;
         margin-left:20px;
      }
      
       @media (min-width:768px) {
        
           .container {
              width:750px;
           }
        }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script type="text/javascript">
      
         $(function(){
        	 
        	 $('#collapseOne').collapse('hide');
        	 $('#collapseTwo').collapse('toggle');
        	 $('#collapseThree').collapse('hide');
        	 $('#collapseFour').collapse({
        		 toggle:false
                
        	 });
         });
         
         $(function(){
        	 $('#collapseFour').on('hidden.bs.collapse',function(){
        		 
        		 alert("面板将要被关闭");
        	 });
         });
         
         $(function(){
        	 
        	 $('#simplefold').on('show.bs.collapse',function(){
        		 alert("按钮折叠被展开了");
        	 });
         });
      </script>
 </head>
<!--data-toggle="collapse" 添加到想要展开或折叠的组件的链接上。  -->
<!--href 或 data-target 属性添加到父组件，它的值是子组件的 id。  -->
<!--data-parent 属性把折叠面板（accordion）的 id 添加到要展开或折叠的组件的链接上。  -->
<!--.collapse  隐藏内容。-->
<!--.collapse in  显示内容。-->
<!--.collapsing  当过渡效果开始时被添加，当过渡效果完成时被移除。-->
 <body>
 <h4>关于折叠面板</h4>
 <div class="container">
    <div class="panel-group col-md-6 pull-left" id="accordion">
       <div class="panel panel-default">
          <div class="panel-heading">
              <h5 class="panel-title">
                <a href="#collapseOne" data-toggle="collapse" data-parent="#accordion">
                   		 第一部分.
                </a>
              </h5>
          </div>
          <div id="collapseOne" class="panel-collapse collapse">
             <div class="panel-body">
		                脚本语言（Script language，scripting language，scripting programming language）
		                是为了缩短传统的编写-编译-链接-运行（edit-compile-link-run）过程而创建的计算机编程语言。
		                此命名起源于一个脚本“screen play”，每次运行都会使对话框逐字重复。[1] 
             </div>
          </div>
       </div>
       <div class="panel panel-default">
          <div class="panel-heading">
            <h5 class="panel-title">
               <a href="#collapseTwo" data-toggle="collapse" data-parent="#accordion">
                 		第二部分.
               </a>
            </h5>
          </div>
          <div class="panel-collapse collapse" id="collapseTwo">
             <div class="panel-body">
			               汇编语言的实质和机器语言是相同的，都是直接对硬件操作，只不过指令采用了英文缩写的标识符，更容易识别和记忆。
			               它同样需要编程者将每一步具体的操作用命令的形式写出来。
			               汇编程序通常由三部分组成：指令、伪指令和宏指令。
			               汇编程序的每一句指令只能对应实际操作过程中的一个很细微的动作。
			               例如移动、自增，因此汇编源程序一般比较冗长、复杂、容易出错，而且使用汇编语言编程需要有更多的计算机专业知识，
			               但汇编语言的优点也是显而易见的，用汇编语言所能完成的操作不是一般高级语言所能够实现的，
			               而且源程序经汇编生成的可执行文件不仅比较小，而且执行速度很快。
             </div>
          </div>
       </div>
       <div class="panel panel-default">
          <div class="panel-heading">
             <h5 class="panel-title">
                <a href="#collapseThree" data-toggle="collapse" data-parent="#accordion">
                   		 第三部分.
                </a>
             </h5>
          </div>
          <div class="panel-collapse collapse" id="collapseThree">
             <div class="body" >
			                高级语言是大多数编程者的选择。
			                和汇编语言相比，它不但将许多相关的机器指令合成为单条指令，并且去掉了与具体操作有关但与完成工作无关的细节，
			                例如使用堆栈、寄存器等，这样就大大简化了程序中的指令。同时，由于省略了很多细节，编程者也就不需要有太多的专业知识。
             </div>
          </div>
       </div>
       <div class="panel panel-warning">
          <div class="panel-heading">
             <h5 class="panel-title">
                <a href="#collapseFour" data-toggle="collapse" data-parent="#accordion">
                   		第四部分.
                </a>
             </h5>
          </div>
          <div id="collapseFour" class="panel-collapse collapse" >
             <div class="body"></div>
			                结构化查询语言(Structured Query Language)简称SQL，是一种数据库查询和程序设计语言，
			                用于存取数据以及查询、更新和管理关系数据库系统；同时也是数据库脚本文件的扩展名。
			                结构化查询语言是高级的非过程化编程语言，允许用户在高层数据结构上工作。
			                它不要求用户指定对数据的存放方法，也不需要用户了解具体的数据存放方式，
			                所以具有完全不同底层结构的不同数据库系统可以使用相同的结构化查询语言语言作为数据输入与管理的接口。
			                结构化查询语言语句可以嵌套，这使他具有极大的灵活性和强大的功能。
          </div>
       </div>
    </div>
 </div>
 <br><br>
 <p>简单不带accordion风格的折叠</p>
 <div class="container">
   <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#simplefold">简单折叠按钮</button>
   <div id="simplefold" class="collapse">
      解释类：应用程序源代码一边由相应语言的解释器“翻译”成目标代码（机器语言），一边执行，因此效率比较低
      ，而且不能生成可独立执行的可执行文件，应用程序不能脱离其解释器，
      但这种方式比较灵活，可以动态地调整、修改应用程序。如较早时期的Qbasic语言。
   </div>
 </div>
 <br><br>
 <p>简单不带accordion风格的折叠</p>
 <div class="container">
   <a href="#simplecuttle" data-toggle="collapse">点击链接折叠</a>
   <div id="simplecuttle" class="collapse" >
   编译类：编译是指在应用源程序执行之前，就将程序源代码“翻译”成目标代码（机器语言），
   因此其目标程序可以脱离其语言环境独立执行，使用比较方便、效率较高。
   但应用程序一旦需要修改，必须先修改源代码，再重新编译生成新的目标文件（* .obj，也就是OBJ文件）才能执行，只有目标文件而没有源代码，修改很不方便。
   </div>
 </div>
 </body>
 </html>
 