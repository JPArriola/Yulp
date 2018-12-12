import React from "react";
import {Route} from 'react-router-dom';
import LoginContainer from './session/login_container';

const App = () => (
  <div>
    <Route exact to='/login' component={LoginContainer} />
  </div>
);

export default App;
