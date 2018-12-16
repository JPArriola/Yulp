import { RECEIVE_BUSINESS_ERRORS,  CLEAR_ERRORS, RECEIVE_BUSINESS, RECEIVE_BUSINESSES } from '../actions/business_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BUSINESS_ERRORS:
      return action.errors;
    case RECEIVE_BUSINESSES:
      return [];
    case RECEIVE_BUSINESS:
      return [];
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};
