import React from "react";

class ReviewIndexItem extends React.Component{
  constructor(props){
    super(props);
  }  

  deleteReview(){
    return(e) => {
      e.preventDefault();
      this.props.deleteReview(this.props.review.id);
    };
  }

  isAuthor(){
    if (this.props.currUser === this.props.author.id) {
      return <div className="review-content-delete">
          <button onClick={this.deleteReview()}>
            <i className="fas fa-trash-alt" />
          </button>
        </div>;
    }
  }
  
  render(){
    let { photoUrls, firstName, lastName } = this.props.author;
    let { rating, body } = this.props.review;
    let userReview = rating * 2;
    return <div className="review-master">
      <div className="review-master-child">
        <div className="review-author-container">
          <div className="review-author-picture" >
            <img src={photoUrls[0]} />
          </div>
          <div className="review-author-info">
            {firstName}
            {lastName}
          </div>
        </div>
        <div className="review-content-container">
          <img className={`star-mid-${userReview}` + ` star-mid`} src="https://i.imgur.com/UkZkm0D.png"></img>
          <div className="review-content-body">{body}</div>
          <div className="review-content-reactions-container">
            <div className="review-content-review">Was this review ...?</div>
            <div className="review-content-reactions-actions">
              <div className="review-content-emoticons">
                <div className="review-content-emoticon-container no-drop"><i className="fas fa-lightbulb"></i> Useful</div>
                <div className="review-content-emoticon-container no-drop"><i className="far fa-grin-alt"></i> Funny</div>
                <div className="review-content-emoticon-container no-drop"><i className="far fa-grin-stars"></i> Cool</div>
              </div>
              {this.isAuthor()}
            </div>
          </div>
        </div>
      </div>
    </div>;
  }
}

export default ReviewIndexItem;