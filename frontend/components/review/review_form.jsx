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

  render() {
    return <div>
        <div className="new-review-navbar">
          ***NAVBAR TO BE ADDED***
        </div>
        <div className="new-review-content">
          <form onSubmit={this.handleSubmit}>
            <br></br>
            <label>Select your rating</label>
            <br></br>
            <input type="number" value={this.state.rating} onChange={this.update("rating")} />
            <br></br>
            <label>Review</label>
            <br></br>
            <textarea cols="30" rows="10" value={this.state.body} onChange={this.update("body")} />
            <br></br>
            <input type="submit" value={this.props.formType} />
          </form>
        </div>
      </div>;
  }
}

export default withRouter(ReviewForm);
