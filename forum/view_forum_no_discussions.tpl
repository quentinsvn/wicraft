{include file='header.tpl'}
{include file='navbar.tpl'}

{if isset($BANNER_IMAGE)}
<div class="banner">
    <figure>
        <img src="{$BANNER_IMAGE}" alt="">
    </figure>
    <h1>Forum - {$FORUM_TITLE}</h1>
</div>
{/if}

<div class="pr-3 pl-3 pr-md-5 pl-md-5 pt-4">


    <div class="row">
        <div class="col-md-9">
            <ol class="breadcrumb breadcrumb-arrow p-0">
                {foreach from=$BREADCRUMBS item=breadcrumb}
                <li class="breadcrumb-item {if isset($breadcrumb.active)} active{/if}">{if !isset($breadcrumb.active)}<a href="{$breadcrumb.link}">{/if}{$breadcrumb.forum_title}{if !isset($breadcrumb.active)}</a>{/if}</li>
                {/foreach}
            </ol>
            <h3 style="display: inline;">{$FORUM_TITLE}</h3>{if $NEW_TOPIC_BUTTON}<span class="float-md-right"><a href="{$NEW_TOPIC_BUTTON}" class="btn btn-primary">{$NEW_TOPIC}</a></span>{/if}<br /><br />
            {if !empty($SUBFORUMS)}
            <div class="table-responsive">
                <table class="table table-striped">
                    <colgroup>
                        <col span="1" style="width:50%">
                        <col span="1" style="width:20%">
                        <col span="1" style="width:30%">
                    </colgroup>
                    <tr>
                        <th colspan="3">{$SUBFORUM_LANGUAGE}</th>
                    </tr>
                    {foreach from=$SUBFORUMS item=subforum}
                    <tr>
                        <td>{$subforum.icon} <a href="{$subforum.link}">{$subforum.title}</a></td>
                        <td>{if !$subforum.redirect}<strong>{$subforum.topics}</strong> {$TOPICS}{/if}</td>
                        <td>
                            {if !$subforum.redirect}
                            {if count($subforum.latest_post)}
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="frame">
                                        <a href="{$subforum.latest_post.last_user_link}"><img class="img-centre rounded" style="height:40px; width:40px;" src="{$subforum.latest_post.last_user_avatar}" alt="{$subforum.latest_post.last_user}" /></a>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <a href="{$subforum.latest_post.link}">{$subforum.latest_post.title}</a>
                                    <br />
                                    <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$subforum.latest_post.time}">{$subforum.latest_post.timeago}</span><br />{$BY} <a style="{$subforum.latest_post.last_user_style}" href="{$subforum.latest_post.last_user_link}" data-poload="{$USER_INFO_URL}{$subforum.latest_post.last_user_id}" data-html="true" data-placement="top">{$subforum.latest_post.last_user}</a>
                                </div>
                            </div>
                            {else}
                            {$NO_TOPICS}
                            {/if}
                            {/if}
                        </td>
                    </tr>
                    {/foreach}
                </table>
            </div>
            {/if}

            {$NO_TOPICS_FULL}
        </div>
        <div class="col-md-3">
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