/*!
 * jQuery Cookie Plugin v1.2
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2011, Klaus Hartl
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/GPL-2.0
 */
!function(e,t,n){function i(e){return e}function r(e){return decodeURIComponent(e.replace(o," "))}var o=/\+/g;e.cookie=function(o,a,s){if(a!==n&&!/Object/.test(Object.prototype.toString.call(a))){if(s=e.extend({},e.cookie.defaults,s),null===a&&(s.expires=-1),"number"==typeof s.expires){var l=s.expires,u=s.expires=new Date;u.setDate(u.getDate()+l)}return a=String(a),t.cookie=[encodeURIComponent(o),"=",s.raw?a:encodeURIComponent(a),s.expires?"; expires="+s.expires.toUTCString():"",s.path?"; path="+s.path:"",s.domain?"; domain="+s.domain:"",s.secure?"; secure":""].join("")}s=a||e.cookie.defaults||{};for(var c,h=s.raw?i:r,d=t.cookie.split("; "),f=0;c=d[f]&&d[f].split("=");f++)if(h(c.shift())===o)return h(c.join("="));return null},e.cookie.defaults={},e.removeCookie=function(t,n){return null!==e.cookie(t,n)?(e.cookie(t,null,n),!0):!1}}(jQuery,document);