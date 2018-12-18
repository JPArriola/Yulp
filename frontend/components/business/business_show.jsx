import React from "react";
import Navbar from "../navbar/navbar_container";

class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  render(){
    let biz = this.props.business;
    if (!biz) return null;
    

    return (
      <div>
        <Navbar />
        <div className="showpage-master-size">
          <div className="showpage-working-size">
            <div className="showpage-business-info-master">

              {biz.bizName}
            </div>

          </div>
        </div>
      </div>
    )
  }
}

export default BusinessShow;