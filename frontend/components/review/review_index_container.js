import { connect } from "react-redux";
import { fetchReviews, deleteReview } from "../../actions/review_actions";
import ReviewIndex from './review_index';

const mSP = (state, ownProps) => {
  let reviews = Object.values(state.entities.reviews);
  return ({
    reviews: reviews,
    currUser: state.session.id,
  });
};

const mDP = dispatch => {
  return ({
    fetchReviews: () => dispatch(fetchReviews()),
    deleteReview: (reviewId) => dispatch(deleteReview(reviewId))
  });
};

export default connect(mSP, mDP)(ReviewIndex);