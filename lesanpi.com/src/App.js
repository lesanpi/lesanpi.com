import React from 'react';
import './App.css';
import Nav from './nav/containers/nav';
import Message from './message/containers/message';
import BlogSection from './blog/containers/blog';

function App() {
  return (
    <div className="App">
      <Nav />
      
      <Message />
      <BlogSection />
      <Message />
      
    </div>
  );
}

export default App;
