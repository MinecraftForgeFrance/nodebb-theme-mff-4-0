        </div><!-- END container -->
	</main>

  <!--Footer-->
  <footer>
    <div class="container-fluid">
      <div class="row footer-row first-footer-row">
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
              <a href="https://www.facebook.com/MinecraftForgeFrance" target="_blank" class="icons-sm"><i class="fa fa-facebook"> </i></a>
              <!--Twitter-->
              <a href="https://twitter.com/MCForgeFrance" target="_blank" class="icons-sm"><i class="fa fa-twitter"> </i></a>
              <!--Youtube-->
              <a href="https://www.youtube.com/user/MinecraftForgeFrance" target="_blank" class="icons-sm"><i class="fa fa-youtube"> </i></a>
              <!--Discord-->
              <a href="https://discordapp.com/invite/0uXCYNHVWGM8sAYS" target="_blank" class="icons-sm">
                <!-- svg from font awesome 5, need to replace it when nodebb will update font awesome -->
                <svg class="discord-icon-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path class="discord-icon" d="M297.216 243.2c0 15.616-11.52 28.416-26.112 28.416-14.336 0-26.112-12.8-26.112-28.416s11.52-28.416 26.112-28.416c14.592 0 26.112 12.8 26.112 28.416zm-119.552-28.416c-14.592 0-26.112 12.8-26.112 28.416s11.776 28.416 26.112 28.416c14.592 0 26.112-12.8 26.112-28.416.256-15.616-11.52-28.416-26.112-28.416zM448 52.736V512c-64.494-56.994-43.868-38.128-118.784-107.776l13.568 47.36H52.48C23.552 451.584 0 428.032 0 398.848V52.736C0 23.552 23.552 0 52.48 0h343.04C424.448 0 448 23.552 448 52.736zm-72.96 242.688c0-82.432-36.864-149.248-36.864-149.248-36.864-27.648-71.936-26.88-71.936-26.88l-3.584 4.096c43.52 13.312 63.744 32.512 63.744 32.512-60.811-33.329-132.244-33.335-191.232-7.424-9.472 4.352-15.104 7.424-15.104 7.424s21.248-20.224 67.328-33.536l-2.56-3.072s-35.072-.768-71.936 26.88c0 0-36.864 66.816-36.864 149.248 0 0 21.504 37.12 78.08 38.912 0 0 9.472-11.52 17.152-21.248-32.512-9.728-44.8-30.208-44.8-30.208 3.766 2.636 9.976 6.053 10.496 6.4 43.21 24.198 104.588 32.126 159.744 8.96 8.96-3.328 18.944-8.192 29.44-15.104 0 0-12.8 20.992-46.336 30.464 7.68 9.728 16.896 20.736 16.896 20.736 56.576-1.792 78.336-38.912 78.336-38.912z"/></svg>
              </a>
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
