<!DOCTYPE html>

<%@ page import="java.sql.*, keiziban.action.MyDBAccess"
contentType="text/html; charset=utf-8" %>

<%
// MyDBAccess のインスタンスを生成する
MyDBAccess db = new MyDBAccess();

// データベースへのアクセス
db.open();

ResultSet rs = db.getResultSet("select * from hinan");

while(rs.next()) {

    int syukey = rs.getInt("syukey"); // メンバーIDを取得
    String adress = rs.getString("adress"); // メンバー名を取得
    String name = rs.getString("name"); // メンバー名(カナ)を取得
    String tel = rs.getString("tel"); // メンバーIDを取得
    String mail = rs.getString("mail"); // メンバー名を取得
    String jokyo = rs.getString("jokyo"); // メンバー名(カナ)を取得
    String bussi = rs.getString("bussi"); // メンバーIDを取得
    String bikou = rs.getString("bikou"); // メンバー名を取得
    String pass = rs.getString("pass"); // メンバー名(カナ)を取得
    String pic1= rs.getString("pic1"); // メンバーIDを取得
    String pic2 = rs.getString("pic2"); // メンバー名を取得
    String pic3 = rs.getString("pic3"); // メンバー名(カナ)を取得
    String pic4 = rs.getString("pic4"); // メンバーIDを取得
    String kosin = rs.getString("kosin"); // メンバー名を取得
    String syonin = rs.getString("syonin"); // メンバー名(カナ)を取得


    // 文字コードを EUC_JP からUnicode へ変換
    adress = new String(adress.getBytes("8859_1"), "EUC_JP");
    name = new String(name.getBytes("8859_1"), "EUC_JP");
    tel = new String(tel.getBytes("8859_1"), "EUC_JP");
    mail = new String(mail.getBytes("8859_1"), "EUC_JP");
    jokyo = new String(jokyo.getBytes("8859_1"), "EUC_JP");
    bussi = new String(bussi.getBytes("8859_1"), "EUC_JP");
    bikou = new String(bikou.getBytes("8859_1"), "EUC_JP");
    pass = new String(pass.getBytes("8859_1"), "EUC_JP");
    kosin = new String(pic1.getBytes("8859_1"), "EUC_JP");
    syonin = new String(syonin.getBytes("8859_1"), "EUC_JP");
}
%>

<%db.close(); %>
<html>
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
<%=rs.getString("adress")%></td>
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
