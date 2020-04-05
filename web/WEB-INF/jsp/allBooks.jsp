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
    <title>所有书籍展示页面</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.css"/>
</head>
<body>
<br>
<br>
<br>
<div class="ui equal width center aligned container grid">
    <div class="row clearfix">
        <div class="column">
            <h1 class="ui header">书籍展示</h1>
        </div>
    </div>
    <div class="row">
        <div class="left aligned column">
            <a class="ui green button" href="${pageContext.request.contextPath}/toAddPage">
                添加书籍
            </a>
            <a class="ui pink button" href="${pageContext.request.contextPath}/books">
                返回全部
            </a>
        </div>
        
        <div class="column">
            <c:if test="${error != null}">
                <div class="ui error message">
                    <div class="header">
                        查询结果
                    </div>
                    <p>${error}</p>
                </div>
            </c:if>
        </div>

        <div class="right aligned column">
            <form class="ui form" action="${pageContext.request.contextPath}/search" method="post">
                <div class="ui icon input">
                    <input class="left attached" type="text" name="bookName" placeholder="搜索书籍名..." required>
                    <button class="right attached ui icon button" type="submit">
                        <i class="search icon"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="ui row clearfix">
        <div class="column">
            <table class="ui striped selectable red very compact small table">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>创建时间</th>
                        <th>修改时间</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>
                                <div class="ui yellow ribbon label">
                                        ${book.bookId}
                                </div>
                            </td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.bookDetail}</td>
                            <td>${book.gmtCreate}</td>
                            <td>${book.gmtModify}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/toUpdatePage/${book.bookId}" class="ui basic teal mini button">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/deleteBook/${book.bookId}" class="ui basic red mini button">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>

                <tfoot>
                    <tr>
                        <th colspan="7">
                            <div class="ui right floated pagination menu">
                                <a href="#" class="icon item">
                                    <i class="left chevron icon"></i>
                                </a>
                                <a class="item">1</a>
                                <a class="item">2</a>
                                <a class="item">3</a>
                                <a class="item">4</a>
                                <a class="icon item">
                                    <i class="right chevron icon"></i>
                                </a>
                            </div>
                        </th>
                    </tr>
                </tfoot>

            </table>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.10/semantic.min.js"></script>
</body>
</html>
