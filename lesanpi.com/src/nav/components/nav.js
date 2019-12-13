import React from 'react';
import './nav.css'
function Nav(props) {
	return(
		<div className="mainMenu">
			<div className="innerMainMenu">
				<ul>
					<li><a>Home</a></li>
					<li><a>Blog</a></li>
					<li><a>Contact</a></li>
					<li><a>Portfolio</a></li>
				</ul>
			</div>
		</div>
	)
}

export default Nav;