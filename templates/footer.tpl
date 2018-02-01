        </div><!-- END container -->
	</main>

  <!--Footer-->
  <footer>
    <div class="container-fluid">
      <div class="row footer-row">
        <div class="col-xs-12 col-sm-8 col-md-7 col-lg-6">
          <div class="shard footer-shard">
            <a href="http://node.minecraftforgefrance.fr/"><img src="/plugins/nodebb-theme-mff-4-0/images/credits.png" alt="Design by Woryk"></a>
          </div>
          <div class="footer-link">
            <a href="#">Contact</a> / <a href="#">Mentions Légales</a> / <a href="#">Faire un don</a>
          </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-5 col-lg-6">
          <div class="pull-right footer-social-networks">
              <!--Facebook-->
              <a class="icons-sm fb-ic ml-0"><i class="fa fa-facebook"> </i></a>
              <!--Twitter-->
              <a class="icons-sm tw-ic"><i class="fa fa-twitter"> </i></a>
              <!--Linkedin-->
              <a class="icons-sm discord-ic"><i class="fa fa-discord"> </i></a>
          </div>
        </div>
      </div>
      <div class="row footer-copyright footer-row">
        <div class="col-xs-12">
          <p class="footer-link">MINECRAFT FORGE FRANCE © 2018</p>
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
