import React from 'react';
import MarkerManager from '../../util/marker_manager';

class Map extends React.Component{
  constructor(props){
    super(props);
  }

  componentDidMount(){
    const mapOptions ={
      center: {lat: this.props.lat, lng: this.props.lng},
      zoom: 13,
      fullscreenControl: false,
      streetViewControl: false,
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.MarkerManager.updateMarkers(this.props.businesses);
  }

  componentDidUpdate() {
    this.MarkerManager.updateMarkers(this.props.businesses);
  }

  render(){
    return (
      <div className="map" ref={map => this.mapNode = map} />
    );
  }

}

export default Map;