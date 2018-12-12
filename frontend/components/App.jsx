import React from "react";
import LoginContainer from './session/login_container';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";

const App = () => (
  <div>
    <Switch>
      <Route exact to='/login' component={LoginContainer} />
      <Route exact to='/signup' component={LoginContainer} />
    </Switch>
  </div>
);

export default App;
