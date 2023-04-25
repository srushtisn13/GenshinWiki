import {useState} from 'react'
import Axios from 'axios'
import '../styles/chara.css'

function Characters() {

  const [name,setName]=useState('')
  const [vision,setvision]=useState('Anemo','Geo','Electro','Dendro','Cryo','Pyro','Hydro')
  const [rarity,setrarity]=useState('5 Star','4 Star','3 Star')
  const [weapon,setweapon]=useState('Sword','Catalyst','Bow and arrow','Polearm','Claymore')
  const [aff,affiliation]=useState('')
  const [spec,setdish]=useState('')
  const [gen,setgen]=useState('')
  const [desc,setdesc]=useState('')

  const[newdesc,setnewdesc]=useState('')

  const[charalist,setcharalist]=useState([]);


  const addchar=()=>{
    Axios.post('http://localhost:3001/createchar', {
      name:name,
      vision:vision,
      rarity:rarity,
      weapon:weapon,
      aff:aff,
      spec:spec,
      gen:gen,
      desc:desc
    }).then(()=>{console.log('success')})
  }

  const getchars = () =>{
    Axios.get('http://localhost:3001/getchars').then((response)=>{
      setcharalist(response.data)
    })
  }


  const updatechardesc= (name)=>{
    Axios.put('http://localhost:3001/updatechar',{
      newdesc:newdesc,
      name:name
      // twerk up the vars a little update not working
    }).then((response)=>{
        alert("update!");
      });
  }

  const deletechar=(name)=>{
    Axios.delete (`http://localhost:3001/delete/${name}`)
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
            <label for="vision">Which element?</label>
              <select id="vis" name="element" onChange={(event)=>{
                setvision(event.target.value);
              }}>
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
              <label>Affiliation</label>
                <input type="text" onChange={(event)=>{
                affiliation(event.target.value);
              }}/>
              <div>
                {'\n'}
              </div>
              <label>Speciality dish</label>
                <input type="text" onChange={(event)=>{
                setdish(event.target.value);
              }}/>
              <div>
                {'\n'}
              </div>
              <label for="gender">Gender</label>
              <select id="gen" name="gen" onChange={(event)=>{
                setgen(event.target.value);
              }}>
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
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
              <button onClick={addchar}>Submit</button>
              <button onClick={getchars}>Show characters</button>

              {
                charalist.map((val,key)=>{
                  return (<div className='hahaha'>
                      <h2>{val.NAME}</h2>
                      <h3>{val.VISION}</h3>
                      <h3>{val.RARITY}</h3>
                      <h3>{val.WEAPON_TYPE}</h3>
                      <h3>{val.AFFILIATION}</h3>
                      <h3>{val.SPECIALTIY_DISH}</h3>
                      <h3>{val.GENDER}</h3>
                      <h3>{val.DESCRIPTION}</h3>

                      
                      <div><input type="text" placeholder="Description" onChange={(event)=>{
                        setnewdesc(event.target.value)}} />
                      <button onClick={()=> {updatechardesc(val.NAME)}}>Update</button></div>
                      <button onClick={()=>{
                        deletechar(val.NAME)
                      }}>Delete</button>

                    
                    </div>)
                })
              }

              
    </div>
  );
}

export default Characters;