export const fetchBusinesses = () => {
  return $.ajax({
    method: 'GET',
      url: '/api/businesses',
      // error: (err) => console.log(err)
  });
};

export const fetchBusiness = (id) => {
  return $.ajax({
    method: 'GET',
      url: `/api/businesses/${id}`,
      // error: (err) => console.log(err)
  });
};