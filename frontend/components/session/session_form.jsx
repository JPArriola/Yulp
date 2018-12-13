import React from 'react';
import LoginForm from './login_form';
import SignupForm from './signup_form';

class SessionForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      signup : true,
    };

    this.handleClickLogo = this.handleClickLogo.bind(this);
  }

  handleClickLogo(e){
    e.preventDefault();
    this.props.history.push('/');
  }

  handleClick(boolean) {
    return (e) => {
      e.preventDefault();
      this.setState({signup : boolean});
      this.props.clearErrors();
    }
  }

  render(){  
    let {login, signup, errors, clearErrors} = this.props;

    let form = this.state.signup ? 
      <LoginForm login={login} errors={errors} clearErrors={clearErrors}></LoginForm> :
      <SignupForm signup={signup} login={login} errors={errors} clearErrors={clearErrors}></SignupForm>
    
    let text = this.state.signup ?
      <div className="login-tiny-text"> New to Yulp? <a onClick={this.handleClick(false)}> SignUp </a></div> :
      <div className="login-tiny-text"> Already on Yulp? <a onClick={this.handleClick(true)}> Login </a></div> 
  
    return(
      <div>
        <div>
          <div className='yulp-banner'><div className='yulp-header' onClick={this.handleClickLogo}></div></div>
            <div className='body-container'>  
              <div className='user-login'>
                { form }
                { text }
              </div>
              <div className="session-img"></div>
            </div>
        </div>
      </div>
    )
  }
}

export default SessionForm;