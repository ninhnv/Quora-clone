{************************************
********** Footer Template **********
*************************************}
<!-- footer.tpl -->
<div id="footer" style="text-align: center;">
	{checkActionsTpl location="tpl_pligg_footer_start"}
	<span class="subtext"> 
		{*Copyright &copy; {php} echo date('Y'); {/php} {#PLIGG_Visual_Name#}*}
		· <a style="font-size: 12px" href="#"> Advertise</a>
		· <a style="font-size: 12px" href="#"> Contacts</a>
		· <a style="font-size: 12px" href="#"> Privacy</a>
		· <a style="font-size: 12px" href="#"> Terms</a>
		· <a style="font-size: 12px" href="#"> WOGAG © 2014</a>
		{*| <a href="{$URL_advancedsearch}">Tìm kiếm</a> 
		{if $Enable_Live}
			| <a href="{$URL_live}">{#PLIGG_Visual_Live#}</a>
		{/if}
		{if $Enable_Tags}
			| <a href="{$URL_tagcloud}">{#PLIGG_Visual_Tags#}</a>
		{/if}
		| <a href="{$URL_topusers}">{#PLIGG_Visual_Top_Users#}</a> *}
		{*{if $URL_rss_page}
			| <a href="{$URL_rss_page}" target="_blank">{$pagename|capitalize} RSS Feed</a>
		{/if}
		| <a href="{$my_base_url}{$my_pligg_base}/rssfeeds.php">{#PLIGG_Visual_RSS_Feeds#}</a>*}
		{*| <a href="#"> Email: linkhayvn.com@gmail.com</a>
		| <a href="https://www.facebook.com/pages/Linkhayvncom/1494008070860563" target="_blank"> Fanpage: Linkhayvn</a>*}
	</span>
	{checkActionsTpl location="tpl_pligg_footer_end"}
</div>
<!--/footer.tpl -->