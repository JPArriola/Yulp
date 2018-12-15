import React from "react";
import { Link } from "react-router-dom";

const BusinessIndexItem = props => (
  <div>
    <Link to={`/businesses/${props.business.id}`}>{props.business.id}</Link>
  </div>
);

export default BusinessIndexItem;
