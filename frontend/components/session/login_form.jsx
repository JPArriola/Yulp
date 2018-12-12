import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";

class LoginForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {email: '', password: ''};
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClick = this.handleClick.bind(this);
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

  handleClick(e){
    e.preventDefault()
    this.props.login({email: 'josh@josh.com', password: 'password'});
  }

  render(){
    console.log(this.props);
    let errors;
    if (this.props.errors.length) {
      errors = this.props.errors;
    }
    return (
      <div>
        <h2>Log In to Yulp</h2>
        <p>New to Yulp? <Link to="/signup">Sign Up</Link></p>
        <p>
          By logging in, you agree to Yulp’s Terms of Service and Privacy
          Policy.
        </p>
        <div onClick={this.handleClick}>Demo User</div>
        <form onSubmit={this.handleSubmit}>
          <label>
            <input type="text" placeholder="Email" value={this.state.email} onChange={this.update('email')} />
          </label>
          <label>
            <input type="text" placeholder="Password" value={this.state.password} onChange={this.update('password')}/>
          </label>
          <a> Forgot Password? </a>
          <input type="submit" value="Login" />
          {errors}
        </form>
      </div>
    )
  }
}

export default LoginForm;

