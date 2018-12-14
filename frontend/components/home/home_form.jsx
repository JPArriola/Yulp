import React from "react";
import { Link } from "react-router-dom";

class HomeForm extends React.Component{
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.logout();
  }

  loggedIn(){
    if(this.props.currentUser){
      return (
        <form onSubmit={this.handleSubmit} className="nav-bar-right">
          <input type="submit" value="Logout" className="home-underline"/>
        </form>
      )
    } else {
      return (
        <div className="nav-bar-right">
          <Link to='/login' className="home-underline">Demo User</Link>
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
              <div>{this.loggedIn()}</div>
            </div>
          </div>
          <div className="home-main-inner">
            <div className="home-logo-banner">
              <div className="home-logo" />
            </div>
            <div className="home-search-bar-main">
              <div className="home-search-bar" />
            </div>
          </div>
        </div>
      </div>;
  }
}

export default HomeForm;