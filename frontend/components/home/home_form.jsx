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
        <form onSubmit={this.handleSubmit}>
          <input type="submit" value="Logout" />
        </form>
      )
    } else {
      return (
        <div class="nav-bar-right">
          <Link to='/login'>Demo User</Link>
          <Link to='/login'>Log in</Link>
          <Link to='/signup'>Sign Up</Link>
        </div>
      )
    }
  }

  render(){
    return (
      <div class="home-page">
        <div class="home-main-section">
          <div class="home-main-nav-bar">
            <div class="home-nav-bar">
              <div class="nav-bar-left">
                Write a Review!
              </div>
              <div >
                {this.loggedIn()}
              </div>
            </div>
          </div>
          <div>
            Logooooo
          </div>

        </div>
      </div>
    )
  }
}

export default HomeForm;