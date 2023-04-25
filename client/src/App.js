import React from 'react';
import './App.css';
import Menu from './components/Menu';
import Home from './pages/Home';
import Charas from './pages/Charas';
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import Footer from './components/Footer';
import Back from './assets/back.png'
import Weapons from './pages/Weapons';
import Regions from './pages/Regions';


function App() {

  return (


    <div className='App' style={{backgroundImage:`url(${Back})`}}>
      <Router>  
          <Menu />
          <Routes>
            <Route path="/" element={<Home/>}/>
            <Route path="/charas" element={<Charas/>}/>
            <Route path="/weapons" element={<Weapons/>}/>
            <Route path="/regions" element={<Regions/>}/>
          {/* <Home/>
          <Charas/> */}
          </Routes>
          <Footer/>
          
      </Router>
    </div>
    
  );
}

export default App;
