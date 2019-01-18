import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import { Route, Link, BrowserRouter as Router , Switch } from 'react-router-dom'
import App from './App';
import CandidatesTable from './candidates/CandidatesTable';
import * as serviceWorker from './serviceWorker';

const routing = (
  <Router>
   <div>
     <ul>
       <li>
         <Link to="/">Home</Link>
       </li>
       <li>
         <Link to="/candidates">Candidates</Link>
       </li>
     </ul>
     <Switch>
       <Route exact path="/" component={App} />
       <Route path="/candidates" component={CandidatesTable} />
     </Switch>
   </div>
 </Router>
)
ReactDOM.render(routing, document.getElementById('root'))
// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
