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
      <div>
        <div className="business-nav-bar-parent">
          <div className="business-nav-bar-upper-parent">
            <div className="business-nav-bar-upper">
              <div className="business-logo" />
              <div className="business-nav-search" >
                <input className="business-search-find" type="text" placeholder="coffee, boba, beer"/>
                <input className="business-search-near" type="text" placeholder="City"/>
              </div>
              <div className="business-nav-session">
                <div className="business-nav-login">Log In</div>
                <div className="business-nav-signup">Sign Up</div>
              </div>
            </div>
          </div>
          <div className="business-nav-bar-lower-parent">
            <div className="business-nav-bar-lower">
              <div className="nav-bar-lower-left">
                Coffee, Boba, Beer
              </div>
              <div className="nav-bar-lower-right">
                Write a Review
              </div>
            </div>
          </div>
        </div>
        <div className="business-index-spacer"/>
        <div>
          <ul>
            {businesses}
          </ul>
        </div>
      </div>
    );
  }
}

export default BusinessIndex;