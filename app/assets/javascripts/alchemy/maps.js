var map;
var marker;


function initmap() {
  // set up the map
  map = new L.Map('map-input');

  marker = L.marker([52.51537, 13.37874], {
    draggable: true
  });

  if ($('#location_lat').val() != "") {
    marker.setLatLng([$('#location_lat').val(), $('#location_lon').val()])
  }
  // create the tile layer with correct attribution

  var osmUrl='http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
  var osmAttrib='Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
  var osm = new L.TileLayer(osmUrl, { attribution: osmAttrib});
  // start the map in central Berlin
  map.setView(marker.getLatLng(), 15);
  map.addLayer(osm);
  marker.addTo(map);
}

function setMarker(point) {
  marker.setLatLng(point);
  map.setView(point, 15);
}

function fillLatLon(point) {
  $('#location_lat').val(point[0]);
  $('#location_lon').val(point[1]);
}

function lookup(street, number, postal_code) {
  results = $.getJSON('http://nominatim.openstreetmap.org/search?format=json&limit=1&street=' + street + " " + number + '&postalcode=' + postal_code, function (data) {
      var items = [];

      $.each(data, function(key, val) {
          var point = [parseFloat(val.lat), parseFloat(val.lon)];
          items.push(point);
      });

      if (items.length >= 1) {
        fillLatLon(items[0]);
        setMarker(items[0]);
      }
    });
}

function check_input() {
  var street = $('#location_street').val();
  var number = $('#location_number').val();
  var postal_code = $('#location_postal_code').val();
  if(
    street.match(/\w{5,}/) &&
    number.match(/\w{1,}/) &&
    postal_code.match(/\w{4,}/)
    ) {
    console.log("Street matches");
    var point = lookup(street, number, postal_code);
  }
}


$(document).ajaxStop(function() {

  initmap();

  $('#location_street, #location_number, #location_postal_code').change(function() {
    check_input();
  });

  marker.on("dragend",function(ev){

      var changedPos = ev.target.getLatLng();
      console.log(changedPos);
      fillLatLon([changedPos["lat"], changedPos["lng"]]);

  });
});