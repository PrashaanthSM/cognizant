import React from 'react';

const T20players = ['Rohit', 'Virat', 'Surya', 'Pant', 'Hardik'];
const RanjiTrophyplayers = ['Pujara', 'Rahane', 'Shaw', 'Bharat', 'Saini'];

const IndianPlayers = () => {
  const mergedPlayers = [...T20players, ...RanjiTrophyplayers];

  const oddPlayers = mergedPlayers.filter((_, i) => i % 2 !== 0);
  const evenPlayers = mergedPlayers.filter((_, i) => i % 2 === 0);

  return (
    <div>
      <h2>Odd Team Players</h2>
      {oddPlayers.map((p, i) => (
        <li key={i}>{p}</li>
      ))}

      <h2>Even Team Players</h2>
      {evenPlayers.map((p, i) => (
        <li key={i}>{p}</li>
      ))}
    </div>
  );
};

export default IndianPlayers;
