import { combineReducers } from 'redux';
import errorsReducer from './errors_reducer';
import session_errors_reducer from './session_errors_reducer';
import entitiesReducer from './entities_reducer';

const rootReducer = combineReducers({
  errors: errorsReducer,
  session: session_errors_reducer,
  entities: entitiesReducer
});

export default rootReducer;