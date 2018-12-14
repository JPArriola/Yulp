import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import {sampleSize} from 'lodash';

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

class LoginForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {email: '', password: ''};
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoClick = this.handleDemoClick.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  update(field){
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.login(this.state);
  }

  handleClick(){
    this.props.clearErrors();
  }

  handleDemoClick(e){
    e.preventDefault();
    let sample = _.sampleSize(DEMO_USERS, 1)[0];
    this.props.login(sample);
  }

  render(){
    let errors;
    if (this.props.errors.length) {
      errors = this.props.errors.map(error => (
        <li>{error}</li>
      ));
    }

    return <div>
        <div className="login-container">
          <h2>Log In to Yulp</h2>
          <div className="login-subheading">
            New to Yulp? <Link className="signup-link" to="/signup" onClick={this.handleClick}>
              Sign up
            </Link>
          </div>
          <div className="legal">
            By logging in, you agree to Yulp’s Terms of Service and Privacy
            Policy.
          </div>
          <div className="demo-button" onClick={this.handleDemoClick}>
            Demo User
          </div>
          <div>
            <fieldset className="login-separator hr-line">
              <legend align="center" className="or-separator" >OR</legend>
            </fieldset>
          </div>
          <form onSubmit={this.handleSubmit}>
            <label>
              <input className="session-input-boxes" type="email" placeholder="Email" value={this.state.email} onChange={this.update("email")} />
            </label>
            <label>
              <input className="session-input-boxes" type="password" placeholder="Password" value={this.state.password} onChange={this.update("password")} />
            </label>
            <div className="forgot-link-div">
              <Link className="forgot-link" to="/">
                Forgot Password?
              </Link>
            </div>
            <input className="login-button" type="submit" value="Log In" />
            <div className="session-errors-parent">
              <div className="session-errors">{errors}</div>
            </div>
          </form>
        </div>
      </div>;
  }
}

export default LoginForm;

