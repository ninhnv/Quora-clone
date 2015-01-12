{literal}
<style>
.hidett {
	bottom: -100px !important;
}
.showtt {
	bottom:18px !important;
}
#toTop {
	position: fixed;
	right: 32px;
	z-index: 1000;
	bottom: -100px;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-o-border-radius: 3px;
	cursor:pointer;
	-webkit-transition: all 0.4s ease;
	transition: all 0.4s ease;
}
#toTop i {	
	display: block;
	font-size: 25px;
}
#toTop:hover i {
	-webkit-animation: fadeInUp 0.4s;
	animation: fadeInUp 0.4s
}
#toTop:hover {
	opacity: 0.9;
	background: #CCC;
	border-color:#ddd;
}
</style>
{/literal}





<div class="btn btn-default" id="toTop"><i class="fa fa-angle-double-up"></i></div>



{literal}
<script type="text/javascript">
$(document).ready(function(){

	// ToTop
	jQuery('#toTop').click(function () {
		jQuery('body,html').animate({
			scrollTop: 0
		}, 1000);
	});
	
	jQuery("#toTop").addClass("hidett");
	jQuery(window).scroll(function () {
		if (jQuery(this).scrollTop() < 100) {
			jQuery("#toTop").addClass("hidett").removeClass("showtt");
		} else {
			jQuery("#toTop").removeClass("hidett").addClass("showtt");
		}
	});

});
</script>
{/literal}


<!-- end of to_top.tpl -->