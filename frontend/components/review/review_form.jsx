import React from "react";
import { withRouter } from "react-router-dom";

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

  update(field) {
    return e =>
      this.setState({
        [field]: e.currentTarget.value
      });
  }

  componentDidMount() {
    this.props.fetchBusiness(this.props.bizId);
  }

  render() {
    let biz = this.props.business;
    if (!biz) return null;

    return <div className="new-review-page-master">
        <div className="new-review-page-working-area">
          <div className="new-review-navbar">
            <div className="new-review-navbar-left">
              <div className="new-review-navbar-logo" />
              <div className="new-review-navbar-formtype">{this.props.formType}</div>
            </div>
          </div>
          <div className="new-review-content">
          <div className="new-review-bizname">{this.props.business.bizName}</div>
            <div className="new-review-content-working-area">
              <form onSubmit={this.handleSubmit} className="new-review-form-master">
                <div className="new-review-inner-form">
                  <div className="new-review-select-rating">
                    <label>Select your rating</label>
                    <input type="number" max={5} min={1} value={this.state.rating} onChange={this.update("rating")} />
                  </div>  
                  <textarea cols="30" rows="10" value={this.state.body} onChange={this.update("body")} placeholder="Your review helps others learn about great local businesses." />
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
