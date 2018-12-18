import React from 'react';
import { Link, withRouter } from "react-router-dom";

class Navbar extends React.Component {
  constructor(props) {
    super(props);

    this.handleClickLogo = this.handleClickLogo.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleClickLogo(e) {
    e.preventDefault();
    this.props.history.push("/");
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.logout();
  }

  loggedIn() {
    if (this.props.currentUser) {
      return (
        <form
          onSubmit={this.handleSubmit}
          id="logout"
          className="business-nav-session"
        >
          <input type="submit" value="Logout" className="business-nav-signup" />
        </form>
      );
    } else {
      return (
        <div className="business-nav-session">
          <Link
            to="/login"
            onClick={this.props.clearErrors}
            className="business-nav-login"
          >
            Log in
          </Link>
          <Link
            to="/signup"
            onClick={this.props.clearErrors}
            className="business-nav-signup"
          >
            Sign Up
          </Link>
        </div>
      );
    }
  }

  render() {
    return <div className="business-nav-bar-parent">
        <div className="business-nav-bar-upper-parent">
          <div className="business-nav-bar-upper">
            <div className="business-logo" onClick={this.handleClickLogo} />
            <div className="business-nav-search">
              <input className="business-search-find" type="text" placeholder="coffee, boba, beer" />
              <input className="business-search-near" type="text" placeholder="City" />
            </div>
            {this.loggedIn()}
          </div>
        </div>
        <div className="business-nav-bar-lower-parent">
          <div className="business-nav-bar-lower">
            <div className="nav-bar-lower-left">
              <div className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/633/633652.svg" className="nav-bar-lower-item-img" />
                Coffee
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </div>
              <div className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/863/863412.svg" className="nav-bar-lower-item-img" />
                Boba
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </div>
              <div className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/23/23417.svg" className="nav-bar-lower-item-img" />
                Beer
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </div>
            </div>
            <div className="nav-bar-lower-right">
              <div className="nav-bar-lower-right-item">
                <img src="https://image.flaticon.com/icons/svg/61/61456.svg" className="nav-bar-lower-item-img" />
                Write a Review
              </div>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default withRouter(Navbar);