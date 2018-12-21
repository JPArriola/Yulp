import { connect } from "react-redux";
import BusinessShowHours from './business_show_hours';
import { withRouter } from "react-router-dom";

const mSP = (state, ownProps) => {
  let bizId = ownProps.match.params.id;
  let hours = state.entities.businesses[bizId].hours;
  console.warn(state.entities.businesses[bizId]);
  return ({
    hours,
  });
};

export default withRouter(connect(mSP, null)(BusinessShowHours));
