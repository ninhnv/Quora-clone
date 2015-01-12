{if $ss_body ne ''}
<div class="headline">
	<div class="sectiontitle headline-custom"><a style="color:#666" href="{$my_base_url}{$my_pligg_base}{if $pagename eq "index"}/new.php{/if}">Top Stories</a></div>
</div>
<div class="boxcontent">
	<ul class="sidebar-stories">
		{$ss_body}
	</ul>
</div>
{/if}
