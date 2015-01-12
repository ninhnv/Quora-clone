{************************************
***** Published Pages Template ******
*************************************}
<!-- index_center.tpl -->

{if !$link_summary_output && $pagename == 'index' && count($templatelite.get) == 0}
	{* Welcome message for new installations *}
	<div class="well blank_index">
		<h2>Giới thiệu Linkhayvn</h2>
		<p style="font-size:1.0em;">Bạn muốn theo dõi tin tức nhưng thấy rắc rối khi phải mở cả chục website xem tin tức mỗi sáng? Đó là lí do vì sao có LinkHayvn: mang đến cho bạn thông tin cộng đồng quan tâm nhất. </p>
		<p><a href="submit.php" class="btn btn-default">Join us!</a></p>
	</div>
{/if}

{$link_summary_output}

{checkActionsTpl location="tpl_pligg_pagination_start"}
{$link_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}
<!--/index_center.tpl -->