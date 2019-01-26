export const bobaBusinesses = (state) => 
  Object.values(state.entities.businesses).filter((business) => business.category === "boba");

export const beerBusinesses = (state) => 
  Object.values(state.entities.businesses).filter((business) => business.category === "beer");

export const coffeeBusinesses = (state) => 
  Object.values(state.entities.businesses).filter((business) => business.category === "coffee");