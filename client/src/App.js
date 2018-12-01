import React, { Component } from 'react';
import './App.css';
import Table from './Table/Table';
import Allocation from './Allocation/Allocation';

class App extends Component {
	
	
  state = {};

    componentDidMount() {
        setInterval(this.hello, 250);
    }

    hello = () => {
        fetch('http://localhost:8080/greeting')
            .then(response => response.text())
            .then(message => {
                this.setState({message: message});
            });
    };
  
  render() {
    return (
      <div className="App">
        <header className="App-header">
        </header>
		<Table name="Supraveghetori" link="Upload" />
		<Table name="Candidati" link="Upload" />
		<Table name="Sali de examen" link="Upload" />
		<Allocation name="Repartizare"/>
      </div>
    );
  }
}

export default App;
