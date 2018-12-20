export const hasUserReviewed = (state, businessId) => {
  const reviews = Object.values(state.entities.reviews);
  const userId = state.session.id;
  let bId = parseInt(businessId);
  let result = false;
  reviews.forEach(( review ) => {
    if (review.bizId === bId && review.authorId === userId) {
      result = review.id;
    } 
  });
  return result;
};