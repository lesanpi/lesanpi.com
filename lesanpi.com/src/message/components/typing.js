import React from 'react';
import './message.css'
function Typing(props) {
	if(props.description){
		return(
			<p className="line anim-typewriter-description" style={{fontSize: props.size +'%',
													top: 20 + 'px'}}>
			{props.text}
		</p>
		)
	}
	else return(
		
		<p className="line anim-typewriter" style={{fontSize: props.size +'%',
													top: 53 + 'px'}}>
			{props.text}
		</p>
	
	)
}

export default Typing;