{include file='header.tpl'}
{include file='navbar.tpl'}
<br />
<div class="pr-3 pl-3 pr-md-5 pl-md-5 pt-4 pb-3">
  <div class="row">
	<div class="col-md-6 offset-md-3">
	  <div class="jumbotron">
		<center>
		  <h2>{$NOT_FOUND}</h2>
		  <br />
		  <div class="btn-group" role="group" aria-label="...">
			<a href="#" class="btn btn-primary btn-lg" onclick="window.history.back()">{$BACK}</a>
			<a href="/" class="btn btn-success btn-lg">{$HOME}</a>
		  </div>
		</center>
	  </div>
	</div>
  </div>
</div>
{include file='footer.tpl'}