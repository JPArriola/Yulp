import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";

class LoginForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {email: '', password: ''};
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field){
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit(e){
    e.preventDefault()
    this.props.login(this.state);
  }

  render(){
    console.log(this.props);
    return <div>
        <h2>Log In to Yulp</h2>
        <p>New to Yulp? *** LINK FOR SIGNUP? ***</p>
        <p>
          By logging in, you agree to Yulp’s Terms of Service and Privacy
          Policy.
        </p>
        <form onSubmit={this.handleSubmit}>
          <label>
            <input type="text" placeholder="Email" value={this.state.email} onChange={this.update('email')} />
          </label>
          <label>
            <input type="text" placeholder="Password" value={this.state.password} onChange={this.update('password')}/>
          </label>
          <a> Forgot Password? </a>
          <input type="submit" value="Login" />
        </form>
      </div>;
  }
}

export default LoginForm;


{/* <Link to="/signup">Sign Up</Link>; */}