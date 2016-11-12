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
%>


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
<div class="joho">
<div class="info">

<table class="info" style="width: 499px" >
<tr>
<td style="width: 115px">
住所:
</td>
<td style="width: 300px">
<%out.print(adress);%></td>
</tr>

<tr>
<td style="width: 115px" >
代表者名:
</td>
<td style="width: 300px">
<%out.print(name);%></td>
</tr>

<tr>
<td style="width: 115px" >
代表者TEL:
</td>
<td style="width: 300px">
<%out.print(tel);%></td>
</tr>

<tr>
<td style="width: 115px" >
避難所状況:
</td>
<td style="width: 300px">
<%out.print(jokyo);%></td>
</tr>

<tr>
<td style="width: 115px" >
必要な物資:
</td>
<td style="width: 300px">
<%out.print(bussi);%></td>
</tr>

<tr>
<td style="width: 115px" >
備考:
</td>
<td style="width: 300px">
<%out.print(bikou);%></td>
</tr>

<tr>
<td style="width: 115px" >
更新日:
</td>
<td style="width: 300px">
<%out.print(kosin);%></td>
</tr>
</table>
</div>

<div class="img">
<img alt="避難所" height="307" src="view/img/hinanjo_photo.jpg" width="316" >
</div>
</div>
<%} %>

<%



ResultSet ts = db.getResultSet("select * from hinan_cm where syukey = 1");

while(ts.next()){
		String syukey= ts.getString("syukey"); // メンバーIDを取得
	    String num = ts.getString("cm_num"); // メンバー名を取得
	    String name_cm = ts.getString("name"); // メンバー名(カナ)を取得
	    String kosin_cm = ts.getString("kosin"); // メンバーIDを取得
	    String pass_cm = ts.getString("pass"); // メンバー名を取得
	    String cm = ts.getString("cm"); // メンバー名(カナ)を取得
%>

<table class="chat" align="center">
	<tbody>

		<tr>
			<td><%out.print(num);%>、<%out.print(name_cm);%><br/>
			&nbsp;&nbsp;<%out.print(cm);%>
			<div class="kosin" align="right"><%out.print(kosin_cm);%>&nbsp;&nbsp;<a href="delete">削除</a></div></td>
		</tr>

	</tbody>
</table>
<%} %>


<form action="<%=request.getContextPath()%>/insertcomment" method="GET">

<% ResultSet es = db.getResultSet("select syukey,cm_num from hinan_cm where cm_num = (select max(cm_num) from hinan_cm where syukey = 1)");
while(es.next()){
	   int num = es.getInt("cm_num");
	   int number = num + 1;%>

<input type="hidden" name="syukey" value="<%=es.getString("syukey")%>">
<input type="hidden" name="cm_num" value="<%=number%>">

<%} %>

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


<%db.close(); %>
<div class="button" >
<button>戻る</button>
<button>Twitter</button>
<button>Facebook</button>
<button>更新</button>
</div>

</div>




<div id="footer">
</div>

</body>

</html>
