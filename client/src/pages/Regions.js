import {useState} from 'react'
import Axios from 'axios'
import '../styles/region.css'

function Regions() {

  const [name,setName]=useState('')
  const [element,setelement]=useState('')
  const [wings,setwings] = useState('')
  const [archon,setarchon] = useState('')
  const [aff1,setaff1] = useState('')
  const [aff2,setaff2] = useState('')
  const [aff3,setaff3] = useState('')
  const [aff4,setaff4] = useState('')
  const [aff5,setaff5] =  useState('')

  const[newarchon,setnewarchon]=useState('')

  const[regionlist,setregionlist]=useState([]);

  const addregion=()=>{
    Axios.post('http://localhost:3001/createregion', {
      name:name,
      element:element,
      wings:wings,
      archon:archon,
      aff1:aff1,
      aff2:aff2,
      aff3:aff3,
      aff4:aff4,
      aff5:aff5,
    }).then(()=>{console.log('success')})
  }

  const getregions = () =>{
    Axios.get('http://localhost:3001/getregions').then((response)=>{
      setregionlist(response.data)
    })
  }


  const updateregiondesc= (name)=>{
    Axios.post('http://localhost:3001/updateregions',{
      name:name,
      newarchon:newarchon
      // twerk up the vars a little update not working
    }).then((response)=>{
        alert("update!");
      })
  }

  const deleteregion=(name)=>{
    Axios.delete (`http://localhost:3001/deleteregions/${name}`)
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
              <label>Element:
              <input type="text" onChange={(event)=>{
                setelement(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Wings:
              <input type="text" onChange={(event)=>{
                setwings(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Archon:
              <input type="text" onChange={(event)=>{
                setarchon(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 1:
              <input type="text" onChange={(event)=>{
                setaff1(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 2:
              <input type="text" onChange={(event)=>{
                setaff2(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 2:
              <input type="text" onChange={(event)=>{
                setaff2(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 3:
              <input type="text" onChange={(event)=>{
                setaff3(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 4:
              <input type="text" onChange={(event)=>{
                setaff4(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <label>Affiliation Group 5:
              <input type="text" onChange={(event)=>{
                setaff5(event.target.value);
              }}/> 
            </label>
              <div>
                {'\n'}
              </div>
              <div>
                {'\n'}
              </div>
              <button onClick={addregion}>Submit</button>
              <button onClick={getregions}>Show regions</button>

              {
                regionlist.map((val,key)=>{
                  return (<div className='hahaha'>
                      <h2>{val.NAME}</h2>
                      <h3>{val.ELEMENT}</h3>
                      <h3>{val.WINGS}</h3>
                      <h3>{val.ARCHON}</h3>
                      <h3>{val.AFFILIATION_GROUP1}</h3>
                      <h3>{val.AFFILIATION_GROUP2}</h3>
                      <h3>{val.AFFILIATION_GROUP3}</h3>
                      <h3>{val.AFFILIATION_GROUP4}</h3>
                      <h3>{val.AFFILIATION_GROUP5}</h3>
                      
                      <div><input type="text" onChange={(event)=>{
                        setnewarchon(event.target.value)}} />
                      <button onClick={()=> {updateregiondesc(val.NAME)}}>Update</button></div>
                      <button onClick={()=>{
                        deleteregion(val.NAME)
                      }}>Delete</button>

                    
                    </div>)
                })
              }

              
    </div>
  );
}

export default Regions;
