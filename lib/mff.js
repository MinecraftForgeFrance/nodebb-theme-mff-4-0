"use strict";

$(document).ready(function() {
    if($('#content').find('div.account').length !== 0 || $('#content').find('div.groups').length !== 0) {
        $('#banner').css("display", "none");
    }

    $(window).on('action:ajaxify.start', function(ev, data) {
        if (data.url && data.url.match('user/') || data.url.match('groups/') ) {
            $('#banner').css("display", "none");
        }
    });

    $(window).on('action:ajaxify.end', function(ev, data) {
        // display banner at end to avoid weird transition
        if (!data.url || (!data.url.match('user/') && !data.url.match('groups/')) ) {
            $('#banner').css("display", "block");
        }
    });

    $('.section-toggle').click(function() {
        if($(this).hasClass("fa-minus")) {
            $(this).removeClass("fa-minus");
            $(this).addClass("fa-plus");
        }
        else {
            $(this).removeClass("fa-plus");
            $(this).addClass("fa-minus");
        }
    });
});
