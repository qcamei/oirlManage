<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>中石油油罐车运输管理系统</title>
    <base href="<%=basePath%>"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">   
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   	<link rel="stylesheet" type="text/css" href="admin/css/employmanament.css"/>
  	<link rel="stylesheet" type="text/css" href="common/css/comm.css" />
  	<link rel="stylesheet" type="text/css" href="common/css/styles.css"/>
  	<link rel="stylesheet" type="text/css" href="jquery-ui-1.10.4.custom/development-bundle/themes/base/jquery.ui.all.css"/>
  	<script type="text/javascript" language="javascript" src="jquery-ui-1.10.4.custom/js/jquery-1.10.2.js"></script>
  	<script type="text/javascript" language="javascript" src="jquery-ui-1.10.4.custom/development-bundle/ui/minified/jquery.ui.widget.min.js"></script>
  	<script type="text/javascript" language="javascript" src="jquery-ui-1.10.4.custom/development-bundle/ui/minified/jquery.ui.dialog.min.js"></script>
  	<script type="text/javascript" language="javascript" src="jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
  	<script type="text/javascript" language="javascript" src="jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
  </head>  
<body>
  <center>
  <div id="wrapper">
    <!--顶部标题-->
    <jsp:include page="/header.jsp"/>
    <!-- 左侧树形菜单栏-->
     <jsp:include page="common1.jsp" />
    <!-- 右侧内容-->
    <div id="page-wrapper" style="height:100%;">
        <div id="page-inner">
	     <div class="panel panel-info" >
		   <div class="panel-heading" style="text-align:left;">
		      <h3 class="panel-title">
		       	<small><i class="fa fa-tasks fa-2x"></i></small>&nbsp;操作员信息/详细信息		       	
		      </h3>		     
		   </div>							   
		 </div>
		 <div style="clear:both;"></div>
      <!-- 员工详情页 -->
      <center>
      <div class="panel panel-primary" style="margin-bottom:10px;">
		   <div class="panel-heading" style="background-color:#78A7E4;padding: 5px 5px;">
		      <h3 class="panel-title" style="text-align:left;"><small><i class="fa fa-tasks fa-2x"></i></small>&nbsp;操作员详细信息</h3>
		   </div>
		   <div class="panel-body state-overview">
		   	<div class="row">				
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">										
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                     <div class="value" >
                       <span>账号：<label>${person.perName}</label></span>
                     </div>
                 </section>			
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                   <div class="value">
                      <span>姓名：<label>${person.perTrueName}</label></span>
                   </div>
                 </section>		
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">	
				  <section class="panel" style="background-color:rgba(240,240,240,1);">       
                     <div class="value">
                        <span>性别：<label>${person.perSex==0?"女":"男"}</label></span>
                     </div>
                  </section>		
				</div><!--/.col-->																
			</div>
			<div class="row">				
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">										
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                     <div class="value" >
                       <span>所属公司：<label>${person.company.comName}</label></span>
                     </div>
                 </section>			
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                   <div class="value">
                      <span>邮箱：<label>${person.perEmail}</label></span>
                   </div>
                 </section>		
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">	
				  <section class="panel" style="background-color:rgba(240,240,240,1);">       
                     <div class="value">
                        <span>创建人：<label>${person.admin.admName}</label></span>
                     </div>
                  </section>		
				</div><!--/.col-->																
			</div>				
			<div class="row">				
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">										
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                     <div class="value" >
                       <span>操作类型：<label><s:if test="person.basDict.dictId==6">施封人员</s:if><s:else>解封人员</s:else></label></span>
                     </div>
                 </section>			
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				 <section class="panel" style="background-color:rgba(240,240,240,1);">
                   <div class="value">
                      <span>电话号码：<label>${person.perPhone}</label></span>
                   </div>
                 </section>		
				</div><!--/.col-->								
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">	
				  <section class="panel" style="background-color:rgba(240,240,240,1);">       
                     <div class="value">
                        <span>创建日期：<label>${person.perCreateDate}</label></span>
                     </div>
                  </section>		
				</div><!--/.col-->																
			</div>										    
		   </div>						   
		</div>	      
    </div>
   <!-- 右边部分完结-->
  </div>
</div>
</center>
</body>
</html>
