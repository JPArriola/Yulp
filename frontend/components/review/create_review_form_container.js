import {connect} from 'react-redux';
import ReviewForm from './review_form';
import { createReview } from "../../actions/review_actions";

const mapStateToProps = (state, ownProps) => {
  const review = { rating: 5, body: ""};
  const formType= "Post Review";
  return {
    review,
    formType,
    currentUser: state.session.id,
  };
};

const mapDispatchToProps = dispatch => ({
  action: review => dispatch(createReview(review))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
