import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";

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
    e.preventDefault()
    this.props.login({ email: "demo@guest.com", password: "password" });
  }

  render(){
    let errors;
    if (this.props.errors.length) {
      errors = this.props.errors;
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
              <input className="session-input-boxes" type="text" placeholder="Email" value={this.state.email} onChange={this.update("email")} />
            </label>
            <label>
              <input className="session-input-boxes" type="text" placeholder="Password" value={this.state.password} onChange={this.update("password")} />
            </label>
            <div className="forgot-link-div">
              <Link className="forgot-link" to="/">
                Forgot Password?
              </Link>
            </div>
            <input className="login-button" type="submit" value="Log In" />
            <div>{errors}</div>
          </form>
        </div>
      </div>;
  }
}

export default LoginForm;

