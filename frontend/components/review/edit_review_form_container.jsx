import React from 'react';
import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { fetchReview, updateReview } from '../../actions/review_actions';

const mapStateToProps = (state, ownProps) => {
  const defaultReview = { rating: 5, body: '' };
  const review = state.entities.reviews[ownProps.match.params.reviewId] || defaultReview;
  const formType = 'Update Review';

  return { review, formType };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchReview: id => dispatch(fetchReview(id)),
    action: review => dispatch(updateReview(review)),
  };
};

class EditReviewForm extends React.Component {
  componentDidMount() {
    this.props.fetchReview(this.props.match.params.reviewId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.review.id != this.props.match.params.reviewId) {
      this.props.fetchReview(this.props.match.params.reviewId);
    }
  }

  render() {
    const { action, formType, review } = this.props;
    return (
      <ReviewForm
        action={action}
        formType={formType}
        review={review} />
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(EditReviewForm);
