import React from 'react';
import './slice.css'
function Slice(props) {
	return(
		<div className="slice">
			<div className="sliceTitle">
				<h3>Titulo de Slice</h3>
			</div>
			<div id="v1_content" class="v-content">
            	<h2>Titulo de Slice</h2>
            <div>
                <b>Subtitulo</b>
                <p>Contenido</p>
            </div>
        	</div>
		</div>
	)
}

export default Slice;