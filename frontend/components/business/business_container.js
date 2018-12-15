import { connect } from "react-redux";
import { fetchBusinesses } from "../../actions/business_actions";
import BusinessIndex from './business_index';

const mSP = (state, ownProps) => {
  let businesses = Object.values(state.entities.businesses);
  return ({
    businesses: businesses,
  });
};

const mDP = dispatch => {
  return ({
    fetchBusinesses: () => dispatch(fetchBusinesses()),
  });
};

export default connect(mSP, mDP)(BusinessIndex);