{************************************
******* Breadcrumbs Template ********
*************************************}
<!-- breadcrumb.tpl -->
<ul class="breadcrumb">
	{if $pagename eq "story"}<li><a href="{$my_base_url}{$my_pligg_base}">Trang chủ</a></li>{/if}
	{if $pagename eq "regulation"}<li class="active">Quy định sử dụng</li>{/if}
	{if $pagename eq "submit"}<li class="active">Đăng tin</li>{/if}
	{if $pagename eq "login"}<li class="active">{#PLIGG_Visual_Login#}</li>{/if}
	{if $pagename eq "recover"}<li class="active">{#PLIGG_Visual_Breadcrumb_Recover_Password#}</li>{/if}
	{if $pagename eq "register"}<li class="active">{#PLIGG_Visual_Register#}</li>{/if}
	{if $pagename eq "editlink"}<li><a href="{$my_base_url}{$my_pligg_base}/story.php?id={$submit_id}">{$submit_title}</a></li><li class="active">{#PLIGG_Visual_LS_Admin_Edit#}</li>{/if}
	{if $pagename eq "rssfeeds"}<li class="active">{#PLIGG_Visual_RSS_Feeds#}</li>{/if}
	{if $pagename eq "topusers"}<li class="active">{#PLIGG_Visual_TopUsers_Statistics#}</li>{/if}
	{if $pagename eq "cloud"}<li class="active">{#PLIGG_Visual_Tags_Tags#}</li>{/if}
	{if $pagename eq "live"}<li class="active">{#PLIGG_Visual_Live#}</li>{/if}
	{if $pagename eq "profile" || $pagename eq "user_edit"}
		<li><a href="{$URL_userNoVar}">{$user_login}</a></li> 
		<li class="active">{#PLIGG_Visual_Profile_ModifyProfile#}</li>
	{/if}
	{if $pagename eq "user"}
		{if $user_view eq 'search'}
			<li>{#PLIGG_Visual_User_Search_Users#}</li>
		{else}
			<li>{if $user_view neq 'profile'}<a href="{$user_url_personal_data2}">{/if}{$username}{if $user_view neq 'profile'}</a></li> {/if}
			{if $user_view neq 'profile'}<li class="active">{$page_header} <a href="{$user_rss, $view_href}" target="_blank"><i class="fa fa-rss-square opacity_reset" style="color:#EEA639;"></i></a></li>{/if}
		{/if}
	{/if}
	
	{if $pagename eq "published" || $pagename eq "index" || $pagename eq "new" || $pagename eq "search"}
	
		{if $setmeka eq "" || $setmeka eq "recent"}
			<li id="active"><a id="current" href="http://linkhayvn.com/"><span class="active">Gửi link</span></a></li>
		{else}
			<li><a href="">Gửi link</a></li>
		{/if}
		
		{*if $user_logged_in*}
			{if $setmeka eq "upvoted"}
				<li id="active" href="{$index_url_upvoted}"><a href="" id="current"><span class="active">Gửi câu hỏi</span></a></li>
			{else}
				<li><a href="http://linkhayvn.com/new/">Gửi câu hỏi</a></li>
			{/if}
			
			<!-- {if $setmeka eq "downvoted"}
				<li id="active" href="{$index_url_downvoted}"><a href="{$index_url_downvoted}" id="current"><span class="active">Most {#PLIGG_Visual_DownVoted#}</span></a></li>
			{else}
				<li><a href="{$index_url_downvoted}">Most {#PLIGG_Visual_DownVoted#}</a></li>
			{/if} -->
			
			{*{if $setmeka eq "commented"}
				<li id="active" href="{$index_url_commented}"><a href="{$index_url_commented}" id="current"><span class="active">Mới bình luận</span></a></li>
			{else}
				<li><a href="{$index_url_commented}">Mới bình luận</a></li>
			{/if}*}
		{*/if*}
	{/if}
		
	{if $pagename eq "published" || $pagename eq "index" || $pagename eq "new"}
		{*{if $setmeka eq "today"}
			<li id="active" href="{$index_url_today}"><a href="{$index_url_today}" id="current"><span class="active">Tin hôm nay</span></a></li>
		{else}
			<li><a href="{$index_url_today}">Tin hôm nay</a></li>
		{/if}
			
		{if $setmeka eq "yesterday"}
			<li id="active"><a id="current" href="{$index_url_yesterday}"><span class="active">Ngày hôm qua</span></a></li>
		{else}
			<li><a href="{$index_url_yesterday}">Ngày hôm qua</a></li>
		{/if}
			
		{if $setmeka eq "week"}
			<li id="active"><a id="current" href="{$index_url_week}"><span class="active">Tuần này</span></a></li>
		{else}
			<li><a href="{$index_url_week}">Tuần này</a></li>
		{/if}
		
		{if $setmeka eq "month"}
			<li id="active"><a id="current" href="{$index_url_month}"><span class="active">Tháng này</span></a></li>
		{else}
			<li><a href="{$index_url_month}">Tháng này</a></li>
		{/if}
		
		{if $setmeka eq "year"}
			<li id="active"><a id="current" href="{$index_url_year}"><span class="active">Tất cả</span></a></li>
		{else}
			<li><a href="{$index_url_year}">Tất cả</a></li>
		{/if}*}
		
		
	{elseif $pagename eq "groups"}
		
		<li {if $sortby eq "members"}id="active"{/if}>
			{if $sortby eq "members"}
				<a id="current" href="{$group_url_members}">
					<span class="active">{#PLIGG_Visual_Group_Sort_Members#}</span>
				</a>
			{else}
				<a href="{$group_url_members}">{#PLIGG_Visual_Group_Sort_Members#}</a>
			{/if}
		</li>							
		<li {if $sortby eq "name"}id="active"{/if}>
			{if $sortby eq "name"}
				<a id="current" href="{$group_url_name}">
					<span class="active">{#PLIGG_Visual_Group_Sort_Name#}</span>
				</a>
			{else}
				<a href="{$group_url_name}">{#PLIGG_Visual_Group_Sort_Name#}</a>
			{/if}
		</li>
		<li {if $sortby eq "newest"}id="active"{/if}>
			{if $sortby eq "newest"}
				<a id="current" href="{$group_url_newest}">
					<span class="active">{#PLIGG_Visual_Group_Sort_Newest#}</span>
				</a>
			{else}
				<a href="{$group_url_newest}">{#PLIGG_Visual_Group_Sort_Newest#}</a>
			{/if}
		</li>
		<li {if $sortby eq "oldest"}id="active"{/if}>
			{if $sortby eq "oldest"}
				<a id="current" href="{$group_url_oldest}">
					<span class="active">{#PLIGG_Visual_Group_Sort_Oldest#}</span>
				</a>
			{else}
				<a href="{$group_url_oldest}">{#PLIGG_Visual_Group_Sort_Oldest#}</a>
			{/if}
		</li>
		
	{elseif $pagename eq "live" || $pagename eq "live_published" || $pagename eq "live_unpublished" || $pagename eq "live_comments"}
	
		<li {if $pagename eq "live"}id="active"{/if}>
			<a href="{$URL_live}">
				<span {if $pagename eq "live"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_All#}</span>
			</a>
		</li>
		<li {if $pagename eq "live_published"}id="active"{/if}>
			<a href="{$URL_published}">
				<span {if $pagename eq "live_published"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span>
			</a>
		</li>
		<li {if $pagename eq "live_unpublished"}id="active"{/if}>
			<a href="{$URL_unpublished}">
				<span {if $pagename eq "live_unpublished"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span>
			</a>
		</li>
		<li {if $pagename eq "live_comments"}id="active"{/if}>
			<a href="{$URL_comments}">
				<span {if $pagename eq "live_comments"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Comments#}</span>
			</a>
		</li>
		
	{elseif $pagename eq "cloud"}
		{section name=i start=0 loop=$count_range_values step=1}
			{if $templatelite.section.i.index eq $current_range}
				<li id="active"><a href="#"><span class="active">{$range_names[i]}</span></a></li>
			{else}	
				<li><a href="{$URL_tagcloud_range, $templatelite.section.i.index}"><span>{$range_names[i]}</span></a></li>
			{/if}
		{/section}
	{/if}
	
</ul>
<!--/breadcrumb.tpl -->