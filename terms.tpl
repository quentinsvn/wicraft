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
    <div class="card">
        <div class="card-body">
            <h2>{$TERMS}</h2>

            <p>{$SITE_TERMS}</p>
            <hr />
            <p>{$NAMELESS_TERMS}</p>

        </div>
    </div>
</div>

{include file='footer.tpl'}