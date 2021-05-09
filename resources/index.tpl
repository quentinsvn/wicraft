{include file='header.tpl'}
{include file='navbar.tpl'}

{if isset($BANNER_IMAGE)}
	<div class="banner">
		<figure>
			<img src="{$BANNER_IMAGE}" alt="">
		</figure>
		<h1>{$RESOURCES}</h1>
	</div>
{/if}
	

<div class="pr-3 pl-3 pr-md-5 pl-md-5 pt-4 pb-3">
  <div class="row">
	<div class="col-12 col-md-3">
	  {include file='resources/categories.tpl'}
	</div>
	<div class="col-12 col-md-9">
	  <div class="card">
		<div class="card-body">
		  <h2 class="card-title" style="display:inline;">{$RESOURCES}</h2>

		  <span class="pull-right">
		    {if isset($NEW_RESOURCE)}
			<a href="{$NEW_RESOURCE_LINK}" class="btn btn-primary">{$NEW_RESOURCE}</a>
			{/if}
		  </span>
		  <br /><br />

		  {if $LATEST_RESOURCES}
		  <table class="table table-striped">
			<colgroup>
			   <col span="1" style="width: 60%;">
			   <col span="1" style="width: 20%;">
			   <col span="1" style="width: 20%;">
			</colgroup>
		    <thead>
			  <tr>
			    <th>{$RESOURCE}</th>
				<th>{$STATS}</th>
				<th>{$AUTHOR}</th>
			  </tr>
			</thead>
			<tbody>
			  {foreach from=$LATEST_RESOURCES item=resource}
			  <tr>
			    <td>
				  <a href="{$resource.link}">{$resource.name}</a> <small>{$resource.version}</small><br />
				  {$resource.description}<br />
				  <small>{$resource.category}, <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$resource.updated_full}">{$resource.updated}</span></small>
				</td>
				<td>
				  <div class="star-rating view">
				    <span class="far fa-star" data-rating="1" style="color:gold;"></span>
				    <span class="far fa-star" data-rating="2" style="color:gold"></span>
				    <span class="far fa-star" data-rating="3" style="color:gold;"></span>
				    <span class="far fa-star" data-rating="4" style="color:gold;"></span>
				    <span class="far fa-star" data-rating="5" style="color:gold;"></span>
				    <input type="hidden" name="rating" class="rating-value" value="{$resource.rating}">
				  </div>
				  {$resource.views}<br />
				  {$resource.downloads}
				</td>
				<td>
				  <a href="{$resource.author_profile}"><img class="rounded" style="max-height:30px; max-width:30px;" src="{$resource.author_avatar}" alt="{$resource.author}" /></a><br />
				  <a style="{$resource.author_style}" href="{$resource.author_profile}">{$resource.author}</a>
				</td>
			  </tr>
			  {/foreach}
			</tbody>
		  </table>

		  {$PAGINATION}

		  {else}
		    {$NO_RESOURCES}
		  {/if}

		</div>
	  </div>
	</div>
  </div>
</div>

{include file='footer.tpl'}
