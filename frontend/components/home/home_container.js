import { connect } from "react-redux";
import { logout, clearErrors } from "../../actions/session_actions";
import HomeForm from './home_form';

const mSP = (state, ownProps) => {
  return ({
    currentUser: state.session.id,
  });
};

const mDP = dispatch => {
  return ({
    logout: () => dispatch(logout()),
    clearErrors: () => dispatch(clearErrors()),
  });
};

export default connect(mSP, mDP)(HomeForm);