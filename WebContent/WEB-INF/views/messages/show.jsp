<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h1>id : <c:out value="${task.id}" /> のタスク詳細</h1>
        <table>
            <tr>
                <th>内容</th>
                <td><c:out value="${task.content}" /></td>
            </tr>
            <tr>
                <th>作成日時</th>
                <td><c:out value="${task.created_at}" /></td>
            </tr>
            <tr>
                <th>作成日時</th>
                <td><c:out value="${task.updated_at}" /></td>
            </tr>
        </table>
        <a href="${pageContext.request.contextPath}/index">一覧に戻る</a><br />
        <a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a>
    </c:param>
</c:import>