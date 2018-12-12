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
      <div className="login-tiny-text"> New to Yulp? <a onClick={this.handleClick(false)}> SignUp </a></div> :
      <div> Already on Yulp? <a onClick={this.handleClick(true)}> Login </a></div> 
  
    return(
      <div>
        <div>
          <div className='yulp-banner'><div className='yulp-header'></div></div>
            <div className='body-container'>  
              <div className='user-login'>
              { form }
              { text }
              </div>
            </div>
        </div>
      </div>
    )
  }
}

export default SessionForm;