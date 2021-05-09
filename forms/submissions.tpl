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
		  <h2 class="card-title">{$SUBMISSIONS}</h2>
		  
			{if count($SUBMISSIONS_LIST)}
			  <div class="table-responsive">
				<table class="table">
				  <thead>
					<tr>
					  <th>{$FORM}</th>
					  <th>{$UPDATED_BY}</th>
					  <th>{$STATUS}</th>
					  <th></th>
					</tr>
				  </thead>
                  <tbody>
					{foreach from=$SUBMISSIONS_LIST item=submission}
                      <tr>
						<td>{$submission.form_name}</td>
						<td>
						<a href="{$submission.updated_by_profile}" style="{$submission.updated_by_style}"><img src="{$submission.updated_by_avatar}" style="max-height:25px;max-width:25px;" alt="{$submission.updated_by_name}" class="rounded"> {$submission.updated_by_name}</a>
						<br /><span data-toggle="tooltip" data-original-title="{$submission.reported_at_full}">{$submission.updated_at}</span>
						</td>
						<td><h5>{$submission.status}</h5></td>
						<td><a href="{$submission.link}" class="btn btn-primary float-right">{$VIEW} &raquo;</a></td>
                      </tr>
					{/foreach}
				  </tbody>
				</table>
			  </div>
			  {$PAGINATION}
			{else}
			  {$NO_SUBMISSIONS}
			{/if}
		  
		</div>
	  </div>
	</div>
  </div>
</div>
{include file='footer.tpl'}