import { combineReducers } from 'redux';

import sessionErrorsReducer from './session_errors_reducer';
import businessErrorsReducer from './business_errors_reducer';

const errorsReducer = combineReducers({
  session: sessionErrorsReducer,
  business: businessErrorsReducer,
});

export default errorsReducer;