<style>
.btn{
	color: rgb(255, 255, 255);
	text-decoration: none;
	padding: 2px 7px;
	font-size: 12px;
	border-radius: 3px;
}
.btn-success {
	background-image: -moz-linear-gradient(top, #62c462, #51a351);
	background-image: -ms-linear-gradient(top, #62c462, #51a351);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#51a351));
	background-image: -webkit-linear-gradient(top, #62c462, #51a351);
	background-image: -o-linear-gradient(top, #62c462, #51a351);
	background-image: linear-gradient(top, #62c462, #51a351);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#62c462', endColorstr='#51a351', GradientType=0);
	border-color: #51a351 #51a351 #387038;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:dximagetransform.microsoft.gradient(enabled=false);
}
.btn-success:active,
.btn-success:disabled,
.btn-success:focus,
.btn-success:hover,
.btn-warning:active,
.btn-warning:disabled,
.btn-warning:focus,
.btn-warning:hover {
	text-decoration: none;
	color: rgb(255, 255, 255);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-warning:active,
.btn-warning:disabled,
.btn-warning:focus,
.btn-warning:hover {
	background-color: #f89406;
}
.btn-success:active,
.btn-success:disabled,
.btn-success:focus,
.btn-success:hover {
	background-color: #51a351;
}
.btn-warning {
	background-color: #faa732;
	background-image: -moz-linear-gradient(top, #fbb450, #f89406);
	background-image: -ms-linear-gradient(top, #fbb450, #f89406);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
	background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
	background-image: -o-linear-gradient(top, #fbb450, #f89406);
	background-image: linear-gradient(top, #fbb450, #f89406);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fbb450', endColorstr='#f89406', GradientType=0);
	border-color: #f89406 #f89406 #ad6704;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:dximagetransform.microsoft.gradient(enabled=false);
}
.td_pads { padding: 10px 15px !important; }
</style>

<script type="text/javascript">
ajax.sitemap = function(mode) {
	ajax.exec({
		action : 'sitemap',
		mode : mode
	});
}
ajax.callback.sitemap = function(data) {
	if(data.mode == 'create') $('#mess_time').html(data.html);
	else $('#sitemap').html(data.html);
}
</script>

<h1>Управление картой сайта</h1>

<form action="admin_sitemap.php" method="post">
<table class="forumline">
	<tr class="row1">
		<td width="25%"><span class="gen"><b>{L_INFORMATION}:</b></span></td>
		<td class="td_pads"><div id="mess_time">{MESSAGE}</div></td>
	</tr>
	<tr class="row1">
		<td width="25%"><span class="gen"><b>Опции:</b></span></td>
		<td class="td_pads">
			<a href="#" class="btn btn-success" onclick="ajax.sitemap('create'); return false;">Создать / обновить файл карты сайта</a>&nbsp;&nbsp;
			<a href="#" class="btn btn-warning" onclick="ajax.sitemap('search_update'); return false;">Уведомить поисковые системы о наличии новой версии карты сайта</a><br />
			<div id="sitemap"></div>
		</td>
	</tr>
	<tr>
		<th colspan="2">Что сделать дальше?</th>
	</tr>
	<tr>
		<td class="row1" colspan="2">
			<p>1. Зарегистрируйте ваш сайт в <a href="http://www.google.com/webmasters/" target="_blank">Google Webmaster</a> с использованием вашей учетной записи Google.</p>
			<p>2. Зайдите в раздел "Файлы Sitemap" и нажмите кнопку "Добавление/проверка файла sitemap".</p>
			<p>3. Зарегистрируйте ваш сайт в <a href="http://webmaster.yandex.ru/sites/" target="_blank">Yandex Webmaster</a> с использованием вашей учетной записи.</p>
			<p>4. <a href="http://webmaster.yandex.ru/site/map.xml" target="_blank">Добавьте карту</a> зарегистрированного вами сайта.</p>
		</td>
	</tr>
	<tr>
	  <th colspan="2">Дополнительные страницы для sitemap</th>
	</tr>
	<tr class="row1">
		<td class="row1">
			<span class="gen"><b>Дополнительные страницы:</b></span>
		</td>
		<td>
			<textarea name="static_sitemap" rows="5" cols="70">{STATIC_SITEMAP}</textarea><br />
			<p>Здесь вы можете указать дополнительные страницы сайта (например <b>http://torrentpier.me/memberlist.php</b>),
				которые должны быть включены в создаваемый файл вами файл sitemap. <b style="color: #993300;">Каждая ссылка
				должна начинаться с http(s):// и новой строки!</b></p>
		</td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2">
			<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />&nbsp;&nbsp;
			<input type="reset" value="{L_RESET}" class="liteoption" />
		</td>
	</tr>
</table>
</form>