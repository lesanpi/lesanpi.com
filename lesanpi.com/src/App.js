import React from 'react';
import './App.css';
import Nav from './nav/containers/nav';
import Message from './message/containers/message';
import BlogSection from './blog/containers/blog';
import SkillsSection from './skills/container/skills';
import Section from './section/components/section'

function App() {
  return (
    <div className="App">
      <Nav />
      <Section>
        <Message />
      </Section>
      
      
      <SkillsSection>
        
      </SkillsSection>

      
    </div>
  );
}

export default App;
//<Section>
  //      <BlogSection />
    //  </Section>