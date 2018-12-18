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