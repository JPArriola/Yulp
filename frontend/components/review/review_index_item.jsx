import React from "react";

const ReviewIndexItem = props => {
  return(
    <div className="review-master">
      <div className="review-master-child">
        <div className="review-author-container">
          <div className="review-author-picture">
          </div>
          <div className="review-author-info"> 
          </div>
        </div>
        <div className="review-content-container">
          <div className="review-content-rating">
          </div>
          <div className="review-content-body">
            {props.review.body}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ReviewIndexItem;