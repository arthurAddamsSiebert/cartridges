/*jshint unused: false */
'use strict';

/**
 * This detects whether the given url is in the SVN server or the local source or target folder.
 * It creates 2 helper functions to determine the correct css- and js-paths for a given cartridge.
 */
function detectPath(url) {
    /* url is svn */
    var svn = url.indexOf('EnfinitySuite/components') > -1;
    /* url is local */
    var local = url.indexOf('ui_web_library\release') > -1 || url.indexOf('ui_web_library/release') > -1;
    /* uri fragment depending on being local or svn */
    var uri = local ? 'release/static/default/' : 'staticfiles/cartridge/static/default/';
    /* number of parent folders to reach cartridges folder */
    var parents = local ? 8 : 9;

    /* detect branch from svn url */
    if (svn) {
        var matches = url.match(/ui_web_library\/(.+)\/staticfiles/);
        parents = matches.length === 2 && matches[1] === 'trunk' ? 10 : 11;
        uri = matches[1] + '/' + uri;
    }

    /* create relative url to specified cartridge */

    function createUrl(cartridge, branch, folder) {
        var path = svn && typeof branch !== 'undefined' ? branch + '/staticfiles/cartridge/static/default/' : uri;
        return new Array(parents + 1).join('../') + cartridge + '/' + path + folder + '/';
    }

    return {
        css: function(cartridge, branch) {
            return createUrl(cartridge, branch, 'css');
        },
        js: function(cartridge, branch) {
            return createUrl(cartridge, branch, 'js');
        }
    };
}
