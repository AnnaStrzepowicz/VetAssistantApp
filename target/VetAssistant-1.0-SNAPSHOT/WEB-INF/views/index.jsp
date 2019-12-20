<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vet Assistent</title>

    <img src="resources/baner.png" alt="patrzące zwierzątka" />


    <style>
        .b {
            background-color: #CCCCCC;
            font-family: verdana, tahoma, sans-serif;
        }

        h1 {
            text-align: center;
            text-shadow: 2px 2px 5px maroon;
            letter-spacing: 2px;
            margin-top: 100px;
            text-transform: uppercase;

        }

        p {
            text-align: center;

        }

        .btn {
            border-right: #9B0000 1px solid;
            border-top: #9B0000 1px solid;
            border-bottom: #9B0000 1px solid;
            border-left: #9B0000 1px solid;
            font-size: 20px;
            background-color: #6699CC;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            border-bottom-left-radius: 20px;
            cursor: pointer;
            color: white;
            font-family: verdana, tahoma, sans-serif;
            width: 200px;
            height: 100px;
        }
        table {
            margin-top: 100px;
            margin-bottom: 100px;
        }
        }
    </style>

</head>

<body class="b">

<h1>Asystent lekarza weterynarii</h1>
<p></p>
<p></p>
<p>
<table align="center">
    <tr align="center" valign="bottom">
        <td><img alt="Łapka"
                 src="resources/icon-paw.png"
                 width="150" height="150"></td>
        <td><img alt="Łapka"
                 src="resources/icon-paw.png"
                 width="150" height="150"></td>
    </tr>
    <tr align="center" valign="bottom">
        <td>
            <a href="${pageContext.request.contextPath}/owner"><button type="button" class="btn">Lekarz</button></a>
        </td>
        <td>
            <a href=""><input type="button" value="Recepcja" class="btn"></a>
        <td>
    </tr>
</table>
</p>


<p>
    Created by <a href="https://github.com/250483">250483</a>
</p>


</body>
</html>
