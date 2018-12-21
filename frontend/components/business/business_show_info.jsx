import React from 'react';

class BusinessShowInfo extends React.Component {
  render() {
    return (
      <div className="showpage-business-sidebar-info">
        <div className="sidebar-category-title">
          <h3>More business info</h3>
        </div>
        <div className="sidebar-business-info-container">
          <ul>
            <li>Bike Parking    <span className="sidebar-business-info-item">{this.props.business.bikeParking}</span></li>
            <li>Caters    <span className="sidebar-business-info-item">{this.props.business.caters}</span></li>
            <li>Accepts Credit Cards    <span className="sidebar-business-info-item">{this.props.business.creditCard}</span></li>
            <li>Delivery    <span className="sidebar-business-info-item">{this.props.business.delivery}</span></li>
            <li>Wi-Fi    <span className="sidebar-business-info-item">{this.props.business.freeWifi}</span></li>
            <li>Good For Groups    <span className="sidebar-business-info-item">{this.props.business.goodForGroups}</span></li>
            <li>Good For Kids    <span className="sidebar-business-info-item">{this.props.business.goodForKids}</span></li>
            <li>Outdoor Seating    <span className="sidebar-business-info-item">{this.props.business.outdoorSeating}</span></li>
            <li>Pets Allowed    <span className="sidebar-business-info-item">{this.props.business.petsAllowed}</span></li>
            <li>Take-out    <span className="sidebar-business-info-item">{this.props.business.takeOut}</span></li>
            <li>Takes Reservations    <span className="sidebar-business-info-item">{this.props.business.takesReservations}</span></li>
            <li>Wheelchair Accessible    <span className="sidebar-business-info-item">{this.props.business.wheelchairAccessible}</span></li>
          </ul>
        </div>
      </div>
    );
  }
}

export default BusinessShowInfo;