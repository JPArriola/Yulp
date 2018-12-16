import React from "react";
import { Link } from "react-router-dom";

const BusinessIndexItem = props => (
  <li>
    
    <Link to={`/businesses/${props.business.id}`}>{props.business.biz_name}</Link>
  </li>
);

export default BusinessIndexItem;
