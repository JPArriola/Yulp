import React from "react";
import { Link } from "react-router-dom";

class BusinessIndexItem extends React.Component{
  render(){
    
    let businessRating = Math.floor(this.props.business.ratingAverage * 2);
    return(
      <li className="business-index-item-master">
        <div className="business-index-item-skeleton-master">
          <div className="business-index-item-photo">
            <img src={this.props.business.photoUrls[0]} />
          </div>
          <div className="business-index-item-info-master">
            <div className="business-index-item-info-top">
              <div className="business-index-item-info-top-left">
                <div className="business-index-item-info-title">
                  <Link to={`/businesses/${this.props.business.id}`}>
                    {this.props.business.bizName}
                  </Link>
                </div>
                <img className={`star-mid-${businessRating}` + ` star-mid`} src="https://i.imgur.com/UkZkm0D.png"></img>
                <div>{this.props.business.price}</div>
              </div>
              <div className="business-index-item-info-top-right">
                <div>{this.props.business.phoneNumber}</div>
                <div>{this.props.business.address1}</div>
                <div>{this.props.business.city}</div>
              </div>
            </div>
            <div className="business-index-item-info-bottom">
              "{this.props.business.businessInfo}"
            </div>
          </div>
        </div>
      </li>
    )
  }
}

export default BusinessIndexItem;