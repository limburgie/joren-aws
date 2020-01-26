<#include "/pages/_init.ftl">

<div class="row">
	<div class="col-sm-12">
		<div id="carousel" class="carousel slide" data-ride="carousel" style="margin-top: 20px">
			<div class="carousel-inner">
				<#list api.query("carousel").findOne().getGroup("images") as item>
					<div class="item <#if item?index == 1>active</#if>">
						<img src="${item.getImage("image").url}" alt="${item.getText("caption")}" class="img-responsive">
					</div>
				</#list>
			</div>

			<a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<@content "welcome"/>
		<@content "openingsuren"/>
	</div>
</div>