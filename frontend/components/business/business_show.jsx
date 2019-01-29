import React from "react";
import Navbar from "../navbar/navbar_container";
import BusinessShowHours from "../business/business_show_hours_container";
import BusinessShowInfo from "../business/business_show_info_container";
import BusinessShowMap from "../business/business_show_map_container";
import ReviewIndex from "../review/review_index_container";
import { Link } from "react-router-dom";


class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  reviewButton(){
    let {hasUserReviewed, businessId, business } = this.props;
    if (hasUserReviewed){
      return <Link to={`/businesses/${businessId}/reviews/${hasUserReviewed}/edit`}><i className="fas fa-star"><span className="review-button-format"> Edit Review</span></i></Link>;
    } else {
      return <Link to={`/businesses/${business.id}/review`}><i className="fas fa-star"><span className="review-button-format"> Write a Review</span></i></Link>;
    }
  }


  render(){
    if (!this.props.business) return null;
    let { users } = this.props;
    let {bizName, price, photoUrls, ratingAverage} = this.props.business;
    let businessRating = Math.floor(ratingAverage * 2);
    return <div>
        <Navbar />
        <div className="showpage-master-size">
          <div className="showpage-working-master-size">
            <div className="showpage-working-size">
              <div className="showpage-business-info-master">
                <div className="showpage-business-info-top-master">
                  <div className="showpage-business-info-top-left">
                    <div className="showpage-business-name">
                      {bizName}
                    </div>
                    <img className={`star-lrg-${businessRating}` + ` star-lrg`} src="https://i.imgur.com/UkZkm0D.png"></img>
                    <div className="showpage-business-price">
                      {price}
                    </div>
                  </div>
                  <div className="showpage-business-info-top-right">
                    <div className="showpage-review-button-container">
                      {this.reviewButton()}
                    </div>
                  </div>
                </div>
                <div className="showpage-business-info-lower-master">
                  <div className="showpage-business-info-lower-parent">
                    <BusinessShowMap />
                    <div className="showpage-info-photos">
                      <div className="showpage-info-side-photo">
                        <img src={photoUrls[0]} />
                      </div>
                      <div className="showpage-info-middle-photo">
                        <img src={photoUrls[1]} />
                      </div>
                      <div className="showpage-info-side-photo">
                        <img src={photoUrls[2]} />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="showpage-working-size">
            <div className="showpage-business-content-master">
              <div className="showpage-business-content-parent">
                <ReviewIndex users={users} />
              </div>
              <div className="showpage-business-sidebar-parent">
                <BusinessShowHours />
                <BusinessShowInfo />
              </div>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default BusinessShow;