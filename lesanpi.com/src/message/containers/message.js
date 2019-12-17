import React, { Component } from 'react';
import MessageComponent from '../components/message.js'
import Typing from '../components/typing.js'

class MessageSection extends Component {

	render(){
		return(

			<MessageComponent>
				<Typing text="Luis E. Sanchez P."
					size={180}

				/>
				<Typing text="Desarrollador Web/Movil"
					size={100}
					description={true}
				/>
			</MessageComponent>			

		)
	}

}



export default MessageSection;