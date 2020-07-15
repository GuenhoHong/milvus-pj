<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src = "https://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="/css/sidebar.css" rel="stylesheet">

<html>
<head>
    <title>Title</title>
</head>

<div class="w3-sidebar w3-light-grey w3-bar-block container" style="width: 18%">

    <div class="row title">
        <div class="col-md-12">
            <h1 class="title2">
                <b>Milvus Project</b>
            </h1>
        </div>
    </div>

    <div class="row info">
        <div class="col-md-12 font-12">
            <h3>
                ${login.userId}
            </h3>
        </div>
    </div>

    <div class="row info">
        <div class="col-md-4 font-12">
                <c:if test="${login eq null}">
                    <button type ="button" id="loginBtn" class ="btn btn-primary" onclick="location.href='/user/login'">Login</button>
                </c:if>
                <c:if test="${login ne null}">
                    <button type ="button" class ="btn btn-primary" onclick="location.href='/user/logout'">LogOut</button>
                    <button class="btn btn-primary"  onclick="location.href='/user/mypage'">MyPage</button>
                </c:if>
                <button type ="button" id ="registerBtn" class ="btn btn-primary" onclick="location.href='/user/register'">회원가입</button>
        </div>
    </div>

    <div class="row info">
        <div class="col-md-12 font-12">
            <button type ="button" id="noticeBtn" class ="btn btn-primary" onclick="location.href='/user/login'">공지게시판</button>
        </div>
    </div>

    <div class="row info">
        <div class="col-md-12 font-12">
            <button type ="button" id="qnaBtn" class ="btn btn-primary" onclick="location.href='/user/login'">질문 게시판</button>
        </div>
    </div>

    <div class="row info">
        <div class="col-md-12 font-12">
            <button type ="button" id="skillBtn" class ="btn btn-primary" onclick="location.href='/user/login'">My 개발 능력</button>
        </div>
    </div>
</div>