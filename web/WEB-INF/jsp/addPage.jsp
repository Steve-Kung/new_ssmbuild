<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/5
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css"/>
</head>
<body>
<br>
<br>
<br>
<div class="ui equal width center aligned container grid">
    <div class="row clearfix">
        <div class="column">
            <h1 class="ui header">添加书籍</h1>
        </div>
    </div>
    <div class="row">
        <div class="left aligned column">
            <form action="${pageContext.request.contextPath}/addBook" class="ui equal width form" method="post">
                <div class="fields">
                    <div class="required field">
                        <label>书籍名称(bookName)</label>
                        <input type="text" name="bookName" placeholder="请输入书籍名称" required>
                    </div>
                    <div class="required field">
                        <label>书籍数量(bookCounts)</label>
                        <input type="text" name="bookCounts" placeholder="请输入书籍数量" required>
                    </div>
                </div>
                <div class="fields">
                    <div class="required field">
                        <label>书籍描述(bookDetail)</label>
                        <input type="text" name="bookDetail" placeholder="请输入书籍描述" required>
                    </div>
                </div>


                <%--<div class="ui info message">--%>
                    <%--<div class="header">提交结果</div>--%>
                    <%--<ul class="list">--%>
                        <%--<li>添加成功</li>--%>
                        <%--<li>感谢您的操作</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>

                <input type="submit" class="ui blue button" value="添加">
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.js"></script>
</body>
</html>
