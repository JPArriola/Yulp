export const fetchReviews = () => {
  return $.ajax({
    method: 'GET',
    url: '/api/reviews',
  });
};

export const fetchReview = (id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/reviews/${id}`,
  });
};

export const createReview = review => {
  return $.ajax({
    method: 'POST',
    url: '/api/reviews',
    data: {
      review
    }
  });
};

export const updateReview = review => {
  return $.ajax({
    url: `/api/reviews/${review.id}`,
    method: 'PATCH',
    data: {
      review
    }
  })
};

export const deleteReview = id => (
  $.ajax({
    url: `/api/reviews/${id}`,
    method: 'DELETE'
  })
);
