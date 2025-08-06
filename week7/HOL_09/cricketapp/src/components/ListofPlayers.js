import React from 'react';

const players = [
  { name: 'Mr. Jack', score: 50 },
  { name: 'Mr. Michael', score: 70 },
  { name: 'Mr. John', score: 40 },
  { name: 'Mr. Ann', score: 61 },
  { name: 'Mr. Elisabeth', score: 61 },
  { name: 'Mr. Sachin', score: 95 },
  { name: 'Mr. Dhoni', score: 100 },
  { name: 'Mr. Virat', score: 84 },
  { name: 'Mr. Jadeja', score: 64 },
  { name: 'Mr. Raina', score: 75 },
  { name: 'Mr. Rohit', score: 80 },
];


const ListofPlayers = () => {
  const below70 = players.filter(player => player.score < 70);

  return (
    <div>
      <h2>All Players</h2>
      {players.map((p, i) => <li key={i}>{p.name} - {p.score}</li>)}

      <h3>Players with score below 70</h3>
      {below70.map((p, i) => <li key={i}>{p.name} - {p.score}</li>)}
    </div>
  );
};

export default ListofPlayers;