<!DOCTYPE html>
<%@ page import="java.sql.*, keiziban.action.MyDBAccess"
contentType="text/html; charset=utf-8" %>

<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="view/css/password.css" rel="stylesheet" type="text/css" />
<title>パスワード</title>
<style type="text/css">
.auto-style1 {
	margin-left: 48px;
	margin-right: 7px;
}
</style>


</head>

<body>

<div class="header">
パスワード
</div>

<div class="main">

<div class="message">
<p class="text">
コメント削除のためにはパスワードが必要です。パスワードを入力してください。</p></div>

<div class="table">
<table class="type02">
<tr>
<th scope="row">パスワード</th>
<td><input type="text"></input></td>
</tr>
</table>
</div>

<div class="button" >
<button>戻る</button>
<button>決定</button>
</div>
</div>

<div id="footer">
</div>

</body>

</html>

