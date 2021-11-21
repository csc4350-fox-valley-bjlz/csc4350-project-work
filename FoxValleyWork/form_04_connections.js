// var form_04 = require('./public/js/form_04_read_to_object.js')
// var form_04E = require('./public/js/form_04E_read_to_object.js')
var dateConverter = require('./public/js/dateConvert.js')
var express = require('express');
var app = express();
var mysql = require('mysql');
app.set('view engine', 'pug');
app.use( express.static( 'public'));
const bodyParser = require("body-parser")
//start body-parser configuration
app.use( bodyParser.json() );       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
    extended: true
}));
//end body-parser configuration
let port = 3333;
var mysql = require('mysql');
var con = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "mysqlrootpassword",
    database: "forms"
});
// var con = mysql.createConnection({
//     host: "https://fox-valley-demo.hinterlong.net/phpmyadmin",
//     user: "phpmyadmin",
//     password: "csc4350",
//     database: "forms"
// });

app.get('/completeMinorInjuryLog', (req, res) => {
    res.render('MinorInjuryLog');
});

app.get('/completeForm02', (req, res) => {
    res.render('PDRMA_Form_02_Vehicle_Accident_Report');
});

app.get('/completeForm03', (req, res) => {
    res.render('PDRMA_Form_03_Property_Loss_Report');
});

app.get('/completeForm04',function(req,res){
    con.connect(function(err){
        res.render('PDRMA_Form_04_Employee_Injury_Report')
    })
});

app.post('/completeForm04',function(req,res){
    let form_04 = req.body;
    // console.log('got body:',form_04)
    con.connect(function(err){
        let sql = 'INSERT INTO form_04_forms SET ?'
        console.log('got body:',form_04)
        con.query(sql,form_04,function(err,result,fields){
            if (err) throw err;
            // console.log("record maybe inserted")
            // res.render('PDRMA_Form_04_Employee_Injury_Report')
            if (err) throw err;
            res.end(JSON.stringify(result));
        })
    })
})

app.post('/completeForm04E',function(req,res){
    let form_04E = req.body;
    // console.log('got body:',form_04E)
    con.connect(function(err){
        let sql = 'INSERT INTO forms_04e SET ?'
        console.log('got body:',form_04E)
        con.query(sql,form_04E,function(err,result,fields){
            if (err) throw err;
            // console.log("record maybe inserted")
            // res.render('PDRMA_Form_04_Employee_Injury_Report')
            if (err) throw err;
            res.end(JSON.stringify(result));
        })
    })
})

app.get('/completeForm04E',function(req,res){
    con.connect(function(err){
        res.render('PDRMA_Form_04E_Employee_Injury_Report')
    })
});

// go to page that will update a row in form04
app.post('/updateForm04',function(req,res){
    let formid = req.body.form04id
    console.log(formid)
    con.connect(function(err){
        let sql = 'SELECT * FROM form_04_forms WHERE Form04ID=' + formid;
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            // result[0].Todays_Date = dateConverter(result[0].Todays_Date);
            console.log(result)
            res.render('form_04_update',{
                data : result
            })
        })
    })
})

// go to page that will update a row in form04E
app.post('/updateForm04E',function(req,res){
    let formid = req.body.form04Eid
    console.log(formid)
    con.connect(function(err){
        let sql = 'SELECT * FROM forms_04e WHERE Form04EID=' + formid;
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            // result[0].Todays_Date = dateConverter(result[0].Todays_Date);
            console.log(result)
            res.render('form_04e_update',{
                data : result
            })
        })
    })
})

// delete row in form04
app.post('/deleteForm04',function(req,res){
    let formid = req.body.form04idDelete
    console.log(formid)
    con.connect(function(err){
        let sql = 'DELETE FROM form_04_forms WHERE Form04ID=' + formid;
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            console.log(result)
            res.end(JSON.stringify(result));
        })
    })
})

// delete row in form04E
app.post('/deleteForm04E',function(req,res){
    let formid = req.body.form04EidDelete
    console.log(formid)
    con.connect(function(err){
        let sql = 'DELETE FROM forms_04e WHERE Form04EID=' + formid;
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            console.log(result)
            res.end(JSON.stringify(result));
        })
    })
})

// actually update the information for form04
app.post('/finalUpdateForm04',function(req,res){
    let form_04 = req.body;
    let formid = form_04.Form04ID
    // console.log('got body:',form_04)
    con.connect(function(err){
        let sql = 'UPDATE form_04_forms SET ? WHERE Form04ID=' + formid
        console.log('got body:',form_04)
        console.log(formid)
        con.query(sql,form_04,function(err,result,fields){
            if (err) throw err;
            // console.log("record maybe inserted")
            // res.render('PDRMA_Form_04_Employee_Injury_Report')
            res.end(JSON.stringify(result));
        })
    })
})

// actually update the information for form04
app.post('/finalUpdateForm04E',function(req,res){
    let form_04E = req.body;
    let formid = form_04E.Form04EID
    // console.log('got body:',form_04)
    con.connect(function(err){
        let sql = 'UPDATE forms_04e SET ? WHERE Form04EID=' + formid
        console.log('got body:',form_04E)
        console.log(formid)
        con.query(sql,form_04E,function(err,result,fields){
            if (err) throw err;
            // console.log("record maybe inserted")
            // res.render('PDRMA_Form_04_Employee_Injury_Report')
            res.end(JSON.stringify(result));
        })
    })
})

app.get('/Home',function(req,res){
    con.connect(function(err){
        res.render('Home')
    })
});

app.get('/index',function(req,res){
    con.connect(function(err){
        res.render('index')
    })
});

app.get('/newFormSelection',function(req,res){
    con.connect(function(err){
        res.render('NewFormSelection')
    })
});

app.get('/ViewFormsSelection',function(req,res){
    con.connect(function(err){
        res.render('ViewFormsSelection')
    })
});

//view all forms
app.get('/ViewForms04',function(req,res){
    // let id = req.body.id;
    // console.log(id)
    // let sql='SELECT * FROM form_04_forms';
    con.connect(function(err){
        let sql = 'SELECT * FROM form_04_forms';
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            // console.log(result)
            res.render('ViewForms04',{
                title : 'form results',
                data : result
            })
        })
    })
});

app.get('/ViewForms04E',function(req,res){
    // let id = req.body.id;
    // console.log(id)
    // let sql='SELECT * FROM forms_04E';
    con.connect(function(err){
        let sql = 'SELECT * FROM forms_04E';
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            // console.log(result)
            res.render('ViewForms04E',{
                title : 'form results',
                data : result
            })
        })
    })
});

// view a single result from a form
app.get('/ViewForms04/:Form04ID?',function(req,res){
    let formid = req.params.Form04ID
    con.connect(function(err){
        let sql = 'SELECT * FROM form_04_forms WHERE Form04ID =' + formid;
        con.query(sql,function(err,result,fields){
            if (err) throw err;
            // console.log(result)
            res.render('ViewForms04',{
                title : 'form results',
                data : result
            })
        })
    })
});

app.listen(port);
console.log('Listening on:' + port);
// console.log(form_04)