<div class="card">
    <div class="card_post_title">
        <a>{$LATEST_PURCHASES}</a>
    </div>
    <div class="card_post_content" style="padding: 5px;">
        <div class="card_post_text">
            {if count($PURCHASES)}
                {foreach from=$PURCHASES item=purchase name=purchases_array}
                    <div class="card_post_content">
                        <div class="col-md-3">
                            <a {if $purchase.user_id}href="{$purchase.profile}" {/if} data-poload="{$USER_INFO_URL}{if $purchase.user_id > 0}{$purchase.user_id}{else}{$purchase.username}&uuid={$purchase.uuid}{/if}"><img class="img-centre rounded" style="max-height:30px;max-width:30px;" src="{$purchase.avatar}" alt="{$purchase.username}" /></a>
                        </div>
                        <div class="col-md-9">
                            <a href="{$purchase.profile}" style="{$purchase.style}" data-poload="{$USER_INFO_URL}{if $purchase.user_id > 0}{$purchase.user_id}{else}{$purchase.username}&uuid={$purchase.uuid}{/if}" data-html="true" data-placement="top">{$purchase.username}</a><br />
                            <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$purchase.date_full}">{$purchase.date_friendly}</span>
                        </div>
                    </div>
                    {if not $smarty.foreach.purchases_array.last}
                    <hr />{/if}
                {/foreach}
            {/if}
        </div>
    </div>
</div>