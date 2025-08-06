import React from 'react';
import './App.css';
import OfficeItem from './components/OfficeItem';
import officeData from './components/OfficeData';

function App() {
  return (
    <div className="App">
      <h1>Office Space , at Affordable Range</h1>
      <div className="office-list">
        {officeData.map(office => (
          <OfficeItem key={office.id} office={office} />
        ))}
      </div>
    </div>
  );
}

export default App;
