import React from "react";
import Navbar from "../navbar/navbar_container";
import ReviewIndex from "../review/review_index_container";
import { Link } from "react-router-dom";


class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  reviewButton(){
    if (this.props.hasUserReviewed){
      return <Link to={`/businesses/reviews/${this.props.hasUserReviewed}/edit`}><i className="fas fa-star"> Edit Review</i></Link>;
    } else {
      return <Link to={`/businesses/${this.props.business.id}/review`}><i className="fas fa-star"> Write a Review</i></Link>;
    }
  }


  render(){
    let biz = this.props.business;
    if (!biz) return null;
    let users = this.props.users;
    console.warn(this.props);
            /*iterate through the reviews on the business show page.
    If one of the reviews.author-id matches that of the current 
    user. Show the edit review button w/ link.

    <Link to={`/businesses/${biz.id}/${review.id}/edit`}><i className="fas fa-star"> Edit Review</i></Link>

    Else display Write a Review w/ link.
    */

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
                              {this.reviewButton()}
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
                                <img src={this.props.business.photoUrls[0]} />
                              </div>
                              <div className="showpage-info-middle-photo">
                                <img src={this.props.business.photoUrls[1]} />
                              </div>
                              <div className="showpage-info-side-photo">
                                <img src={this.props.business.photoUrls[2]} />
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