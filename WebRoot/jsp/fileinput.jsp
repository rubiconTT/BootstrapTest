<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!-- release v4.1.8, copyright 2014 - 2015 Kartik Visweswaran -->
<html>
    <head>
        <meta charset="utf-8"/>
        <title>文件上传</title>
        <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
	    <link href="<%=path %>/css/fileinput.css" rel="stylesheet" media="screen">
	    
	    <script type="text/javascript" src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
		<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
		
		<script type="text/javascript" src="<%=path %>/js/fileinput/fileinput.js" charset="UTF-8"></script>
    </head>
    <body>
        <div class="container kv-main">
            <form enctype="multipart/form-data">
                <input id="fileinput" class="file" type="file" multiple	>
                <br>
            </form>
        </div>
    </body>
	<script>
	  $("#fileinput").fileinput({
			language: 'zh', //设置语言
			uploadUrl: 'www.baidu.com',
			showUpload: true,
			showCaption: false,
			wrapTextLength: 0,
        	wrapIndicator: '<span class="wrap-indicator" title="{title}" onclick="{dialog}"></span>',
			browseClass: "btn btn-primary btn-lg",
			previewSettings:{
				image: {width:"160px", height: "160px"},
	            html: {width: "160px", height: "160px"},
	            text: {width: "160px", height: "160px"},
	            video: {width: "160px", height: "160px"},
	            audio: {width: "160px", height: "160px"},
	            flash: {width: "160px", height: "160px"},
	            object: {width: "160px", height: "160px"},
	            other: {width: "160px", height: "160px"}
			}
		});
	
    $(document).ready(function() {
    	
    });
    
    /*control.fileinput.default({
     	showCaption: true,      
        showPreview: true,
        showRemove: true,
        showUpload: true,
        showCancel: true,
        mainClass: '',
        previewClass: '',
        captionClass: '',
        mainTemplate: null,
        initialCaption: '',
        initialPreview: [],
        initialPreviewDelimiter: '*$$*',
        initialPreviewConfig: [],
        initialPreviewThumbTags: [],
        previewThumbTags: {},
        initialPreviewShowDelete: true,
        deleteUrl: '',
        deleteExtraData: {},
        overwriteInitial: true,
        layoutTemplates: defaultLayoutTemplates,
        previewTemplates: defaultPreviewTemplates,
        allowedPreviewTypes: defaultPreviewTypes,
        allowedPreviewMimeTypes: null,
        allowedFileTypes: null,
        allowedFileExtensions: null,
        customLayoutTags: {},
        customPreviewTags: {},
        previewSettings: defaultPreviewSettings,
        fileTypeSettings: defaultFileTypeSettings,
        previewFileIcon: '<i class="glyphicon glyphicon-file"></i>',
        browseIcon: '<i class="glyphicon glyphicon-folder-open"></i> &nbsp;',
        browseClass: 'btn btn-primary',
        removeIcon: '<i class="glyphicon glyphicon-trash"></i> ',
        removeClass: 'btn btn-default',
        cancelIcon: '<i class="glyphicon glyphicon-ban-circle"></i> ',
        cancelClass: 'btn btn-default',
        uploadIcon: '<i class="glyphicon glyphicon-upload"></i> ',
        uploadClass: 'btn btn-default',
        uploadUrl: null,
        uploadAsync: true,
        uploadExtraData: {},
        maxFileSize: 0,
        minFileCount: 0,
        maxFileCount: 0,
        msgValidationErrorClass: 'text-danger',
        msgValidationErrorIcon: '<i class="glyphicon glyphicon-exclamation-sign"></i> ',
        msgErrorClass: 'file-error-message',
        progressClass: "progress-bar progress-bar-success progress-bar-striped active",
        progressCompleteClass: "progress-bar progress-bar-success",
        previewFileType: 'image',
        wrapTextLength: 250,
        wrapIndicator: ' <span class="wrap-indicator" title="{title}" onclick="{dialog}">[&hellip;]</span>',
        elCaptionContainer: null,
        elCaptionText: null,
        elPreviewContainer: null,
        elPreviewImage: null,
        elPreviewStatus: null,
        elErrorContainer: null,
        slugCallback: null,
        dropZoneEnabled: true,
        dropZoneTitleClass: 'file-drop-zone-title',
        fileActionSettings: {},
        otherActionButtons: '',
        textEncoding: 'UTF-8',
        ajaxSettings: {},
        ajaxDeleteSettings: {},
        showAjaxErrorDetails: true
  });*/
    
	</script>
</html>