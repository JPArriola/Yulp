import React from "react";
import { Link } from "react-router-dom";
import { sampleSize } from 'lodash';
import Footer from "../footer/footer";

const DEMO_USERS = [
  { email: "demo@guest.com", password: "password" },
  { email: "demo1@guest.com", password: "password" },
  { email: "demo2@guest.com", password: "password" },
  { email: "demo3@guest.com", password: "password" },
  { email: "demo4@guest.com", password: "password" }
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
    return <div>
        <div className="home-page">
          <div className="home-main-section">
            <div className="home-main-nav-bar">
              <div className="home-nav-bar">
                <div className="nav-bar-left">
                  <div className="home-underline no-drop">Write a Review</div>
                  <a href="https://github.com/JPArriola" target="_blank" className="home-underline" >GitHub</a>
                  <a href="https://www.linkedin.com/in/joshuaarriola/" target="_blank" className="home-underline" >LinkedIn</a>
                </div>
                <div className="nav-right-parent">{this.loggedIn()}</div>
              </div>
            </div>
            <div className="home-main-inner">
              <div className="home-logo" />
              <div className="home-search-bar">
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
              <div className="home-category-navigation-bar">
                <Link to="/businesses" className="home-underline">
                  All Yulp Businesses
                </Link>
                <div className="home-category-navigation-business-boba" />
                <div className="home-category-navigation-business-coffee" />
                <div className="home-category-navigation-business-bars" />
              </div>
            </div>
          </div>
        </div>
        <div className="home-page-lower-1">
          <div className="home-lower-title">
            Your Next Gulp With Yulp Awaits
          </div>
          <div className="home-lower-categories-container">
            <Link to="/businesses" className="home-drink-category">
              <div className="home-all-picture" />
              <div className="home-category-text">All Businesses</div>
            </Link>
            <Link to="/businesses/boba" className="home-drink-category">
              <div className="home-boba-picture" />
              <div className="home-category-text">Boba</div>
            </Link>
            <Link to="/businesses/coffee" className="home-drink-category">
              <div className="home-coffee-picture" />
              <div className="home-category-text">Coffee</div>
            </Link>
            <Link to="/businesses/beer" className="home-drink-category">
              <div className="home-beer-picture" />
              <div className="home-category-text">Beer</div>
            </Link>
          </div>
        </div>
        <div className="home-page-lower-2">
          <div className="home-lower-title">
            Browse Yulp by Category
          </div>
          <div className="home-lower-categories-container">
            <div className="home-page-categories-box">
            <div className="category-background restaurants"></div>
            Restaurants
            </div>
            <div className="home-page-categories-box">
            <div className="category-background shopping"></div>
            Shopping
            </div>
            <div className="home-page-categories-box">
            <div className="category-background nightlife"></div>
            Nightlife
            </div>
            <div className="home-page-categories-box">
            <div className="category-background active"></div>
            Active Life
            </div>
          </div>
          <div className="home-lower-categories-container">  
          <div className="home-page-categories-box">
            <div className="category-background beauty"></div>
            Beauty & Spas
            </div>
          <div className="home-page-categories-box">
            <div className="category-background automotive"></div>
            Automotive
            </div>
          <div className="home-page-categories-box">
            <div className="category-background home"></div>
            Home Services
            </div>
          <div className="home-page-categories-box">
            <div className="category-background more-categories"></div>
            More Categories
            </div>
          </div>
        </div>
        <Footer/>
      </div>;
  }
}

export default HomeForm;