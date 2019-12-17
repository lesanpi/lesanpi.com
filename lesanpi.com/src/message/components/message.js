import React from 'react';
import './message.css';
function Message(props) {
	return(
	
		<div className="messageSection">
			{props.children}
		</div>
	
	)
}

export default Message;