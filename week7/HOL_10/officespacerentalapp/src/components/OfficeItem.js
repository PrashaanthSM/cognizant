import React from 'react';

const OfficeItem = ({ office }) => {
  const rentStyle = {
    color: office.Rent <= 60000 ? 'red' : 'green',
    fontWeight: 'bold'
  };

  return (
    <div className="office-item">
      <img src={office.imageUrl} alt="Office Space" width="300" height="200" />
      <h2>Name: {office.Name}</h2>
      <h3 style={rentStyle}>Rent: Rs. {office.Rent}</h3>
      <h3>Address: {office.Address}</h3>
    </div>
  );
};

export default OfficeItem;
