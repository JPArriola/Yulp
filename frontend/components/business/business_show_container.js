import { connect } from "react-redux";
import { fetchBusiness } from "../../actions/business_actions";
import { createReview } from "../../actions/review_actions";
import BusinessShow from './business_show';
import {hasUserReviewed} from "../../reducers/selectors";

const mSP = (state, ownProps) => {
  let businessId = ownProps.match.params.id;
  let business = state.entities.businesses[businessId];
  let users = state.entities.users;
  return ({
    business,
    businessId,
    users,
    hasUserReviewed: hasUserReviewed(state, businessId),
  });
};

const mDP = dispatch => {
  return ({
    fetchBusiness: (id) => dispatch(fetchBusiness(id)),
    createReview: (review) => dispatch(createReview(review)),
  });
};

export default connect(mSP, mDP)(BusinessShow);