        </div><!-- END container -->
	</main>

<!--Footer-->
<footer>

    <div id="shard">
		<a href="http://node.minecraftforgefrance.fr/"><img src="/plugins/nodebb-theme-mff-4-0/images/credits.png"></a>
	</div>

    <div class="social-networks">
        <div class="container-fluid">
            <div class="row">
            	<div style="width: 15%; float: left;">&nbsp;</div>
                <div style="width: 35%; float: left;" >
                	<a href="#">Contact</a> / <a href="#">Mentions Légales</a> / <a href="#">Faire un don</a>
                </div>

                <div style="width: 50%; float: left; text-align: right;">
                    <!--Facebook-->
                    <a class="icons-sm fb-ic ml-0"><i class="fa fa-facebook"> </i></a>
                    <!--Twitter-->
                    <a class="icons-sm tw-ic"><i class="fa fa-twitter"> </i></a>
                    <!--Google +-->
                    <a class="icons-sm gplus-ic"><i class="fa fa-google-plus"> </i></a>
                    <!--Linkedin-->
                    <a class="icons-sm discord-ic"><i class="fa fa-discord"> </i></a>
                </div>
            </div>
        </div>
    </div>
    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            <div class="row">
            	<div style="width: 15%; float: left;">&nbsp;</div>
                <div style="width: 35%; float: left;">        	
            		MINECRAFT FORGE FRANCE © 2018
            	</div>
            	<div style="width: 50%; float: left;"></div>
            </div>
        </div>
    </div>

</footer>

	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>

	<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	<!-- BEGIN scripts -->
	<script defer type="text/javascript" src="{scripts.src}"></script>
	<!-- END scripts -->

	<script>
		window.addEventListener('load', function () {
			require(['forum/footer']);

			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>
</body>
</html>
