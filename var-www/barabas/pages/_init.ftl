<#macro content uid>
	<#assign item = api.query("content").with("uid", uid).findOne()>
	<h2>${item.getText("title")}</h2>
	<p>
		${item.getRichText("content").html}
	</p>
</#macro>

<#macro menu uid>
	<#assign menu = api.query("menu").with("uid", uid).findOne()>
	<h2>${menu.getText("title")}</h2>
	<div id="carousel-wide" class="carousel slide hidden-xs" data-interval="false">
		<div class="carousel-inner">
			<#assign pages = menu.getGroup("pages")>
			<#assign blocks = (pages?size / 2)?ceiling>
			<#list 0..(blocks-1) as i>
				<div class="item <#if i?index == 0>active</#if>">
					<img src="${pages[i*2].getImage("page").url}" class="img-responsive" style="display: inline; width:49.5%">
					<#if pages[i*2+1]??>
						<img src="${pages[i*2+1].getImage("page").url}" class="img-responsive" style="display: inline; width:49.5%" align="right">
					</#if>
				</div>
			</#list>
		</div>

		<a class="left carousel-control" href="#carousel-wide" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" href="#carousel-wide" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
	<div id="carousel-small" class="carousel slide visible-xs" data-interval="false">
		<div class="carousel-inner">
			<#list menu.getGroup("pages") as item>
				<div class="item <#if item?index == 1>active</#if>">
					<img src="${item.getImage("page").url}" class="img-responsive">
				</div>
			</#list>
		</div>

		<a class="left carousel-control" href="#carousel-small" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" href="#carousel-small" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</#macro>