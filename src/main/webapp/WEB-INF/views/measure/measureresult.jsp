<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>3차 프로젝트 1조</title>
        <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ pageContext.servletContext.contextPath }/resources/css/styles.css" rel="stylesheet" />
    </head>
    
<style>
.bubble
{
position: relative;
width: 100%;
height: 12%;
padding: 0px;
background: #FFFF;
-webkit-border-radius: 31px;
-moz-border-radius: 31px;
border-radius: 31px;
border: #E19600 solid 5px;
}
.bubble:after
{
content: '';
position: absolute;
border-style: solid;
border-width: 0 24px 44px;
border-color: #FFFF transparent;
display: block;
width: 0;
z-index: 1;
top: -44px;
left: 50%;
}
.bubble:before
{
content: '';
position: absolute;
border-style: solid;
border-width: 0 28px 48px;
border-color: #E19600 transparent;
display: block;
width: 0;
z-index: 0;
top: -53px;
left: 49%;
}
</style>
    
    <body>
    	<c:import url="/WEB-INF/views/common/loginSession.jsp" />
        <c:import url="/WEB-INF/views/common/menubar.jsp" />
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <div class="cta-inner bg-faded text-center rounded">
							<div class="col-xl-9 mx-auto">
                        	<h1>측정 결과</h1>
                        	<h4>(100%에 가까울수록 비만수치가 높습니다.)</h4>
                        	<br><br>
							<h1 class="text-primary mb-3">${ value }</h1>

                            <c:set var="e" value="${ message }"/>
							<c:if test="${ !empty e }">
								<img style="top:50%; left:50%;" src="${ pageContext.servletContext.contextPath }/resources/static/img/${ img }">
								<h2 class="bubble site-heading-upper text-primary mb-3">${ message }</h2>
							</c:if>
							<a style="padding:10px;" class="btn btn-primary btn-block" href="catproflieDbInsert.do">기록할래</a>
	    					<a style="padding:10px; margin:10px;" class="btn btn-primary btn-block" href="measure.do">기록안해</a>
                        </div>
                    </div>
                </div>
            </div>
        </section> 
        <c:import url="/WEB-INF/views/common/footer.jsp" />
    </body>
</html>
