import React from 'react';
import LoginForm from './login_form';
import SignupForm from './signup_form';

class SessionForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      signup : true,
    };
  }

  handleClick(boolean) {
    return (e) => {
      e.preventDefault();
      this.setState({signup : boolean});
    }
  }

  render(){  
    let {login, signup, errors} = this.props;

    let form = this.state.signup ? 
      <LoginForm login={login} errors={errors}></LoginForm> :
      <SignupForm signup={signup} errors={errors}></SignupForm>
    
    let text = this.state.signup ?
      <p> New to Yulp? <a onClick={this.handleClick(false)}> SignUp </a></p> :
      <p> Already on Yulp? <a onClick={this.handleClick(true)}> Login </a></p> 
  
    return(
      <div>
        <div>
            <h2 className='yulp-banner'>Yulp</h2>
            { form }
            { text }
        </div>
      </div>
    )
  }
}

export default SessionForm;