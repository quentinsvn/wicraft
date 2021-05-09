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

<div class="pr-3 pl-3 pr-md-5 pl-md-5 pt-4">
    <div class="row">
        <div class="col-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <h2>{$FORUM_SEARCH}</h2>

                    {if isset($ERROR)}
                    <div class="alert alert-danger">
                        {$ERROR}
                    </div>
                    {/if}

                    <form class="form-horizontal" role="form" method="post" action="{$FORM_ACTION}">
                        <div class="input-group">
                            <input type="text" class="form-control input-sm" name="forum_search" placeholder="{$SEARCH}">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}