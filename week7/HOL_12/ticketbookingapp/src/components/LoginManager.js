import React, { useState } from 'react';
import GuestPage from './GuestPage';
import UserPage from './UserPage';

function LoginManager() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleLogin = () => setIsLoggedIn(true);
  const handleLogout = () => setIsLoggedIn(false);

  let pageContent;
  if (isLoggedIn) pageContent = <UserPage />;
  else pageContent = <GuestPage />;

  return (
    <div>
      {pageContent}
      <br />
      {isLoggedIn ? (
        <button onClick={handleLogout}>Logout</button>
      ) : (
        <button onClick={handleLogin}>Login</button>
      )}
    </div>
  );
}

export default LoginManager;
