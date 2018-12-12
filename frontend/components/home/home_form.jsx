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

  render(){
    console.log(this.props)
    return (
      <div>
        <h2>YULP HOME PAGE!!!</h2>
        <form onSubmit={this.handleSubmit}>
          <input type="submit" value="Logout" />
        </form>
        <Link to='/login'>Log in</Link>
        <Link to='/signup'>Sign Up</Link>
        <Link to='/login'>Demo User</Link>
      </div>
    )
  }
}

export default HomeForm;