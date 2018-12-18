import { RECEIVE_REVIEW_ERRORS,  CLEAR_ERRORS, RECEIVE_REVIEW, RECEIVE_REVIEWS } from '../actions/review_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEW_ERRORS:
      return action.errors;
    case RECEIVE_REVIEWS:
      return [];
    case RECEIVE_REVIEW:
      return [];
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};
