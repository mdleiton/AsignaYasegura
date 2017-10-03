/*
https://developers.google.com/maps/documentation/javascript/reference
*/
var map; // declare a global map variable
/*
Start here! initializeMap() is called when page is loaded.
*/
function arrastreTermino(event) {
        var lat = event.latLng.lat();
        var lng = event.latLng.lng();
        document.getElementById('latitud').value=lat;
        document.getElementById('longitud').value=lng;       
    }

function initMap() {   
        var lat=document.getElementById('latitudn').value;
        var lon=document.getElementById('longitudn').value;
        document.getElementById('latitud').value=document.getElementById('latitudn').value;  
        document.getElementById('longitud').value=document.getElementById('longitudn').value;
        var myLatLng = {lat: parseFloat(document.getElementById('latitudn').value), lng: parseFloat(document.getElementById('longitudn').value)};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: myLatLng,
          mapTypeId: 'satellite'
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Esta es mi dirección',
          label:'A',
          draggable: true
        });

        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h1 id="firstHeading" class="firstHeading">' + document.getElementById('direccion').value + '</h1>' +
            '<div id="bodyContent">' +
            '<p><b>' + document.getElementById('direccion').value + '</b>' +
            '</div>' +
            '</div>';
        var infoWindow = new google.maps.InfoWindow({
            content: contentString
        });
        marker.setMap(map);
        google.maps.event.addListener(marker, "dragend", function (event) {
            arrastreTermino(event);
        });

        google.maps.event.addListener(marker, 'click', function() {
            infoWindow.open(map, marker);
        });
        // this is where the pin actually gets added to the map. bounds.extend() takes in a map location object
        bounds.extend(new google.maps.LatLng(lat, lon));
        // fit the map to the new marker
        map.fitBounds(bounds);
        // center the map
        map.setCenter(bounds.getCenter());

      }


// Calls the initializeMap() function when the page loads
window.addEventListener('load', initializeMap);

// Vanilla JS way to listen for resizing of the window and adjust map bounds
window.addEventListener('resize', function(e) {
    //Make sure the map bounds get updated on page resize
    map.fitBounds(mapBounds);
});
