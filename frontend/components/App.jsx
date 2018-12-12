import React from "react";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginContainer from './session/login_container';
import HomeContainer from "./home/home_container";

const App = () => (
  <div>
    <Switch>
      <Route exact to='/login' component={LoginContainer} />
      <Route exact to='/' component={HomeContainer} />
      <Route exact to='/signup' component={LoginContainer} />
    </Switch>
  </div>
);

export default App;
