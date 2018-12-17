import React from "react";
import Navbar from "../navbar/navbar_container";

class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  render(){
    let biz = this.props.business;
    if (!biz) return null;
    
    let history = this.props.history;

    return (
      <div>
        <Navbar history={history}/>
        {biz.bizName}
      </div>
    )
  }
}

export default BusinessShow;