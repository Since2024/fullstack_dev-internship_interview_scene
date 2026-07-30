import React, { useState } from 'react';
import ProfileCard from './ProfileCard';
import './App.css';

function App() {
  const [isActive, setIsActive] = useState(true);

  const toggleStatus = () => {
    setIsActive(prev => !prev);
  };

  return (
    <div className="app-container">
      <ProfileCard
        name="Hasan Gaha"
        title="Fullstack Developer"
        handle="hasonmagar@gmail.com"
        isActive={isActive}
        contactText={isActive ? "Set Inactive" : "Set Active"}
        avatarUrl="/avatar.png"
        onContactClick={toggleStatus}
        behindGlowEnabled={true}
        innerGradient="linear-gradient(145deg,#60496e8c 0%,#71C4FF44 100%)"
      />
    </div>
  );
}

export default App;
