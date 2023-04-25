const express=require('express')
const app = express()
const mysql=require('mysql')
const cors=require('cors')

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:"",
    database:'genshinwiki'

})

app.post("/createchar",(req,res)=>{
    const name = req.body.name
    const vis = req.body.vision
    const rar = req.body.rarity
    const weap = req.body.weapon
    const affi = req.body.aff
    const dish = req.body.spec
    const gender = req.body.gen
    const descr = req.body.desc

    db.query('INSERT INTO characters (NAME,VISION,RARITY,WEAPON_TYPE,AFFILIATION,SPECIALITY_DISH,GENDER,DESCRIPTION) VALUES (?,?,?,?,?,?,?,?)',
    [name,vis,rar,weap,affi,dish,gender,descr], (err,result)=>{
        if(err){
            console.log(err)
        } else{
            res.send("values inserted")
        }
    })

})

app.post("/createweapon",(req,res)=>{
    const name = req.body.name
    const rar = req.body.rarity
    const weap = req.body.weapon
    const stat = req.body.stat
    const descr = req.body.desc

    db.query('INSERT INTO weapons (NAME,RARITY,TYPE,STAT,DESCRIPTION) VALUES (?,?,?,?,?)',
    [name,rar,weap,stat,descr], (err,result)=>{
        if(err){
            console.log(err)
        } else{
            res.send("values inserted")
        }
    })

})

app.post("/createregion",(req,res)=>{
    const name = req.body.name
    const element = req.body.element
    const wings = req.body.wings
    const archon = req.body.archon
    const aff1 = req.body.aff1
    const aff2 = req.body.aff2
    const aff3 = req.body.aff3
    const aff4 = req.body.aff4
    const aff5 = req.body.aff5

    db.query('INSERT INTO regions (NAME,ELEMENT,WINGS,ARCHON,AFFILIATION_GROUP1,AFFILIATION_GROUP2,AFFILIATION_GROUP3,AFFILIATION_GROUP4,AFFILIATION_GROUP5) VALUES (?,?,?,?,?,?,?,?,?)',
    [name,element,wings,archon,aff1,aff2,aff3,aff4,aff5], (err,result)=>{
        if(err){
            console.log(err)
        } else{
            res.send("values inserted")
        }
    })

})





app.get('/getchars',(req,res)=>{
    db.query("SELECT * FROM characters",(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.get('/getweapons',(req,res)=>{
    db.query("SELECT * FROM weapons",(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.get('/getregions',(req,res)=>{
    db.query("SELECT * FROM regions",(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})





app.get('/moreinfochars',(req,res)=>{
    db.query("SELECT * FROM characters NATURAL JOIN information",(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.get('/moreinfoweapons',(req,res)=>{
    db.query("SELECT * FROM weapons INNER JOIN weapon_ascension_materials ON weapons.NAME = weapon_ascension_materials.WEAPON_NAME ",(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.get('/countchar',(req,res)=>{
    db.query('SELECT COUNT(NAME) FROM characters',(err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})



app.put('/updatechar',(req,res)=>{

    const newdesc=req.body.newdesc;
    const name = req.body.name;
    db.query("UPDATE characters SET DESCRIPTION = ? WHERE NAME = ?",
    [newdesc,name],
    (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    });
})

app.delete('/delete/:name', (req,res)=>{
    const name=req.params.name
    db.query("DELETE FROM characters WHERE NAME = ? ",name, (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.delete('/deleteweapons/:name', (req,res)=>{
    const name=req.params.name
    db.query("DELETE FROM weapons WHERE NAME = ? ",name, (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})

app.delete('/deleteregions/:name', (req,res)=>{
    const name=req.params.name
    db.query("DELETE FROM regions WHERE NAME = ? ",name, (err,result)=>{
        if(err){
            console.log(err)
        }else{
            res.send(result)
        }
    })
})




app.listen(3000,(req,res)=>{
    console.log("Server running on port 3000")
})