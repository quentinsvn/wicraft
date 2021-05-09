{include file='header.tpl'}
{include file='navbar.tpl'}

{if isset($BANNER_IMAGE)}
	<div class="banner">
		<figure>
			<img src="{$BANNER_IMAGE}" alt="">
		</figure>
		<h1>{$TITLE}</h1>
	</div>
{/if}

<div class="pr-3 pl-3 pr-md-5 pl-md-5 pt-4 pb-3">
  <div class="row">
	<div class="col-md-3">
	  {include file='user/navigation.tpl'}
	</div>
	<div class="col-md-9">
	  <div class="card">
		<div class="card-body">
		  <h2 class="card-title">{$OVERVIEW}</h2>
		  <ul>
			{nocache}
			{foreach from=$USER_DETAILS_VALUES key=name item=value}
			<li>
			  {$name}: <strong>{$value}</strong>
			</li>
			{/foreach}
			{/nocache}
		  </ul>
		  {if isset($FORUM_GRAPH)}
			<div id="chartWrapper">
			  <h3 class="ui header" style="margin-left:20px;">{$FORUM_GRAPH}</h3>
			  <canvas id="dataChart" width="100%" height="40"></canvas>
			</div>
		  {/if}
		</div>
	  </div>
	</div>
  </div>
</div>
{include file='footer.tpl'}