import {useState} from 'react'
import Axios from 'axios'
import '../styles/weapon.css'

function Weapons() {

  const [name,setName]=useState('')
  const [rarity,setrarity]=useState('5 Star','4 Star','3 Star')
  const [weapon,setweapon]=useState('Sword','Catalyst','Bow and arrow','Polearm','Claymore')
  const [desc,setdesc]=useState('')

  const[newdesc,setnewdesc]=useState('')

  const[weaponlist,setweaponlist]=useState([]);


  const addweapon=()=>{
    Axios.post('http://localhost:3001/createweapon', {
      name:name,
      rarity:rarity,
      weapon:weapon,
      desc:desc
    }).then(()=>{console.log('success')})
  }

  const getweapons = () =>{
    Axios.get('http://localhost:3001/getweapons').then((response)=>{
      setweaponlist(response.data)
    })
  }


  const updateweapondesc= (name)=>{
    Axios.post('http://localhost:3001/updateweapons',{
      name:name,
      newdesc:newdesc
      // twerk up the vars a little update not working
    }).then((response)=>{
        alert("update!");
      })
  }

  const deleteweapon=(name)=>{
    Axios.delete (`http://localhost:3001/deleteweapons/${name}`)
  }



  return (
    <div className="Characters">
       <label>Name:
              <input type="text" onChange={(event)=>{
                setName(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label for="rarity">Rarity?</label>
              <select id="vis" name="element" onChange={(event)=>{
                setrarity(event.target.value);
              }}>
                <option value="5star">5 Star</option>
                <option value="4star">4 Star</option>
                <option value="3star">3 Star</option>
              </select>
              <div>
                {'\n'}
              </div>
              <label for="weapon">Weapon type?</label>
              <select id="vis" name="element" onChange={(event)=>{
                setweapon(event.target.value);
              }}>
                <option value="sword">Sword</option>
                <option value="catalyst">Catalyst</option>
                <option value="bow">Bow and arrow</option>
                <option value="Spear">Polearm</option>
                <option value="catalyst">Claymore</option>
              </select>
              <div>
                {'\n'}
              </div>
              <div>
                {'\n'}
              </div>
              <label>Description</label>
                <input type="text" onChange={(event)=>{
                setdesc(event.target.value);
              }}/>
              
              <div>
                {'\n'}
              </div>
              <button onClick={addweapon}>Submit</button>
              <button onClick={getweapons}>Show Weapons</button>

              {
                weaponlist.map((val,key)=>{
                  return (<div className='hahaha'>
                      <h2>{val.NAME}</h2>
                      <h3>{val.RARITY}</h3>
                      <h3>{val.TYPE}</h3>
                      <h3>{val.STAT}</h3>
                      <h3>{val.DESCRIPTION}</h3>
                      
                      <div><input type="text" onChange={(event)=>{
                        setnewdesc(event.target.value)}} />
                      <button onClick={()=> {updateweapondesc(val.NAME)}}>Update</button></div>
                      <button onClick={()=>{
                        deleteweapon(val.NAME)
                      }}>Delete</button>

                    </div>)
                })
              }

              
    </div>
  );
}

export default Weapons;
