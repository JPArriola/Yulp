import React from "react";
import { Link } from "react-router-dom";

class BusinessIndexItem extends React.Component{
  render(){
    
    let businessRating = Math.floor(this.props.business.ratingAverage * 2);
    let { photoUrls, id, bizName, price, phoneNumber, address1, city, businessInfo } = this.props.business;
    return(
      <li className="business-index-item-master">
        <div className="business-index-item-skeleton-master">
          <div className="business-index-item-photo">
            <img src={photoUrls[0]} />
          </div>
          <div className="business-index-item-info-master">
            <div className="business-index-item-info-top">
              <div className="business-index-item-info-top-left">
                <div className="business-index-item-info-title">
                  <Link to={`/businesses/${id}`}>
                    {bizName}
                  </Link>
                </div>
                <img className={`star-mid-${businessRating}` + ` star-mid`} src="https://i.imgur.com/UkZkm0D.png"></img>
                <div>{price}</div>
              </div>
              <div className="business-index-item-info-top-right">
                <div>{phoneNumber}</div>
                <div>{address1}</div>
                <div>{city}</div>
              </div>
            </div>
            <div className="business-index-item-info-bottom">
              "{businessInfo}"
            </div>
          </div>
        </div>
      </li>
    )
  }
}

export default BusinessIndexItem;