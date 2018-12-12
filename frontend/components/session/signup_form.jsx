import React from "react";

class SignupForm extends React.Component {
  render(){
    // console.log(this.props);
    return <div>
        <h2>Sign Up for Yulp</h2>
        <p>Connect with great local businesses</p>
        <p>
          By continuing, you agree to Yulp’s Terms of Service and
          acknowledge Yulp’s Privacy Policy.
        </p>
        <form>
          <label>
            <input type="text" placeholder="First Name" />
          </label>
          <label>
            <input type="text" placeholder="Last Name" />
          </label>
          <label>
            <input type="text" placeholder="Email" />
          </label>
          <label>
            <input type="text" placeholder="Password" />
          </label>
          <label>
            <input type="text" placeholder="ZIP Code" />
          </label>
          <input type="submit" value="Sign Up" />
          {/* <input type="reset" value="reset fields" /> */}
        </form>
      </div>;
  }
}

export default SignupForm;