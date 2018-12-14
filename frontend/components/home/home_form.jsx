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
          <input type="submit" value="Logout" />
        </form>
      )
    } else {
      return (
        <div className="nav-bar-right">
          <Link to='/login'>Demo User</Link>
          <Link to='/login' onClick={this.props.clearErrors}>Log in</Link>
          <Link to='/signup' onClick={this.props.clearErrors}>Sign Up</Link>
        </div>
      )
    }
  }

  render(){
    return (
      <div className="home-page">
        <div className="home-main-section">
          <div className="home-main-nav-bar">
            <div className="home-nav-bar">
              <div className="nav-bar-left">
                Write a Review
              </div>
              <div >
                {this.loggedIn()}
              </div>
            </div>
          </div>
          <div className="home-main-inner">
            <div className="home-logo-banner">
              <div className="home-logo">
              </div>
            </div>
            <div className="home-search-bar-main">
              <div className="home-search-bar">

              </div>
            </div>
          </div>

        </div>
      </div>
    )
  }
}

export default HomeForm;