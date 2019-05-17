<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link rel="stylesheet" href="<%=basePath%>layui/css/layui.css" />
<script src="<%=basePath%>layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">Golf Car Manager</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="UserManager.jsp">会员管理</a></li>
      <li class="layui-nav-item"><a href="">金额管理</a></li>
      <li class="layui-nav-item"><a href="">消费管理</a></li>
      <li class="layui-nav-item"><a href="">折扣管理</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">服务</a>
        <dl class="layui-nav-child">
          <dd><a href="">汽车类型</a></dd>
          <dd><a href="">服务类型</a></dd>
          <dd><a href="">其他</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          AU
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="Login.jsp">退出系统</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="memberlist.jsp">会员列表</a>
        </li>
        <li class="layui-nav-item">
          <a href="memberInfo?id=1">查询会员信息</a>
        </li>
        <li class="layui-nav-item"><a href="">添加会员</a></li>
        <li class="layui-nav-item"><a href="">修改会员信息</a></li>
        <li class="layui-nav-item"><a href="">删除会员</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
	
	</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 有问题也不解决
  </div>
</div>
<script src="../src/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>
