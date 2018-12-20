import { connect } from "react-redux";
import BusinessShowHours from './business_show_hours';
import { withRouter } from "react-router-dom";

const mSP = (state, ownProps) => {
  console.warn(ownProps);
  let bizId = ownProps.match.params.id;
  let hours = state.entities.businesses[bizId].hours;
  return ({
    hours,
  });
};


export default withRouter(connect(mSP, null)(BusinessShowHours));
