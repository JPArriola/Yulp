import React from "react";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginContainer from './session/login_container';
import SignupContainer from './session/signup_container';
import HomeContainer from "./home/home_container";
import BusinessShowContainer from "./business/business_show_container";
import BusinessContainer from "./business/business_container";
import CoffeeContainer from "./business/coffee_container";
import BobaContainer from "./business/boba_container";
import BeerContainer from "./business/beer_container";
import NewReviewContainer from "./review/create_review_form_container";
import EditReviewContainer from "./review/edit_review_form_container"
import { AuthRoute, ProtectedRoute } from "../util/route_util";

const App = () => (
  <div>
    <Switch>
      <AuthRoute exact path='/login' component={LoginContainer} />
      <AuthRoute exact path='/signup' component={SignupContainer} />
      <Route exact path='/businesses' component={BusinessContainer} />
      <Route exact path='/businesses/coffee' component={CoffeeContainer} />
      <Route exact path='/businesses/boba' component={BobaContainer} />
      <Route exact path='/businesses/beer' component={BeerContainer} />
      <Route path='/businesses/:id/review' component={NewReviewContainer} />
      <Route path='/businesses/:bizId/reviews/:id/edit' component={EditReviewContainer} />
      <Route path='/businesses/:id' component={BusinessShowContainer} />
      <Route path='/' component={HomeContainer} />
    </Switch>
  </div>
);

export default App;

