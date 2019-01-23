import React from 'react';

class Map extends React.Component{
  constructor(props){
    super(props);
  }

  render(){
    return (
    <div className="google-map" ref={map => this.mapNode = map}>

    </div>
    );
  }

}

export default Map;