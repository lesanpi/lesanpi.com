import React, { Component } from 'react';
import BlogComponent from '../components/blog.js'
import BlogMessage from '../components/blogMessage.js'

class BlogSection extends Component {

	render(){
		return(
			<div>
			<BlogComponent>
				<BlogMessage />
				<BlogMessage />
				<BlogMessage />
			</BlogComponent>
			</div>
		)
	}

}



export default BlogSection;