<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 col-md-12 col-sm-12">
		<div class="section-header">
            <div class="pull-right">
                <a data-toggle="collapse" href="#collapse-section-{../cid}"><i class="fa fa-minus"></i></a>
            </div>
			<h2 class="title">
				{../name}
			</h2>
			<!-- IF ../descriptionParsed -->
			<p>{../descriptionParsed}</p>
			<!-- ENDIF ../descriptionParsed -->
		</div>
		<div class="section-contents collapse in" id="collapse-section-{../cid}">
			<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
                <!-- BEGIN children -->
                <!-- IMPORT partials/categories/item.tpl -->
                <!-- END children -->
            </ul>
		</div>
	</div>
</li>
