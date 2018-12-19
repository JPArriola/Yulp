import React from "react";
import ReviewIndexItem from "./review_index_item";
import { withRouter } from "react-router-dom";

class ReviewIndex extends React.Component {

  render() {
    if (this.props.reviews.length === 0) return null;
    let reviews = this.props.reviews.map(review => {
      // author = this.props.users[review.author_id]
      return <ReviewIndexItem key={review.id} review={review} />;
    });

    return (
      <div className="review-index-master">
       {reviews}
      </div>
    );
  }
}

export default withRouter(ReviewIndex);
