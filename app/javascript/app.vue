<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>



<script>
// マップの初期化
var map = new google.maps.Map(document.getElementById('map'), {
  zoom: 13,
  center: {lat: 43.0553626, lng: 141.341062},
  mapTypeId: 'roadmap'
});

// クリックイベントを追加
map.addListener('click', function(e){
  map.panTo(e.latLng);
  getAddress(e.latLng);
});

function getAddress(latlng) {
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode({
    latLng: latlng
  }, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      if (results[0].geometry) {
        var address = results[0].formatted_address.replace(/^日本(、|,)/, '');
        app.adrs_list.push({address: address, lat: latlng.lat(), lng: latlng.lng(), comment: ""});
        var marker = new google.maps.Marker({ position: latlng, map: map, title: address, animation: google.maps.Animation.DROP });
      }
    } else {
      app.adrs_list.push({address: "", lat: latlng.lat(), lng: latlng.lng(), comment: status});
    }
  });
}    
</script>


<style>
  #map {
    height: 400px;
  }
</style>