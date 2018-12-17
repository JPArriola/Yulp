import React from "react";
import { Link } from "react-router-dom";
import { sampleSize } from 'lodash';

const DEMO_USERS = [
  { email: "demo@guest.com", password: "password" },
  { email: "demo1@guest.com", password: "password" },
  { email: "demo2@guest.com", password: "password" },
  { email: "demo3@guest.com", password: "password" },
  { email: "demo4@guest.com", password: "password" },
  { email: "demo5@guest.com", password: "password" },
  { email: "demo6@guest.com", password: "password" },
  { email: 'demo7@guest.com', password: 'password' },
  { email: "demo8@guest.com", password: "password" },
  { email: "demo9@guest.com", password: "password" }
];

class HomeForm extends React.Component{
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoClick = this.handleDemoClick.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.logout();
  }

  handleDemoClick(e) {
    e.preventDefault();
    let sample = _.sampleSize(DEMO_USERS, 1)[0];
    this.props.login(sample);
  }

  loggedIn(){
    if(this.props.currentUser){
      return (
        <form onSubmit={this.handleSubmit} id="logout" className="nav-bar-right">
          <input type="submit" value="Logout" className="home-underline"/>
        </form>
      )
    } else {
      return (
        <div className="nav-bar-right">
          <div className="home-underline" onClick={this.handleDemoClick}>Demo User</div>
          <Link to='/login' onClick={this.props.clearErrors} className="home-underline">Log in</Link>
          <Link to='/signup' onClick={this.props.clearErrors} className="home-signup">Sign Up</Link>
        </div>
      )
    }
  }

  render(){
    return <div className="home-page">
        <div className="home-main-section">
          <div className="home-main-nav-bar">
            <div className="home-nav-bar">
              <div className="nav-bar-left">
                <div className="home-underline">Write a Review</div>
                <a href="https://github.com/JPArriola" className="github"></a>
                <a href="https://www.linkedin.com/in/joshuaarriola/" className="linkedin"></a>
              </div>
              <div className="nav-right-parent" >
                {this.loggedIn()}
              </div>
            </div>
          </div>
          <div className="home-main-inner">
            <div className="home-logo-banner">
              <div className="home-logo" />
            </div>
            <div className="business-nav-search">
              <input className="business-search-find" type="text" placeholder="coffee, boba, beer" />
              <input className="business-search-near" type="text" placeholder="City" />
            </div>
            <div className="home-category-navigation-bar">
              <div className="home-category-navigation-business-index">
              </div>
              <div className="home-category-navigation-business-boba">
              </div>
              <div className="home-category-navigation-business-coffee">
              </div>
              <div className="home-category-navigation-business-bars">
              </div>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default HomeForm;