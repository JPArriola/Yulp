import React from 'react';

class BusinessShowHours extends React.Component{

  render(){
    let hours = this.props.hours.map((day, index) => {
      let start = day[0];
      let end = day[1];
      return( 
        <li key={index}>{start} - {end}</li>
      )
    });

    return(
    <div className="showpage-business-sidebar-hours">
      <div className="sidebar-category-title">
        <h3>Hours</h3>
      </div>
      <div className="hours-info">
        <div className="hours-day">
          <ul>
            <li>Mon</li>
            <li>Tue</li>
            <li>Wed</li>
            <li>Thu</li>
            <li>Fri</li>
            <li>Sat</li>
            <li>Sun</li>
          </ul>
        </div>
        <div className="hours-time">
          <ul>
            {hours}
          </ul>
        </div>
      </div>
    </div>
    )
  }
}

export default BusinessShowHours;