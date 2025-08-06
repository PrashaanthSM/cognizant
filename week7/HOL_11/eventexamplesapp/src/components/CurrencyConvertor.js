import React, { useState } from 'react';

function CurrencyConvertor() {
  const [amount, setAmount] = useState('');
  const [currency, setCurrency] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    const result = parseFloat(amount) * 80;
    alert(`Converting to ${currency} Amount is ${result}`);
  };

  return (
    <div style={{ marginTop: '30px' }}>
      <h2 style={{ color: 'green' }}>Currency Convertor!!!</h2>
      <form onSubmit={handleSubmit}>
        <label>Amount:</label>{' '}
        <input
          type="number"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
        />
        <br />
        <label>Currency:</label>{' '}
        <textarea
          value={currency}
          onChange={(e) => setCurrency(e.target.value)}
        />
        <br />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}

export default CurrencyConvertor;
