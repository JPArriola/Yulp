import React from "react";
import { withRouter } from "react-router-dom";

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 5,
      body: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToBusinessShow = this.navigateToBusinessShow.bind(this);
  }

  navigateToBusinessShow() {
    const url = `/businesses/${this.props.match.params.businessId}`;
    this.props.history.push(url);
  }

  handleSubmit(e) {
    e.preventDefault();
    const businessId = parseInt(this.props.match.params.businessId);
    const review = Object.assign({}, this.state, {
      businessId: businessId
    });
    this.props.createReview(review);
    this.navigateToBusinessShow();
  }

  update(field) {
    return e =>
      this.setState({
        [field]: e.currentTarget.value
      });
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <label>Select your rating</label>
          <input
            type="number"
            value={this.state.rating}
            onChange={this.update("rating")}
          />

          <label>Review</label>
          <textarea
            cols="30"
            rows="10"
            value={this.state.body}
            onChange={this.update("body")}
          />

          <input type="submit" value="Post Review" />
        </form>
      </div>
    );
  }
}

export default withRouter(ReviewForm);
