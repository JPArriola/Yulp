import React from 'react';

class LoginForm extends React.Component{
  render(){
    // console.log(this.props);
    return <div>
        <h2>Log In to Yulp</h2>
        <p>New to Yulp? ***CREATE A LINK TO SIGNUP!!!***</p>
        <p>
          By logging in, you agree to Yulp’s Terms of Service and Privacy
          Policy.
        </p>
        <form>
          <label>
            <input type="text" placeholder="Email" />
          </label>
          <label>
            <input type="text" placeholder="Password" />
          </label>
          <a> Forgot Password? </a>
          <input type="submit" value="Login" />
        </form>
      </div>;
  }
}

export default LoginForm;