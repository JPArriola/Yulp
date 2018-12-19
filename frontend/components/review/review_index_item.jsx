import React from "react";

const ReviewIndexItem = props => {
  return(
    <div className="review-master">
      {props.review.body}
    </div>
  )
}

export default ReviewIndexItem;