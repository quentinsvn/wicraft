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
			<ol class="breadcrumb breadcrumb-arrow p-0">
				<li class="breadcrumb-item"><a href="{$BREADCRUMB_URL}" class="text-uppercase pl-3">{$BREADCRUMB_TEXT}</a></li>
		  	</ol>
            {if isset($SPAM_INFO)}
            <div class="alert alert-info">{$SPAM_INFO}</div>
            {/if}

            {foreach from=$FORUMS key=category item=forum}
            {assign var=counter value=1}
            <div class="card_post">
                {if !empty($forum.subforums)}
				<div class="card_post_title">{$forum.title}</div>
                <div class="card_post_content">
                    {foreach from=$forum.subforums item=subforum}
                    <div class="row align-items-center">
                        <div class="col-md-1">
                            {if empty($subforum->icon)}<i class="fas fa-comments fa-fw fa-2x" aria-hidden="true"></i>{else}{$subforum->icon}{/if}
                        </div>
                        <div class="col-md-5">
                            <a href="{if !isset($subforum->redirect_confirm)}{$subforum->link}{else}#" data-toggle="modal" data-target="#confirmRedirectModal{$subforum->id}{/if}">{$subforum->forum_title}</a><br />
                            {$subforum->forum_description}
                        </div>
                        {if !isset($subforum->redirect_confirm)}
                        <div class="col-md-2">
                            <strong>{$subforum->topics}</strong> {$TOPICS}<br />
                            <strong>{$subforum->posts}</strong> {$POSTS}
                        </div>
                        <div class="col-md-4">
                            {if isset($subforum->last_post)}
                            <div class="row align-items-center">
                                <div class="col-md-3">
                                    <div class="frame">
                                        <a href="{$subforum->last_post->profile}"><img alt="{$subforum->last_post->profile}" style="height:40px; width:40px;" class="img-centre rounded" src="{$subforum->last_post->avatar}" /></a>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <a href="{$subforum->last_post->link}">{$subforum->last_post->title}</a>
                                    <br />
                                    <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$subforum->last_post->post_date}">{$subforum->last_post->date_friendly}</span><br />{$BY} <a data-poload="{$USER_INFO_URL}{$subforum->last_post->post_creator}" data-html="true" data-placement="top" style="{$subforum->last_post->user_style}" href="{$subforum->last_post->profile}">{$subforum->last_post->username}</a>
                                </div>
                            </div>
                            {else}
                            {$NO_TOPICS}
                            {/if}
                        </div>
                        {else}
                        <div class="modal fade" id="confirmRedirectModal{$subforum->id}" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        {$subforum->redirect_confirm}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                                        <a class="btn btn-primary" href="{$subforum->redirect_url}" target="_blank" rel="noopener nofollow">{$YES}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {/if}
                    </div>
                    {if isset($subforum->subforums)}
                    <br />
                    {assign var=sf_counter value=1}
                    <div class="row">
                        {foreach from=$subforum->subforums item=sub_subforum}
                        <div class="col-md-4">
                            {if empty($sub_subforum->icon)}<i class="fa fa-folder-open" aria-hidden="true"></i>{else}{$sub_subforum->icon}{/if}&nbsp;&nbsp;<a href="{$sub_subforum->link}">{$sub_subforum->title}</a>
                            {assign var=sf_counter value=$sf_counter+1}
                        </div>
                        {if $sf_counter eq 4}
                    </div>
                    <div class="row">
                        {/if}
                        {/foreach}
                    </div>
                    {/if}
                    {if ($forum.subforums|@count) != $counter}
                    <hr />
                    {/if}
                    {assign var=counter value=$counter+1}
                    {/foreach}
                </div>
                {/if}
            </div>
            <br />
            {/foreach}
        </div>
        <div class="col-12 col-md-3">

            <div class="card_post">

                <form class="form-horizontal" role="form" method="post" action="{$SEARCH_URL}">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" name="forum_search" placeholder="{$SEARCH}">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <div class="input-group-append">
                            <button style="background-color: brown; color: white; border:none;" class="btn btn-outline-secondary" type="submit"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>

                {if count($WIDGETS)}
                <br />
                {foreach from=$WIDGETS item=widget}
                {$widget}
                {/foreach}
                {/if}
            </div>
        </div>
    </div>




    {include file='footer.tpl'}