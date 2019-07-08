<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试</title>
</head>

<body>

<h4>你好,<font color="green">${userName}</font></h4>
<p>使用free marker模板引擎生成模板文件用于处理还是很方便的</p>
<br><br><br>
<p>以下邮件正文：</p>

<font size=5>${mailContent}</font>

<br><br><br>

<a href="http://www.baidu.com">点击前往百度</a>!
<p>We have these animals:
<table border=3 >
    <tr><td>mouse</td><td>$50</td></tr>
    <tr><td>elephant</td><td>$5000</td></tr>
    <tr><td>python</td><td>$4999</td></tr>
</table>

<#macro greet person color> 
<font size="+2" color="${color}">Hello ${person}!</font>
</#macro> 
<@greet person="Franchise" color="red"/> 


<p>此致</p>
<p>&nbsp;&nbsp;敬礼！</p>
<br><br>
<font color="violet"><p>Thanks & Best regards</p></font>
<p>${senderName}</p>
<p>${company}</p>
<p>Tel:${telephone}</p>
<p>Fax:${fax}</p>
<p>Address:${address}</p>

</body>
</html>