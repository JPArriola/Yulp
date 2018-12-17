import { connect } from "react-redux";
import { fetchBusiness } from "../../actions/business_actions";
import BusinessShow from './business_show';

const mSP = (state, ownProps) => {
  let businessId = ownProps.match.params.id;
  let business = state.entities.businesses[businessId];
  return ({
    business: business,
    businessId
  });
};

const mDP = dispatch => {
  return ({
    fetchBusiness: (id) => dispatch(fetchBusiness(id)),
  });
};

export default connect(mSP, mDP)(BusinessShow);