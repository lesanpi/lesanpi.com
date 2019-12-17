import React, { Component } from 'react';
import Section from '../../section/components/section'
import Slice from '../../section/components/slice';
class SkillsSection extends Component {

	state = {
	    active: [true, false, false, false, false],
  	}

  	handleActive1 = (event) =>{
  		this.setState({
     		active: [true, false, false, false, false]     		
    	})
  	}
  	handleActive2 = (event) =>{
  		this.setState({
     		active: [false, true, false, false, false]     		
    	})
  	}
  	handleActive3 = (event) =>{
  		this.setState({
     		active: [false, false, true, false, false]     		
    	})
  	}
  	handleActive4 = (event) =>{
  		this.setState({
     		active: [false, false, false, true, false]     		
    	})
  	}
  	handleActive5 = (event) =>{
  		this.setState({
     		active: [false, false, false, false, true]     		
    	})
  	}

	render(){
		return(
			<Section>
				<Slice active={this.state.active[0]}
						handleActive={this.handleActive1}/>
		        <Slice active={this.state.active[1]}
		        		handleActive={this.handleActive2}/>
		        <Slice active={this.state.active[2]}
		        		handleActive={this.handleActive3}/>
		        <Slice active={this.state.active[3]}
		        		handleActive={this.handleActive4}/>
		        <Slice active={this.state.active[4]}
		        		handleActive={this.handleActive5}/>			        
			</Section>
		)
	}

}



export default SkillsSection;