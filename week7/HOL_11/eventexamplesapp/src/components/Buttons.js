import React, { useState } from 'react';

function Buttons() {
  const [count, setCount] = useState(5);

  const increment = () => setCount(count + 1);
  const decrement = () => setCount(count - 1);

  const sayWelcome = () => {
    alert("Hello! Member1");
  };

  const handleClick = () => {
    alert("I was clicked");
  };

  return (
    <div>
      <h2>{count}</h2>

      <button onClick={increment}>Increment</button>
      <br />
      <button onClick={decrement}>Decrement</button>
      <br />
      <button onClick={sayWelcome}>Say welcome</button>
      <br />
      <button onClick={handleClick}>Click on me</button>
    </div>
  );
}

export default Buttons;
