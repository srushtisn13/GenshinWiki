import React, { Component } from 'react';
import "../styles/charadata.css"
class Characterdata extends Component {
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
            <h2>Character Data</h2>
          </div>

          <div className="modal-body">
          <form>
            <label>Name:
              <input type="text" />
            </label>
            <div>
                {'\n'}
              </div>
            <label for="vision">Which element?</label>
              <select id="vis" name="element">
                <option value="Anemo">Anemo</option>
                <option value="Geo">Geo</option>
                <option value="Electro">Electro</option>
                <option value="Dendro">Dendro</option>
                <option value="Cryo">Cryo</option>
                <option value="Pyro">Pyro</option>
                <option value="Hydro">Hydro</option>
              </select>
              <div>
                {'\n'}
              </div>
              <label for="rarity">Rarity?</label>
              <select id="vis" name="element">
                <option value="5star">5 Star</option>
                <option value="4star">4 Star</option>
                <option value="3star">3 Star</option>
              </select>
              <div>
                {'\n'}
              </div>
              <label for="weapon">Weapon type?</label>
              <select id="vis" name="element">
                <option value="sword">Sword</option>
                <option value="catalyst">Catalyst</option>
                <option value="bow">Bow and arrow</option>
                <option value="Spear">Polearm</option>
                <option value="catalyst">Claymore</option>
              </select>
              <div>
                {'\n'}
              </div>
              <label>Affiliation</label>
                <input type="text" />
              <div>
                {'\n'}
              </div>
              <label>Speciality dish</label>
                <input type="text" />
              <div>
                {'\n'}
              </div>
              <label for="gender">Gender</label>
              <select id="gen" name="gen">
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
              <div>
                {'\n'}
              </div>
              <label>Description</label>
                <input type="text" />
              
              <div>
                {'\n'}
              </div>
              <input type="button" value="Submit"/>
          </form>
          </div>
        </div>
      </div>
    );
  }
}

export default Characterdata;