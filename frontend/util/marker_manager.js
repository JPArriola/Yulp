class MarkerManager {
  constructor(map){
    this.map = map;
    this.markers = {};
    this.markerLabel = 1;
  }

  updateMarkers(businesses){
    let businessesObj = {};

    businesses.forEach(business => businessesObj[business.id] = business);
    businesses.filter(business => !this.markers[business.id])
      .forEach(newBusiness => {
        this.createMarkerFromBusiness(newBusiness)
        this.markerLabel++;
      });

    Object.keys(this.markers)
      .filter(businessId => !businessesObj[businessId])
      .forEach(businessId => this.removeMarker(this.markers[businessId]))
  }
  
  createMarkerFromBusiness(business) {
    const position = new google.maps.LatLng(business.lat, business.lng);
    const marker = new google.maps.Marker({
      position,
      label: {
        text: this.markerLabel.toString(),
        color: "#ffffff",
        fontWeight: "bold"
      },
      map: this.map,
      businessId: business.id
    });

    this.markers[marker.businessId] = marker;
  }

  removeMarker(marker) {
    this.markers[marker.businessId].setMap(null);
    delete this.markers[marker.businessId];
  }
}

export default MarkerManager;