import React from "react";

class SignupForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = { first_name: '', last_name: '', email: '', password: '', zipcode: '' };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleClick(e) {
    e.preventDefault()
    this.props.login({ email: 'josh@josh.com', password: 'password' });
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.signup(this.state);
  }

  render(){
    let errors;
    if (this.props.errors.length) {
      errors = this.props.errors;
    }
    return <div>
        <div className="signup-container">
          <h2>Sign Up for Yulp</h2>
          <div className="login-subheading">
            Connect with great local businesses
          </div>
          <div className="legal">
            By continuing, you agree to Yulp’s Terms of Service and
            acknowledge Yulp’s Privacy Policy.
          </div>
          <div className="demo-button" onClick={this.handleClick}>
            Demo User
          </div>
          <div>
            <fieldset className="login-separator hr-line">
              <legend align="center" className="or-separator">
                OR
              </legend>
            </fieldset>
          </div>
          <form onSubmit={this.handleSubmit}>
            <div className="session-names">
              <label>
                <input className="session-first-name" type="text" placeholder="First Name" value={this.state.first_name} onChange={this.update("first_name")} />
              </label>
              &nbsp;
              <label>
                <input className="session-last-name" type="text" placeholder="Last Name" value={this.state.last_name} onChange={this.update("last_name")} />
              </label>
            </div>
            <label>
              <input className="session-input-boxes" type="text" placeholder="Email" value={this.state.email} onChange={this.update("email")} />
            </label>
            <label>
              <input className="session-input-boxes" type="text" placeholder="Password" value={this.state.password} onChange={this.update("password")} />
            </label>
            <label>
              <input className="session-input-boxes" type="text" placeholder="ZIP Code" value={this.state.zipcode} onChange={this.update("zipcode")} />
            </label>
            <div className="legal">
              You also understand that Yulp won't send marketing emails
              about Yulp’s products, services, and local events. You can't
              subscribe at any time.
            </div>
            <input className="login-button" type="submit" value="Sign Up" />
            <div>{errors}</div>
          </form>
        </div>
      </div>;
  }
}

export default SignupForm;