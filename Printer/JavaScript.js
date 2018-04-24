function initMap() {
    var uluru = { lat: 4.939498, lng: 114.9380687};
    var map = new google.maps.Map(document.getElementById('map'),
        {
        zoom: 18,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}