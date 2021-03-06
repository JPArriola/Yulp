import React from "react";
import BusinessIndexItem from './business_index_item';
import Navbar from "../navbar/navbar_container";
import Map from "../map/map";
import Footer from "../footer/footer";

class BusinessIndex extends React.Component{

  componentDidMount(){
    this.props.fetchBusinesses();
  }

  render(){
    if (this.props.businesses.length === 1) return null;
    let { businesses } = this.props;
    let allBusinesses = businesses.map(business => {
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
              <ul>{allBusinesses}</ul>
            </div>
            <div className="business-index-sidebar-parent">
              <div className="business-index-sidebar-stuck">
                <div className="fake-map">
                  <Map businesses={businesses} zoom={true} lat={37.8014} lng={-122.4016} />
                </div>
              </div>
            </div>
          </div>
        </div>
        <Footer />
      </div>;
  }
}

export default BusinessIndex;