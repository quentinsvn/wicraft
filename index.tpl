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
        <div class="col-12 col-md-9">
            {if count($NEWS)}
            {foreach from=$NEWS item=item}
            <div class="card_post">
                <div class="card_post_title">
                    {if isset($item.label)}{$item.label}{/if}
                    <a href="{$item.url}">{$item.title}</a>
                </div>
                <div class="card_post_content">
                    <div class="card_post_author">
                        <a href="">
                            <span>
                                <a href="{$item.author_url}" style="color:#ff0000;">
                                    {$BY|capitalize} <span>{$item.author_name}</span>
                                </a>
                            </span>
                        </a>
                        <span>
                            • <span data-toggle="tooltip" title="" data-original-title="08 Nov 2019, 19:48">{$item.time_ago}</span>
                        </span>
                    </div>
                    <div class="card_post_text">
                        {$item.content}
                    </div>
                </div>
                <div class="card_post_read">
                    <a href="{$item.url}" class="btn btn-primary btn-sm float-right mt-3 mr-4">Read more</a>
                </div>
            </div>
            {/foreach}
            {/if}
        </div>
        <div class="col-12 col-md-3">
            {if count($WIDGETS)}
            {foreach from=$WIDGETS item=widget}
            	{$widget}
            {/foreach}
        </div>
        {/if}
    </div>
</div>



{include file='footer.tpl'}