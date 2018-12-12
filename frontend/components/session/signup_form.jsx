import React from "react";

class SignupForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = { first_name: '', last_name: '', email: '', password: '', zipcode: '' };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.signup(this.state);
  }

  render(){
    console.log(this.props);
    return (
      <div>
        <h2>Sign Up for Yulp</h2>
        <p>Connect with great local businesses</p>
        <p>
          By continuing, you agree to Yulp’s Terms of Service and
          acknowledge Yulp’s Privacy Policy.
        </p>
        <form onSubmit={this.handleSubmit}>
          <label>
            <input type="text" placeholder="First Name" value={this.state.first_name} onChange={this.update("first_name")} />
          </label>
          <label>
            <input type="text" placeholder="Last Name" value={this.state.last_name} onChange={this.update("last_name")} />
          </label>
          <label>
            <input type="text" placeholder="Email" value={this.state.email} onChange={this.update("email")} />
          </label>
          <label>
            <input type="text" placeholder="Password" value={this.state.password} onChange={this.update("password")} />
          </label>
          <label>
            <input type="text" placeholder="ZIP Code" value={this.state.zipcode} onChange={this.update("zipcode")} />
          </label>
          <input type="submit" value="Sign Up" />
        </form>
      </div>
    )
  }
}

export default SignupForm;