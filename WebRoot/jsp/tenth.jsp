<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/fileinput.css" rel="stylesheet" media="screen">
    
    <script type="text/javascript" src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/fileinput/fileinput.js" charset="UTF-8"></script>
 
</head>

<body>
        <div class="container kv-main">
            <h4>Multi Language Inputs</h4>
            <form enctype="multipart/form-data">
                <label>French Input</label>
                <input id="file-fr" name="file-fr[]" type="file" multiple>
            </form>
            <br>
        </div>
    </body>
	<script>
	
    $('#file-fr').fileinput({
        language: 'fr',
        uploadUrl:'#',
        allowedFileExtensions : ['jpg', 'png','gif','html','txt','zip','xlsx','xml','docx','js','doc'],
        textEncoding: 'GBK',
         allowedPreviewTypes:['docx','doc'],
        previewSettings: {
                image: {width: "160px", height: "160px"},
                html: {width: "160px", height: "160px"},
                text: {width: "160px", height: "160px"},
                video: {width: "160px", height: "160px"},
                audio: {width: "160px", height: "80px"},
                flash: {width: "160px", height: "160px"},
                object: {width: "160px", height: "160px"},
                pdf: {width: "160px", height: "160px"},
                other: {width: "160px", height: "160px"}
            },
        
    });
   
	</script>
</html>