import React from "react";
import Navbar from "../navbar/navbar_container";

class BusinessShow extends React.Component{

  componentDidMount(){
    this.props.fetchBusiness(this.props.businessId);
  }

  render(){
    let biz = this.props.business;
    if (!biz) return null;
    

    return <div>
        <Navbar />
        <div className="showpage-master-size">
          <div className="showpage-working-size">
            <div className="showpage-business-info-master">
              <div className="showpage-business-info-top-master">
                <div>{biz.bizName}</div>
                <div>Write a Review</div>
              </div>
              <div className="showpage-business-info-lower-master" />
            </div>
          </div>
        </div>
      </div>;
  }
}

export default BusinessShow;