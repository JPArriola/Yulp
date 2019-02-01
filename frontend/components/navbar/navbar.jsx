import React from 'react';
import { Link, withRouter } from "react-router-dom";

class Navbar extends React.Component {
  constructor(props) {
    super(props);

    this.handleClickLogo = this.handleClickLogo.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClickAllShops = this.handleClickAllShops.bind(this);
  }

  handleClickLogo(e) {
    e.preventDefault();
    this.props.history.push("/");
  }

  handleClickAllShops(e){
    e.preventDefault();
    this.props.history.push("/businesses")
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
              <div className="home-search-find">
                <div className="home-search-find-title">Find</div>
                <input className="business-search-find" type="text" placeholder="coffee, boba, beer" />
              </div>
              <div className="home-search-loc">
                <div className="home-search-loc-input">
                  <div className="home-search-find-near">Near</div>
                  <input className="business-search-near" type="text" placeholder="City" defaultValue="San Francisco" />
                </div>
                <button className="home-search-submit">
                  <i className="fas fa-search" />
                </button>
              </div>
            </div>
            {this.loggedIn()}
          </div>
        </div>
        <div className="business-nav-bar-lower-parent">
          <div className="business-nav-bar-lower">
            <div className="nav-bar-lower-left">
              <div className="nav-bar-lower-left-item" onClick={this.handleClickAllShops}>
                <img src="https://cdn2.iconfinder.com/data/icons/industry-7/32/industry_shop-512.png" className="nav-bar-lower-item-img" />
                All Shops
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </div>
              <Link to="/businesses/boba" className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/863/863412.svg" className="nav-bar-lower-item-img" />
                Boba
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </Link>
              <Link to="/businesses/coffee" className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/633/633652.svg" className="nav-bar-lower-item-img" />
                Coffee
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </Link>
              <Link to="/businesses/beer" className="nav-bar-lower-left-item">
                <img src="https://image.flaticon.com/icons/svg/23/23417.svg" className="nav-bar-lower-item-img" />
                Beer
                <img src="https://static.thenounproject.com/png/1558740-200.png" className="nav-bar-dropdown-arrow" />
              </Link>
            </div>
            <div className="nav-bar-lower-right">
              <div className="nav-bar-lower-right-item no-drop">
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