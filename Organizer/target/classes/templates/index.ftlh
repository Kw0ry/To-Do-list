<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>To-Do</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center">To-Do</h1>
<h3>Добавьте значения в пустые строки</h3>
<form action="/add" method="post">
    <table class="first-table" style="border-collapse: separate">
        <tr>
            <td>
                <label>Priority</label>
                <input type="number" name="priorityId" style="width: 250px">
            </td>
            <td>
                <label>Description</label>
                <input type="text" name="description" style="width: 250px">
            </td>
            <td>
                <label>Date</label>
                <input type="date" name="date" style="width: 250px">
            </td>
            <td class="add-button" style="text-align: center">
                <input  type="submit" value="add task">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>Список заданий(всего заданий : ${taskSize})</h2>
<table style="border-collapse: separate">
    <tr class="table-default" style="text-align: center">
        <td>Id</td>
        <td>Priority</td>
        <td>Task description</td>
        <td>Date</td>
        <td>Delete from list</td>
    </tr>
    <#list taskList as task>
        <tr>
            <td style="text-align: center">${task.id}</td>
            <td style="text-align: center">${task.priorityId}</td>
            <td>${task.description}</td>
            <td style="text-align: center">${task.date}</td>
            <td style="text-align: center"><a href="${'/delete/'+task.id}"">Delete</a></td>
        </tr>
    </#list>
</table>
    <input class="button" onclick="window.location.href = 'excel.xlsx';" value="Download excel"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>