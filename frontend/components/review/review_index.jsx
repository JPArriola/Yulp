import React from "react";
import ReviewIndexItem from "./review_index_item";
import { withRouter } from "react-router-dom";

class ReviewIndex extends React.Component {

  render() {
    if (this.props.reviews.length === 0) return null;
    console.warn(this.props);
    let reviews = this.props.reviews.map(review => {
      let author = this.props.users[review.authorId]
      return <ReviewIndexItem key={review.id} review={review} author={author} deleteReview={this.props.deleteReview} currUser={this.props.currUser}/>;
    });

    return (
      <div className="review-index-master">
        {reviews}
      </div>
    );
  }
}

export default ReviewIndex;
