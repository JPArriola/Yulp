import React from 'react';

class BusinessShowInfo extends React.Component {
  render() {
    let { bikeParking, caters, creditCard, delivery, freeWifi, goodForGroups, goodForKids, outdoorSeating, petsAllowed, takeOut, takesReservations, wheelchairAccessible } = this.props.business;
    return (
      <div className="showpage-business-sidebar-info">
        <div className="sidebar-category-title">
          <h3>More business info</h3>
        </div>
        <div className="sidebar-business-info-container">
          <ul>
            <li>Bike Parking    <span className="sidebar-business-info-item">{bikeParking}</span></li>
            <li>Caters    <span className="sidebar-business-info-item">{caters}</span></li>
            <li>Accepts Credit Cards    <span className="sidebar-business-info-item">{creditCard}</span></li>
            <li>Delivery    <span className="sidebar-business-info-item">{delivery}</span></li>
            <li>Wi-Fi    <span className="sidebar-business-info-item">{freeWifi}</span></li>
            <li>Good For Groups    <span className="sidebar-business-info-item">{goodForGroups}</span></li>
            <li>Good For Kids    <span className="sidebar-business-info-item">{goodForKids}</span></li>
            <li>Outdoor Seating    <span className="sidebar-business-info-item">{outdoorSeating}</span></li>
            <li>Pets Allowed    <span className="sidebar-business-info-item">{petsAllowed}</span></li>
            <li>Take-out    <span className="sidebar-business-info-item">{takeOut}</span></li>
            <li>Takes Reservations    <span className="sidebar-business-info-item">{takesReservations}</span></li>
            <li>Wheelchair Accessible    <span className="sidebar-business-info-item">{wheelchairAccessible}</span></li>
          </ul>
        </div>
      </div>
    );
  }
}

export default BusinessShowInfo;