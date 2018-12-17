import React from "react";
import { Link } from "react-router-dom";

const BusinessIndexItem = props => {
  console.warn(props.business)


  
    return(

      <li className="business-index-item-master">
        <div className="business-index-item-skeleton-master">
          <div className="business-index-item-photo">
            <img src={props.business.photoUrls[0]} />
          </div>
          <div className="business-index-item-info-master">
            <div className="business-index-item-info-top">
              <div className="business-index-item-info-top-left">
                <div className="business-index-item-info-title">
                  <Link to={`/businesses/${props.business.id}`}>
                    {props.business.bizName}
                  </Link>
                </div>
                <div>{props.business.rating}</div>
                <div>{props.business.price}</div>
              </div>
              <div className="business-index-item-info-top-right">
                <div>{props.business.phoneNumber}</div>
                <div>{props.business.address1}</div>
                <div>{props.business.city}</div>
              </div>
            </div>
            <div className="business-index-item-info-bottom">
              "{props.business.businessInfo}"
            </div>
          </div>
        </div>
      </li>
    )

  
  
}

export default BusinessIndexItem;
