import React from "react";
import BusinessIndexItem from './business_index_item';
import Navbar from "../navbar/navbar_container";
import Map from "../map/map";

class BusinessIndex extends React.Component{

  componentDidMount(){
    console.log("before fetch", this.props);
    this.props.fetchBusinesses();
    console.log("after fetch", this.props);
  }

  render(){
    console.log("render", this.props);
    if (this.props.businesses.length === 1) return null;
    let businesses = this.props.businesses.map(business => {
      return(
        <BusinessIndexItem key={business.id} business={business}/>
      );
    });

    return <div>
        <Navbar />
        <div className="business-index-spacer" />
        <div className="business-index-master">
          <div className="business-index-section-entire-master">
            <div className="business-index-section-parent">
              <ul>{businesses}</ul>
            </div>
            <div className="business-index-sidebar-parent">
              <div className="business-index-sidebar-stuck">
                <div className="fake-map">
                  <Map businesses={this.props.businesses} zoom={true} lat={37.8014} lng={-122.4016} />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default BusinessIndex;