'use strict';

var striptags = require('striptags');
var meta = module.parent.require('./meta');
var user = module.parent.require('./user');

var library = {};

library.init = function(params, callback) {
	var app = params.router;
	var middleware = params.middleware;

	app.get('/admin/plugins/persona', middleware.admin.buildHeader, renderAdmin);
	app.get('/api/admin/plugins/persona', renderAdmin);

	callback();
};

library.addAdminNavigation = function(header, callback) {
	header.plugins.push({
		route: '/plugins/persona',
		icon: 'fa-paint-brush',
		name: 'Persona Theme'
	});

	callback(null, header);
};

library.getTeasers = function(data, callback) {
	data.teasers.forEach(function(teaser) {
		if (teaser && teaser.content) {
			teaser.content = striptags(teaser.content, ['img']);
		}
	});
	callback(null, data);
};

library.defineWidgetAreas = function(areas, callback) {
	areas = areas.concat([
		{
			name: "Categories Sidebar",
			template: "categories.tpl",
			location: "sidebar"
		},
		{
			name: "Category Sidebar",
			template: "category.tpl",
			location: "sidebar"
		},
		{
			name: "Topic Sidebar",
			template: "topic.tpl",
			location: "sidebar"
		},
		{
			name: "Categories Header",
			template: "categories.tpl",
			location: "header"
		},
		{
			name: "Category Header",
			template: "category.tpl",
			location: "header"
		},
		{
			name: "Topic Header",
			template: "topic.tpl",
			location: "header"
		},
		{
			name: "Categories Footer",
			template: "categories.tpl",
			location: "footer"
		},
		{
			name: "Category Footer",
			template: "category.tpl",
			location: "footer"
		},
		{
			name: "Topic Footer",
			template: "topic.tpl",
			location: "footer"
		}
	]);

	callback(null, areas);
};

library.getThemeConfig = function(config, callback) {

	meta.settings.get('persona', function(err, settings) {
		config.hideSubCategories = settings.hideSubCategories === 'on';
		config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
		config.enableQuickReply = settings.enableQuickReply === 'on';
	});

	callback(false, config);
};

function renderAdmin(req, res, next) {
	res.render('admin/plugins/persona', {});
}

library.addUserToTopic = function(data, callback) {
	if (data.req.user) {
		user.getUserData(data.req.user.uid, function(err, userdata) {
			if (err) {
				return callback(err);
			}

			data.templateData.loggedInUser = userdata;
			callback(null, data);
		});
	} else {
		callback(null, data);
	}
};

library.addUserSettings = function(data, callback) {
	let availableSkins = [{
		name: 'Light',
		value: 'light'
	}, {
		name: 'Dark',
		value: 'dark'
	}];

	let options = '';
	availableSkins.forEach(function(skin) {
		options += `<option value="${skin.value}" ${(data.settings.mffThemeSkin === skin.value) ? 'selected' : ''}>${skin.name}</option>`;
	});

	data.customSettings.push({
		title: 'Paramètre du thème',
		content: '<div class="form-group"><label for="mffThemeSkin">Style de MFFv4</label><select class="form-control" id="mffThemeSkin" data-property="mffThemeSkin" autocomplete="off">' + options + '</select><input type="hidden" id="bootswatchSkin" value="default"></div>'
		// hidden input is a hack to avoid nodebb to clear the skin
	});

	callback(null, data);
};

library.saveUserSettings = function(data, callback) {
	user.setUserField(data.uid, "mffthemeskin", data.settings.mffThemeSkin);
};

library.getUserSettings = function(data, callback) {
	user.getUserField(data.uid, "mffthemeskin", (err, mffSkin) => {
		if(!err && mffSkin) {
			data.settings.mffThemeSkin = mffSkin;
		} else {
			data.settings.mffThemeSkin = "light";
		}
		callback(null, data);
	});
};

library.appendUserFields = function(data, callback) {
	data.whitelist.push("mffthemeskin");
	callback(null, data);
};

library.renderHeader = function(data, callback) {
	if(data.res.locals.config.uid) {
		user.getUserField(data.res.locals.config.uid, "mffthemeskin", (err, mffSkin) => {
			if(!err && mffSkin && mffSkin === "dark") {
				data.templateValues.bootswatchCSS = '/plugins/nodebb-theme-mff-4-0/styles/dark-skin.css';
			}
			callback(null, data);
		});
	}
	else {
		callback(null, data);
	}
};

module.exports = library;
