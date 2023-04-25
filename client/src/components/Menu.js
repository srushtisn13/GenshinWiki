import React from 'react'
import logo from '../assets/logo5.png';
import "../styles/menu.css"
import {Link} from "react-router-dom";

function Menu() {
  return (
    <div className='Top'>
        <div className='Logo'>
            <img src={logo}></img>
            
        </div>
        <h1>GenshinWiki</h1>
        <div className='Menu'>
            <Link to="/">Home</Link>
            <Link to="/charas">Characters</Link>
            <Link to="/weapons">Weapons</Link>
            {/* <Link to="/">Talents</Link> */}
            <Link to="/regions">Regions</Link>
        </div>
    </div>
  )
}

export default Menu;
