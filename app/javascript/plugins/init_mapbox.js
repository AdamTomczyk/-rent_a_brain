import mapboxgl from 'mapbox-gl';

import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 100, maxZoom: 1, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mariushepp/cksk5wn6t0kzo17qvj5zg7f4d'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    const addMarkersToMap = (map, markers) => {
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);
        // Create a HTML element for your custom marker
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '25px';
        element.style.height = '25px';
        new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });
    };
    fitMapToMarkers(map, markers);
    addMarkersToMap(map, markers);
  }
};

export { initMapbox };
