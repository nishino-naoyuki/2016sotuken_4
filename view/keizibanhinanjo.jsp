<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=utf-8" %>


<head>

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="view/css/keiziban.css" rel="stylesheet" type="text/css" />
<title>避難所掲示板</title>
<style type="text/css">
.auto-style1 {
	margin-left: 48px;
	margin-right: 7px;
}
</style>
</head>

<body>

<div class="header">
避難所掲示板
</div>

<div class="main">
<div class="info">
<table class="info"  align="left" style="width: 499px" >
<tr>
<td style="width: 121px">
住所:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
代表者名:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
代表者TEL:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
避難所状況:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
必要な物資:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
備考:
</td>
<td style="width: 300px">
</td>
</tr>

<tr>
<td style="width: 121px" >
更新日:
</td>
<td style="width: 300px">
</td>
</tr>
</table>

<img alt="避難所" height="307" src="view/img/hinanjo_photo.jpg" width="316" class="auto-style1"/>
</div>


<div class="comment">
<table class="chat" align="center">
	<tbody>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</tbody>
</table>
</div>



<div class="coment1">
<form action="" method="POST">
<table class="touroku">

<tr>
<td>
名前
</td>
<td style="width: 607px">
<input type="textbox" name="name"></input>
</td>
<td rowspan="3"><input id="button" type="submit" value="投稿"></input>
</td>
</tr>

<tr>
<td >
コメント
</td>
<td style="width: 607px">
<textarea name="comment" rows="6" wrap="soft" style="width:99%"></textarea>
</td>
</tr>

<tr>
<td >
パスワード
</td>
<td style="width: 607px" >
<input type="textbox" name="password"></input>
</td>
</tr>



</table>
</form>

<div class="button" >
<button>戻る</button>
<button>Twitter</button>
<button>Facebook</button>
<button>更新</button>
</div>

</div>
</div>

<div id="footer">
</div>

</body>

</html>
