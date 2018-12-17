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
    return <div>
        <div className="business-nav-bar-parent">
          <div className="business-nav-bar-upper-parent">
            <div className="business-nav-bar-upper">
              <div className="business-logo" />
              <div className="business-nav-search">
                <input className="business-search-find" type="text" placeholder="coffee, boba, beer" />
                <input className="business-search-near" type="text" placeholder="City" />
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
                <div className="nav-bar-lower-left-item">
                  <img src="https://image.flaticon.com/icons/svg/633/633652.svg" className="nav-bar-lower-item-img" />
                  Coffee
                  <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
                </div>
                <div className="nav-bar-lower-left-item">
                  <img src="https://image.flaticon.com/icons/svg/863/863412.svg" className="nav-bar-lower-item-img" />
                  Boba
                  <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
                </div>
                <div className="nav-bar-lower-left-item">
                  <img src="https://image.flaticon.com/icons/svg/23/23417.svg" className="nav-bar-lower-item-img" />
                  Beer
                  <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
                </div>
              </div>
              <div className="nav-bar-lower-right">
                <div className="nav-bar-lower-right-item">
                  <img src="https://image.flaticon.com/icons/svg/61/61456.svg" className="nav-bar-lower-item-img" />
                  Write a Review
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="business-index-spacer" />
        <div className="business-index-master">
          <div className="business-index-section-entire-master">
            <div className="business-index-section-parent">
              <ul>{businesses}</ul>
            </div>
            <div className="business-index-sidebar-parent">
              <div className="business-index-sidebar-stuck">
                <div className="fake-map">Map to be added. Stay tuned!</div>
              </div>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default BusinessIndex;