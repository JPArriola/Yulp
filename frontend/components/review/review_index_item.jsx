import React from "react";

class ReviewIndexItem extends React.Component{
  constructor(props){
    super(props);

    // this.deleteReview = this.deleteReview.bind(this);
  }  

  deleteReview(){
    return(e) => {
      e.preventDefault();
      this.props.deleteReview(this.props.review.id);
    };
  }

  isAuthor(){
    if (this.props.currUser === this.props.author.id) {
      return <button onClick={this.deleteReview()}>Delete Review</button>;
    }
  }
  
  render(){
    
    console.error(this.props);
  return <div className="review-master">
      <div className="review-master-child">
        <div className="review-author-container">
          <div className="review-author-picture" >
            <img src={this.props.author.photoUrls[0]} />
          </div>
          <div className="review-author-info">
            {this.props.author.firstName}
            {this.props.author.lastName}
          </div>
        </div>
        <div className="review-content-container">
          <div className="review-content-rating">{this.props.review.rating}</div>
          <div className="review-content-body">{this.props.review.body}</div>
          {this.isAuthor()}
        </div>
      </div>
    </div>;
  }
}

export default ReviewIndexItem;

// NOOOOOO <div onClick={props.delete(props.review.id)}>Delete</div>;

// <button onClick={this.deleteReview}>Delete Review</button>