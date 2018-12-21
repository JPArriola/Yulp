import { connect } from "react-redux";
import BusinessShowMap from './business_show_map';
import { withRouter } from "react-router-dom";

const mSP = (state, ownProps) => {
  let bizId = ownProps.match.params.id;
  let business = state.entities.businesses[bizId];
  return ({
    business,
  });
};

export default withRouter(connect(mSP, null)(BusinessShowMap));
