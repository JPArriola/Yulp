import { connect } from "react-redux";
import { login, signup } from "../../actions/session_actions";
import SessionForm from './session_form';

const mSP = state => {
  return ({
    errors: state.errors.session
  });
};

const mDP = dispatch => {
  return ({
    login: (user) => dispatch(login(user)),
    signup: (user) => dispatch(signup(user))
  });
};

export default connect(mSP, mDP)(SessionForm);