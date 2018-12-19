import React from "react";

const ReviewIndexItem = props => {
  return <div className="review-master">
      <div className="review-master-child">
        <div className="review-author-container">
          <div className="review-author-picture" >
            <img src={props.author.photoUrls[0]} />
          </div>
          <div className="review-author-info">
            {props.author.firstName}
            {props.author.lastName}
          </div>
        </div>
        <div className="review-content-container">
          <div className="review-content-rating">{props.review.rating}</div>
          <div className="review-content-body">{props.review.body}</div>
        </div>
      </div>
    </div>;
}

export default ReviewIndexItem;