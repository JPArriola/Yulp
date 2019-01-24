import React from 'react';
import MarkerManager from '../../util/marker_manager';

class Map extends React.Component{
  constructor(props){
    super(props);
  }

  componentDidMount(){
    const mapOptions ={
      center: {lat: 37.8014, lng: -122.4016},
      zoom: 13
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
  }

  render(){
    return (
      <div className="map" ref={map => this.mapNode = map} />
    );
  }

}

export default Map;