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

function initializeMap() {
    var locations;
    
    var mapOptions = {
        zoomControl: true,
        scaleControl: true,
        streetViewControl: true,
        rotateControl: true,
        fullscreenControl: true,
        mapTypeId: 'satellite'
    };
    map = new google.maps.Map(document.querySelector('#map'), mapOptions);
    /*
    locationFinder() returns an array of every location string from the JSONs written for bio, education, and work.
    */
    function locationFinder() {
        var locations = [];
        ubicacion.sitio.forEach(function(school) {
            locations.push(school.location);
        });
        
        return locations;
    }
    /*
    createMapMarker(placeData) reads Google Places search results to create map pins. placeData is the object returned from search results containing information
    about a single location.
    */
    function createMapMarker(placeData) {
        // The next lines save location data from the search result object to local variables
        var lat = placeData.geometry.location.lat(); // latitude from the place service
        document.getElementById('latitud').value=lat;
        var lon = placeData.geometry.location.lng(); // longitude from the place service
        document.getElementById('longitud').value=lon;
        var name = placeData.formatted_address; // name of the place from the place service
        var bounds = window.mapBounds; // current boundaries of the map window
        // marker is an object with additional data about the pin for a single location
        var marker = new google.maps.Marker({
            map: map,
            position: placeData.geometry.location,
            title: name,
            draggable: true,
            label:'A'
        });

        // infoWindows are the little helper windows that open when you click or hover over a pin on a map. They usually contain more information
        // about a location.
        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h1 id="firstHeading" class="firstHeading">' + name + '</h1>' +
            '<div id="bodyContent">' +
            '<p><b>' + name + '</b>' +
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

    /*
     makes sure the search returned results for a location.If so, it creates a new map marker for that location.
    */
    function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            createMapMarker(results[0]);
        }
    }

    /*
    pinPoster(locations) takes in the array of locations created by locationFinder() and fires off Google place searches for each location
    */
    function pinPoster(locations) {

        // creates a Google place search service object. PlacesService does the work of
        // actually searching for location data.
        var service = new google.maps.places.PlacesService(map);

        // Iterates through the array of locations, creates a search object for each location
        locations.forEach(function(place) {
            // the search request object
            var request = {
                query: place
            };

            // Actually searches the Google Maps API for location data and runs the callback
            // function with the search results after each search.
            service.textSearch(request, callback);
        });
    }

    // Sets the boundaries of the map based on pin locations
    window.mapBounds = new google.maps.LatLngBounds();

    // locations is an array of location strings returned from locationFinder()
    locations = locationFinder();

    // pinPoster(locations) creates pins on the map for each location in the locations array
    pinPoster(locations);

}

// Calls the initializeMap() function when the page loads
window.addEventListener('load', initializeMap);

// Vanilla JS way to listen for resizing of the window and adjust map bounds
window.addEventListener('resize', function(e) {
    //Make sure the map bounds get updated on page resize
    map.fitBounds(mapBounds);
});
