import React from 'react';
import Map from "../map/map";

class BusinessShowMap extends React.Component {
  render() {
    return (
      <div className="showpage-map-container">
        <div className="showpage-map" >
          <Map />
        </div>
        <div className="showpage-map-info">
          <div className="showpage-map-address-line1"><i className="fas fa-map-marker-alt"></i> {this.props.business.address1}</div>
          <div className="showpage-map-address-line2">{this.props.business.city}, {this.props.business.state} {this.props.business.zipcode}</div>
          <div className="showpage-map-link-color"><i className="fas fa-directions"></i> Get Directions</div>
          <div><i className="fas fa-phone"></i> {this.props.business.phoneNumber}</div>
          <div className="showpage-map-link-color"><i className="fas fa-share-square"></i> {this.props.business.website}</div>
          <div className="showpage-map-link-color"><i className="fas fa-calendar-day"></i> Make a Reservation</div>
          <div className="showpage-map-link-color"><i className="fas fa-mobile-alt"></i> Send to your Phone</div>
        </div>
      </div>
    );
  }
}

export default BusinessShowMap;