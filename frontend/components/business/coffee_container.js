import { connect } from "react-redux";
import { fetchBusinesses } from "../../actions/business_actions";
import { coffeeBusinesses } from "../../selectors/selectors";
import BusinessIndex from './business_index';

const mSP = (state, ownProps) => {
  return ({
    businesses: coffeeBusinesses(state),
  });
};

const mDP = dispatch => {
  return ({
    fetchBusinesses: () => dispatch(fetchBusinesses()),
  });
};

export default connect(mSP, mDP)(BusinessIndex);