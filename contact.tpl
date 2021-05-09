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
            {if isset($SUCCESS)}
                <div class="alert alert-success">
                    {$SUCCESS}
                </div>
            {/if}
            <form action="" method="post">
                {if isset($ERROR)}
                    <div class="alert alert-danger">
                        {$ERROR}
                    </div>
                {/if}
                {if isset($ERROR_EMAIL)}
                    <div class="alert alert-danger">
                        {$ERROR_EMAIL}
                    </div>
                {/if}			
                <div class="form-group">
                    <input type="email" name="email" id="email" class="form-control form-control-lg" placeholder="{$EMAIL}" tabindex="3">
                </div>
                {if isset($ERROR_CONTENT)}
                    <div class="alert alert-danger">
                        {$ERROR_CONTENT}
                    </div>
                {/if}
                <div class="form-group">
                    <label for="inputMessage">{$MESSAGE}</label>
                    <textarea id="inputMessage" name="content" class="form-control" rows="5"></textarea>
                </div>
                {if isset($RECAPTCHA)}
                    <div class="form-group">
                        <div class="g-recaptcha" data-sitekey="{$RECAPTCHA}"></div>
                    </div>
                {/if}
                <div class="form-group">
                    <input type="hidden" name="token" value="{$TOKEN}">
                    <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                </div>
            </form>
        </div>
    </div>
</div>

{include file='footer.tpl'}