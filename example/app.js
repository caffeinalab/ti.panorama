// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'#CCC'
});
win.open();

// TODO: write your module tests here
var ti_panorama = require('com.caffeina.ti.panorama');
Ti.API.info("module is => " + ti_panorama);

win.add( ti_panorama.createView({
	image: "park_2048.jpg"
}) );