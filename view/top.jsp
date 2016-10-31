<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=utf-8" %>

<head>

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="view/css/top.css" rel="stylesheet" type="text/css" />
<title>被災地支援・情報共有掲示板</title>
</head>

<body>

<div class="header">
被災地支援・情報共有掲示板
</div>

<div class="main">
<div class="main2">

<div class="main3">
<form action="<%=request.getContextPath()%>/maphinanjo"><button>
<img alt="避難所" height="90" src="view/img/hinanjo.jpg" width="90" />避難所</button></form>

<form action="<%=request.getContextPath()%>/mapsyokuryou"><button>
<img alt="食料配布所" height="90" src="view/img/syokuryou.jpg" width="90" class="auto-style3" /><a>食料配布所</a></button></form></form>

</div>

<div class="main3">
<form action="<%=request.getContextPath()%>/mapkyusuijo"><button>
<img alt="給水所" height="90" src="view/img/kyusuijo.jpg" width="90" />給水所</button></form>

<form action="<%=request.getContextPath()%>/maponsen"><button>
<img alt="温泉銭湯" height="90" src="view/img/onsen.jpg" width="90" class="auto-style2" />温泉銭湯</button></form>
</div>


<div class="main3">
<form action="<%=request.getContextPath()%>/mapsousaku"><button>
<img alt="捜索" height="90" src="view/img/sousaku.jpg" width="90" class="auto-style4" />捜索 </button></form>

<button>
<img alt="リンク集" height="90"  src="view/img/rinku.jpg" width="90" class="auto-style1" />リンク集</button>

</div>
</div>

<div id="footer">
</div>

</body>

</html>