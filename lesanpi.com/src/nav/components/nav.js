import React from 'react';
import './nav.css'
function Nav(props) {
	return(
		<div className="mainMenu">
			<div className="innerMainMenu">
				<ul>
					<li><a href="www.google.com">Home</a></li>
					<li><a href="www.google.com">Blog</a></li>
					<li><a href="www.google.com">Contact</a></li>
					<li><a href="www.google.com">Portfolio</a></li>
				</ul>
			</div>
		</div>
	)
}

export default Nav;