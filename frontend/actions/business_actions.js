import * as APIUtil from '../util/business_api_util';

export const RECEIVE_BUSINESSES = 'RECEIVE_BUSINESSES';
export const RECEIVE_BUSINESS = 'RECEIVE_BUSINESS';
export const RECEIVE_BUSINESS_ERRORS = 'RECEIVE_BUSINESS_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveBusinesses = () => ({
  type: RECEIVE_BUSINESSES,
});

export const receiveBusiness = business => ({
  type: RECEIVE_BUSINESS,
  business
});

export const receiveErrors = errors => ({
  type: RECEIVE_BUSINESS_ERRORS,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS,
})

export const fetchBusinesses = () => dispatch => (
  APIUtil.fetchBusinesses().then(businesses => (
    dispatch(receiveBusinesses(businesses))
  ), err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);

export const fetchBusiness = id => dispatch => (
  APIUtil.fetchBusiness(id).then(business => (
    dispatch(receiveBusiness(business))
  ), err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);
