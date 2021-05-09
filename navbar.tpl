<div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h2>{$SITE_NAME}</h2>
        </div>

        <ul class="list-unstyled components list-group">
            {foreach from=$NAV_LINKS key=name item=item}
            {if isset($item.items)}
            {* Dropdown *}
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">{$item.icon} {$item.title}</a>
                <div class="dropdown-menu">
                    {foreach from=$item.items item=dropdown}
                    <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                    {/foreach}
                </div>
            </li>
            {else}
            {* Normal link *}
            <li class="{if isset($item.active)} active{/if}">
                <a class="list-group-item" href="{$item.link}" target="{$item.target}">{$item.icon} <span> {$item.title}</span></a>
            </li>
            {/if}
            {/foreach}
        </ul>
    </nav>

    <div id="content">
        <div class="row pt-3 pb-2 pl-3 pr-3" style="margin-right: 0; background-color: #37383b; color: white;">
            <div class="col-6">
                <button type="button" id="sidebarCollapse" class="btn btn-secondary mr-2 d-none d-xl-block d-lg-block d-md-block">
                    <i class="fas fa-bars"></i>
                </button>
                <button type="button" class="btn btn-primary mb-2 navbar-toggle d-none d-sm-block d-md-none d-block d-sm-none" data-toggle="collapse" data-target="#myNavbar">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
            <div class="col-6 icones_nav">
                <ul class="icones_ul float-right d-none d-xl-block d-lg-block">
                    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <li>
                        <a href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="pp" style="vertical-align: middle;">{$item.icon} {$item.title}</span>
                            <i style="vertical-align: middle;" class="fas fa-angle-down ml-1"></i>
                        </a>
                        <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenuLink">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="dropdown-divider"></div>
                            {else}
                            <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                    </li>
                    {else}
                    <li>
                        <a class="btn btn-secondary" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                        <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenuLink">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="dropdown-divider"></div>
                            {else}
                            <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                    </li>
                    {/if}
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="ui divider"></div>
                            {else}
                            <a class="useritem" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="useritem" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <li>
                        <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                    </li>
                    {elseif ($name == "register")}
                    <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav pl-3">
                    {foreach from=$NAV_LINKS key=name item=item}
                    {if isset($item.items)}
                    {* Dropdown *}
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">{$item.icon} {$item.title}</a>
                        <div class="dropdown-menu">
                            {foreach from=$item.items item=dropdown}
                            <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/foreach}
                        </div>
                    </li>
                    {else}
                    {* Normal link *}
                    <li class="nav-item {if isset($item.active)} active{/if}">
                        <a class="nav-link" href="{$item.link}" target="{$item.target}">{$item.icon} <span> {$item.title}</span></a>
                    </li>
                    {/if}
                    {/foreach}
                </ul>
                <ul class="icones_ul nav navbar-nav navbar-right pl-3 d-inline">
                    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <li>
                        <a href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="pp" style="vertical-align: middle;">{$item.icon} {$item.title}</span>
                            <i style="vertical-align: middle;" class="fas fa-angle-down ml-1"></i>
                        </a>
                        <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenuLink">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="dropdown-divider"></div>
                            {else}
                            <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                    </li>
                    {else}
                    <li>
                        <a class="btn btn-secondary" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                        <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenuLink">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="dropdown-divider"></div>
                            {else}
                            <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                    </li>
                    {/if}
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.seperator)}
                            <div class="ui divider"></div>
                            {else}
                            <a class="useritem" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="useritem" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <li>
                        <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                    </li>
                    {elseif ($name == "register")}
                    <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="btn btn-primary" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </ul>
            </div>
        </div>