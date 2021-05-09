<div class="card_post">
    <div class="card_post_title">
        <a href="">{$STATISTICS}</a>
    </div>
    <div class="card_post_content" style="padding: 5px;">
        <div class="card_post_text">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">{$TOTAL_THREADS}<span class="float-right">{$TOTAL_THREADS_VALUE}</span></li>
                <li class="list-group-item">{$TOTAL_POSTS}<span class="float-right">{$TOTAL_POSTS_VALUE}</span></li>
                <li class="list-group-item">{$USERS_REGISTERED}<span class="float-right">{$USERS_REGISTERED_VALUE}</span></li>
                <li class="list-group-item">{$LATEST_MEMBER}<span class="float-right"><a style="{$LAST_MEMBER_VALUE.style}" href="{$LATEST_MEMBER_VALUE.profile}" data-poload="{$USER_INFO_URL}{$LATEST_MEMBER_VALUE.id}" data-html="true" data-placement="top">{$LATEST_MEMBER_VALUE.nickname}</a></span></li>
            </ul>
        </div>
    </div>
</div>