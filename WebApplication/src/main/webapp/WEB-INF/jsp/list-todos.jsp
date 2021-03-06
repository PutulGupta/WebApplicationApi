<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>

<head>
    <title>Todos for ${name}</title>
    <link href="webjars/bootstrap/5.1.1/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <table class="table table-striped">
        <caption>Your todos are</caption>
        <thead>
        <tr>
            <th>Description</th>
            <th>Target Date</th>
            <th>Is it Done?</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.course}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
                <td><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div> <a class="button" href="/add-todo">Add a Todo</a></div>

    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.1/js/bootstrap.min.js"></script>
</div>
</body>

</html>
