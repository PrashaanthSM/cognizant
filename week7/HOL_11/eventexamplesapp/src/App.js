import React from 'react';
import './App.css';
import Buttons from './components/Buttons';
import CurrencyConverter from './components/CurrencyConverter';

function App() {
  return (
    <div className="App">
      <Buttons />
      <CurrencyConverter />
    </div>
  );
}

export default App;
