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
        <div>
          <Link to='/login'>Log in</Link>
          <Link to='/signup'>Sign Up</Link>
          <Link to='/login'>Demo User</Link>
        </div>
      )
    }
  }

  render(){
    return (
      <div>
        <h2>YULP HOME PAGE!!!</h2>
        {this.loggedIn()}
      </div>
    )
  }
}

export default HomeForm;