import { RECEIVE_REVIEWS, RECEIVE_REVIEW } from '../actions/review_actions';
import { RECEIVE_BUSINESS } from '../actions/business_actions';
import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEWS:
      return action.reviews;
    case RECEIVE_REVIEW:
      return merge({}, state, {
        [action.review.id]: action.review
      });
    case RECEIVE_BUSINESS:
      return action.business.reviews;
    default:
      return state;
  }
};

export default reviewsReducer;