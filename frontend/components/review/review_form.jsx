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
    const url = `/businesses/${this.props.match.params.id}`;
    this.props.history.push(url);
  }

  handleSubmit(e) {
    e.preventDefault();
    const businessId = parseInt(this.props.match.params.id);
    const author_id = this.props.currentUser;
    const review = Object.assign({}, this.state, {
      biz_id: businessId,
      author_id,
      // IS IT THIS???????
    });
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
            <input type="submit" value="Post Review" />
          </form>
        </div>
      </div>;
  }
}

export default withRouter(ReviewForm);
