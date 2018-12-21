import React from 'react';
import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { fetchReview, updateReview } from '../../actions/review_actions';
import { fetchBusiness } from "../../actions/business_actions";

const mapStateToProps = (state, ownProps) => {
  const defaultReview = { rating: 5, body: '' };
  const review = state.entities.reviews[ownProps.match.params.id] || defaultReview;
  const formType = 'Update Review';
  let bizId = ownProps.match.params.bizId;
  let business = state.entities.businesses[bizId];

  return { review, formType, bizId, business };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchReview: id => dispatch(fetchReview(id)),
    action: review => dispatch(updateReview(review)),
    fetchBusiness: (id) => dispatch(fetchBusiness(id)),
  };
};

class EditReviewForm extends React.Component {
  componentDidMount() {
    this.props.fetchReview(this.props.match.params.id);
    this.props.fetchBusiness(this.props.bizId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.review.id != this.props.match.params.id) {
      this.props.fetchReview(this.props.match.params.id);
    }
  }

  render() {
    const { action, formType, review, fetchBusiness, bizId, business } = this.props;
    let biz = this.props.business;
    if (!biz) return null;
    return (
      <ReviewForm
        action={action}
        fetchBusiness={fetchBusiness}
        bizId={bizId}
        formType={formType}
        business={business}
        review={review} />
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(EditReviewForm);
