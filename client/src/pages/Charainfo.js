import React, { Component } from 'react';
import "../styles/charadata.css"
class Characterinfo extends Component {
  closeCustomModal = (e) => {
    this.props.onCloseModal(e);
  };
  render() {
    const { id, className, header, body, footer } = this.props;
    return (
      <div id="myModal" className="modal">
        <div className="modal-content">
          <div className="modal-header">
            <span className="close" onClick={this.closeCustomModal}>
              &times;
            </span>
            <h2>Character Info</h2>
          </div>

          <div className="modal-body">
            <p>*add stuff*</p>
          </div>
        </div>
      </div>
    );
  }
}

export default Characterinfo;