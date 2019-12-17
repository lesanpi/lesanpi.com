import React from 'react';
import './App.css';
import Nav from './nav/containers/nav';
import Message from './message/containers/message';
import BlogSection from './blog/containers/blog';
import Section from './section/components/section';
import Slice from './section/components/slice';
function App() {
  return (
    <div className="App">
      <Nav />
      <Section>
        <Message />
      </Section>
      
      
      <Section>
        <Slice />
        <Slice />
        <Slice />
        <Slice />
        <Slice />
      </Section>
      
    </div>
  );
}

export default App;
//<Section>
  //      <BlogSection />
    //  </Section>