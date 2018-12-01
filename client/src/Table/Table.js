import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import './Table.css';
import FileService  from './../Services/FileService.js';

export interface ITableProps {
  name: string;
  link: string;
  pdf: string;
}

class Table extends Component {
	 
	constructor(props) {
		super(props);
		this.state = ({filename: "",
						id_filename:"id_filname_"+this.props.name});
		this.fileService = new FileService();
	}
	
  fileSelectHandler =(event) =>{
	   const data = new FormData();
	 this.state.filename = event.target.files[0].name;
    let file = event.target.files[0];
        console.log("Uploading file", event.target.files[0]);
        data.append('file', event.target.files[0]);
        data.append('name', 'my_file');
        data.append('description', 'this file is uploaded by young padawan');
	 this.fileService.uploadFileToServer(data).then((response) => {
            console.log("File " + file.name + " is uploaded");
        }).catch(function (error) {
            console.log(error);
            if (error.response) {
                //HTTP error happened
                console.log("Upload error. HTTP error/status code=",error.response.status);
            } else {
                //some other error happened
               console.log("Upload error. HTTP error/status code=",error.message);
            }
        });
	const element = (
   <p id={this.state.id_filename}> {this.state.filename}</p>);
   ReactDOM.render(element,document.getElementById(this.state.id_filename));
 }
  render() {
    return (
      <div className="table">
       <h2 id='name'>{this.props.name}</h2>
		<div className="tableproperties">
			<div className="upload-btn-wrapper">
				<div className="btn">Upload a file</div>
				<input type="file" onChange={this.fileSelectHandler}/>
			</div>
			<p id={this.state.id_filename}> {this.state.filename}</p>
			<div id='pdf'><span className="pdf_icon"></span>
			</div>
		</div>
      </div>
    );
  }
}

export default Table;