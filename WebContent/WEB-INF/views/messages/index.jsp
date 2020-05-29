<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h1>タスク一覧</h1>
        <ul>
            <c:forEach var="task" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}"><c:out value="${task.id}"></c:out></a>
                    : <c:out value="${task.content}"></c:out>
                </li>
            </c:forEach>
        </ul>
        <a href="${pageContext.request.contextPath}/new">新しいタスクを登録</a>
    </c:param>
</c:import>