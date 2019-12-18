import React from 'react';
import './slice.css'
function Slice(props) {
	if(props.active){
		return(
			<div className="sliceActive">
	            	<h2>Titulo de Slice</h2>
	            	
		            <div className='sliceContent'>
		                <b>Subtitulo del Slice</b>
		                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat.</p>
		            </div>
        	</div>
		)
	} else return(
		<div className="slice"
			onClick={props.handleActive}>
			<div className="sliceTitle">
				<h3>Titulo de Slice</h3>
			</div>
		</div>
	)
}

export default Slice;