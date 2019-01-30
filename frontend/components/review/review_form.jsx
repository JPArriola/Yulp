import React from "react";
import { Link, withRouter } from "react-router-dom";

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.review;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToBusinessShow = this.navigateToBusinessShow.bind(this);
  }

  navigateToBusinessShow() {
    let url = `/businesses/${this.props.review.bizId}`;
    if (this.props.formType === "Post Review"){
      let homebiz = parseInt(this.props.match.params.id);
      url = `/businesses/${homebiz}`;
    }
    this.props.history.push(url);
  }
  
  componentDidMount() {
    this.props.fetchBusiness(this.props.bizId);
    this.setState({...this.props.review});
  }

  handleSubmit(e) {
    e.preventDefault();

    let type = this.props.formType;
    let id = parseInt(this.props.match.params.id);
    let bizOrigin = this.props.review.bizId;
    let review = Object.assign({}, this.state, { biz_id : id });
    if (type === "Update Review") {
      review = Object.assign({}, this.state, { id, bizOrigin });
    }
    this.props.action(review).then( () => this.navigateToBusinessShow());
  }

  starClass(index){
    let element = document.getElementById('star-selector');
    let lastClass = element.classList[element.classList.length - 1];
    element.classList.remove(lastClass);
    element.classList.add('stars-huge-' + index);
  }

  starText(index){
    let text = ["Select your rating", "Eek! Methinks not.", "Meh. I've experienced better.", "A-OK", "Yay! I'm a fan.", "Woohoo! As good as it gets!"];
    let element = document.getElementById('star-text');
    element.innerHTML = text[index];
  }

  mouseOn(index){
    return () => {
      this.starClass(index);
      this.starText(index);
    }
  }

  mouseOff(){
    return () => {
      this.starClass(this.state.rating);
      this.starText(this.state.rating);
    }
  }

  update(field) {
    return e => {
      this.setState({ [field]: e.currentTarget.value })
    };
  }

  render() {
    let biz = this.props.business;
    if (!biz) return null;
    let placeholder = "Your review helps others learn about great local businesses.\n\nPlease don't review this business if you received a freebie for writing this review, or if you're connected in any way to the owner or employees.";
    let options = ["Select your rating", "Eek! Methinks not.", "Meh. I've experienced better.", "A-OK", "Yay! I'm a fan.", "Woohoo! As good as it gets!"];

    return <div className="new-review-page-master">
        <div className="new-review-page-working-area">
          <div className="new-review-navbar">
            <div className="new-review-navbar-left" >
              <Link to="/"><div className="new-review-navbar-logo" /></Link>
              <div className="new-review-navbar-formtype">{this.props.formType}</div>
            </div>
          </div>
          <div className="new-review-content">
          <div className="new-review-bizname">{this.props.business.bizName}</div>
            <div className="new-review-content-working-area">
              <form onSubmit={this.handleSubmit} className="new-review-form-master">
                <div className="new-review-inner-form">
                  <div className="new-review-select-rating stars-huge stars-huge-0">
                    <ul id="star-selector" className={`review-form-stars-list stars-huge-${ this.state.rating }`} >
                      <li className="review-form-stars-container" onMouseEnter={ this.mouseOn(1) } onMouseLeave={ this.mouseOff() }>
                        <input type="radio" name="stars-input" value="1" onChange={ this.update('rating') } className="review-form-stars-input"/>
                      </li>
                      <li className="review-form-stars-container" onMouseEnter={ this.mouseOn(2) } onMouseLeave={ this.mouseOff() }>
                        <input type="radio" name="stars-input" value="2" onChange={ this.update('rating') } className="review-form-stars-input"/>
                      </li>
                      <li className="review-form-stars-container" onMouseEnter={ this.mouseOn(3) } onMouseLeave={ this.mouseOff() }>
                        <input type="radio" name="stars-input" value="3" onChange={ this.update('rating') } className="review-form-stars-input"/>
                      </li>
                      <li className="review-form-stars-container" onMouseEnter={ this.mouseOn(4) } onMouseLeave={ this.mouseOff() }>
                        <input type="radio" name="stars-input" value="4" onChange={ this.update('rating') } className="review-form-stars-input"/>
                      </li>
                      <li className="review-form-stars-container" onMouseEnter={ this.mouseOn(5) } onMouseLeave={ this.mouseOff() }>
                        <input type="radio" name="stars-input" value="5" onChange={ this.update('rating') } className="review-form-stars-input"/>
                      </li>
                    </ul>
                    <span className="review-star-text">
                      <p id="star-text">{options[this.state.rating]}</p>
                    </span>
                  </div>  
                  <textarea cols="30" rows="10" value={this.state.body} onChange={this.update("body")} placeholder={ placeholder } />
                </div>
                <input type="submit" value={this.props.formType} className="new-review-form-submit"/>
              </form>
            </div>
          </div>
        </div>
      </div>;
  }
}

export default withRouter(ReviewForm);
