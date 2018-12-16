import React from "react";
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component{

  componentDidMount(){
    this.props.fetchBusinesses();
  }

  render(){
    let businesses = this.props.businesses.map(business => {
      return(
        <BusinessIndexItem key={business.id} business={business}/>
      );
    });
    return (
      <div className="business-nav-bar-parent">
        <div className="business-nav-bar-upper">
          <div className="business-logo" />
          <div className="business-nav-search" />
          <div className="business-nav-session">
            <div className="business-nav-login">Log In</div>
            <div className="business-nav-signup">Sign Up</div>
          </div>
        </div>
        <ul>{businesses}</ul>
      </div>
    );
  }
}

export default BusinessIndex;