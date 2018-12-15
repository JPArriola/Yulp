import React from "react";
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component{

  componentDidMount(){
    this.props.fetchBusinesses();
  }

  render(){
    let businesses = this.props.businesses.map(business => {
      return(
        <BusinessIndexItem key={business.id} business={business}/>
      );
    });
    return(
      <div>
        BUSINESSES PAGE
        <ul>
          {businesses}
        </ul>
      </div>
    )
  }
}

export default BusinessIndex;