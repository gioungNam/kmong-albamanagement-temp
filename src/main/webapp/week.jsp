<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Week Schedule</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        table {
            border-collapse: collapse;
            margin: auto;
            margin-top: 20px;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        .work-hour {
            background-color: lightblue;
        }

        h1 {
            font-size: 24px;
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <h1>${date} (月)</h1>
    <table>
        <tr>
            <th></th> <!-- 빈칸 -->
            <% for (int hour = 9; hour <= 23; hour++) { %>
                <th><%= hour %>시</th>
            <% } %>
        </tr>
        <% 
            String[] workers = {"ヒナタ", "レイ", "モエナ", "サリナ", "コウセイ", "ミサ", "アヤノ", "キムラ", "モエ", "リア"};
            int[][] workingHours = {{9, 23}, {9, 17}, {14, 21}, {0,0}, {17,23}, {0,0}, {9,23}, {0,0},{0,0},{15,23}};

            for (int i = 0; i < workers.length; i++) {
        %>
            <tr>
                <td><%= workers[i] %></td>
                <% 
                    for (int hour = 9; hour <= 23; hour++) {
                        boolean isWorking = hour >= workingHours[i][0] && hour <= workingHours[i][1];
                %>
                    <td class="<%= isWorking ? "work-hour" : "" %>"></td>
                <% } %>
            </tr>
        <% } %>
    </table>
</body>
</html>