import React from "react";
import Navbar from "../navbar/navbar_container";

class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  render(){
    let biz = this.props.business;
    if (!biz) return null;
    

    return <div>
        <Navbar />
        <div className="showpage-master-size">
          <div className="showpage-working-master-size">
            <div className="showpage-working-size">
              <div className="showpage-business-info-master">
                <div className="showpage-business-info-top-master">
                  <div className="showpage-business-info-top-left">
                    <div className="showpage-business-name">
                      {biz.bizName}
                    </div>
                    <div className="showpage-business-rating">
                      {biz.rating}
                    </div>
                    <div className="showpage-business-price">
                      {biz.price}
                    </div>
                  </div>
                  <div className="showpage-business-info-top-right">
                    <div className="showpage-review-button-container">
                      <i className="fas fa-star"> Write a Review</i>
                    </div>
                  </div>
                </div>
                <div className="showpage-business-info-lower-master">
                  <div className="showpage-business-info-lower-parent">
                    <div className="showpage-map-container">
                      <div className="showpage-map" />
                    </div>
                    <div className="showpage-info-photos">
                      <div className="showpage-info-side-photo">
                        side photo
                      </div>
                      <div className="showpage-info-middle-photo">
                        middle photo
                      </div>
                      <div className="showpage-info-side-photo">
                        side photo
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
            <div className="showpage-working-size">
              <div className="showpage-business-content-master">
                <div className="showpage-business-content-parent" >
                  reviews
                </div>
                <div className="showpage-business-sidebar-parent" >
                  <div className="showpage-business-sidebar-top-info">
                    hours / price
                  </div>
                  <div className="showpage-business-sidebar-hours">
                    hours
                  </div>
                  <div className="showpage-business-sidebar-info">
                    business info
                  </div>
                </div>
              </div>
            </div>

        </div>
      </div>;
  }
}

export default BusinessShow;