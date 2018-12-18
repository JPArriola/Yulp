import { connect } from "react-redux";
import { fetchReviews } from "../../actions/review_actions";
import ReviewIndex from './review_index';

const mSP = (state, ownProps) => {
  let reviews = Object.values(state.entities.reviews);
  return ({
    reviews: reviews,
  });
};

const mDP = dispatch => {
  return ({
    fetchReviews: () => dispatch(fetchReviews()),
  });
};

export default connect(mSP, mDP)(ReviewIndex);