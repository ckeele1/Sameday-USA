try {
	document.getElementById("map").innerHTML = "Map loading...";
} catch(error) {}
if (!GBrowserIsCompatible()) {
  alert('Sorry. Your browser is not Google Maps compatible.');
}

var baseIcon = new GIcon(G_DEFAULT_ICON);

var placedIcon = new GIcon(G_DEFAULT_ICON);
placedIcon.shadow = "http://maps.google.com/mapfiles/arrowshadow.png";
placedIcon.iconSize = new GSize(39, 34);
placedIcon.shadowSize = new GSize(37, 34);
placedIcon.iconAnchor = new GPoint(9, 34);
placedIcon.image = "http://www.google.com/mapfiles/arrow.png";

if (window.latitude != 0 || window.longitude != 0) { mapIcon = placedIcon; } else { mapIcon = baseIcon; }

if (latitude == 0) { var latitude = 30.414926933014776; }
if (longitude == 0) { var longitude = -91.17918491363525; }
if (model == undefined) { var model = 'place'; }

var map = new GMap2(document.getElementById("map"));
map.setCenter(new GLatLng(latitude, longitude), 14);

// Select a map type which supports obliques
map.setMapType(G_NORMAL_MAP);
map.setUIToDefault();
map.disableScrollWheelZoom();
// map.enableGoogleBar();

var point = new GLatLng(latitude, longitude);
markerOptions = { icon:mapIcon, draggable:true, autoPan:false };
var marker = new GMarker(point,markerOptions);
map.addOverlay(marker);

add_event_listener(marker);

function add_event_listener(marker) {
	GEvent.addListener(marker, "dragend", function() {
		var point = marker.getPoint();
		markerOptions = { icon:placedIcon, draggable:true, autoPan:false };
		marker.remove();
		marker = new GMarker(point,markerOptions);
		map.addOverlay(marker);

		add_event_listener(marker);

		map.panTo(point);
		document.getElementById(model + "_latitude").value = point.lat();
		document.getElementById(model + "_longitude").value = point.lng();
	});	
}
