<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function openimgupload()
	{
		window.open('upload/avatar.jsp?uid=<%=Math.round(Math.random() * 900) + 100 + ""%>&uploadtype=head','图片上传','height=253,width=450,status=no,toolbar=no,menubar=no,location=no,scrollbars=no,resizable=no');
	}
	</script>
  </head>
  
  <body>
    <img src="images/noimg.png" id="showimg1"><input type="text" name="imgpath1" id="imgpath1"><br/>
    <input type="button" value="上传图片" onclick="openimgupload();"><br/>
    <strong>使用说明：</strong><br/>
    上传路径在conf/CengrpConfig.properties中配置<br/>
       使用JS，open方法打开，同时传递连个参数：<br/>
    uid：图片的名称（使用uuid生成并传递过去）<br/>
    uploadtype：head、logo、pic，上传图片类型（头像、企业logo、其他图片）主要完成上传文件分类存放<br/>
    上传完成后会生成三张图片，分别是：<br/>
    一张剪裁后的原始大小图片<br/>
    一张剪裁后的缩小图片<br/>
    一张剪裁后的等比小图<br/>
    根据需要自由获取上传图片的路径，存放数据库一个图片即可，在特殊用途时，可以根据一张图片得到其余两张<br/>
    具体调用代码，可查看此页面原始代码。
    
  </body>
</html>
