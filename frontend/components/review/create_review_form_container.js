import {connect} from 'react-redux';
import ReviewForm from './review_form';
import { createReview } from "../../actions/review_actions";
import { fetchBusiness } from "../../actions/business_actions";

const mapStateToProps = (state, ownProps) => {
  const review = { rating: 5, body: ""};
  const formType= "Post Review";
  let bizId = ownProps.match.params.id;
  let business = state.entities.businesses[bizId];
  return {
    review,
    formType,
    currentUser: state.session.id,
    bizId,
    business,
  };
};

const mapDispatchToProps = dispatch => ({
  action: review => dispatch(createReview(review)),
  fetchBusiness: (id) => dispatch(fetchBusiness(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
