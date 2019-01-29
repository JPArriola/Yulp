import React from 'react';
import Map from "../map/map";

class BusinessShowMap extends React.Component {
  render() {
    let { lat, lng, address1, city, state, zipcode, phoneNumber, website } = this.props.business;
    return (
      <div className="showpage-map-container">
        <div className="showpage-map" >
          <Map businesses={[this.props.business]} lat={lat} lng={lng} />
        </div>
        <div className="showpage-map-info">
          <div className="showpage-map-address-line1"><i className="fas fa-map-marker-alt"></i> {address1}</div>
          <div className="showpage-map-address-line2">{city}, {state} {zipcode}</div>
          <div className="showpage-map-link-color"><i className="fas fa-directions"></i> Get Directions</div>
          <div><i className="fas fa-phone"></i> {phoneNumber}</div>
          <div className="showpage-map-link-color"><i className="fas fa-share-square"></i> {website}</div>
          <div className="showpage-map-link-color"><i className="fas fa-calendar-day"></i> Make a Reservation</div>
          <div className="showpage-map-link-color"><i className="fas fa-mobile-alt"></i> Send to your Phone</div>
        </div>
      </div>
    );
  }
}

export default BusinessShowMap;