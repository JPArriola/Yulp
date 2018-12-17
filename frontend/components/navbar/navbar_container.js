import { connect } from "react-redux";
import { login, logout, clearErrors } from "../../actions/session_actions";
import Navbar from './navbar';

const mSP = state => {
  return ({
    currentUser: state.session.id,
  });
};

const mDP = dispatch => {
  return ({
    login: (user) => dispatch(login(user)),
    logout: () => dispatch(logout()),
    clearErrors: () => dispatch(clearErrors()),
  });
};

export default connect(mSP, mDP)(Navbar);