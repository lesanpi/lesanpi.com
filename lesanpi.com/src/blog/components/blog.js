import React from 'react';
import './blog.css';
function Blog(props) {
	return(
		<div className="blogSection">
			<div className="blogInner">
				{props.children}
			</div>	
		</div> 
	)
}

export default Blog;