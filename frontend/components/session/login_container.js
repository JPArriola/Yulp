import { connect } from "react-redux";
import { login, signup, clearErrors } from "../../actions/session_actions";
import SessionForm from './session_form';

const mSP = state => {
  return ({
    signupStatus: {signupStatus: false},
    errors: state.errors.session
  });
};

const mDP = dispatch => {
  return ({
    login: (user) => dispatch(login(user)),
    signup: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(clearErrors()),
  });
};

export default connect(mSP, mDP)(SessionForm);