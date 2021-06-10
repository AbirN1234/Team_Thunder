const express = require("express");
const app = express();
const path = require('path');
app.set('view engine', 'ejs');
var formidable = require('formidable');
var fs = require('fs');
var nodemailer = require('nodemailer'); 


var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'gmitcse1@gmail.com',
      pass: 'gmit12345'
    }
  });


const bodyParser = require('body-parser');
const session = require('express-session');
const mysql = require('mysql');
var mycrypto=require('crypto');
var key="password";
var algo='aes256';
app.use(express.static(path.join(__dirname, './public')));   
app.use(express.static(path.join(__dirname, './images')));   



app.use(express.json());
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "resume",
});


db.connect(function(err) {
    if (err) {
      console.error('error connecting: ' + err.stack);
      return;
    }
    console.log('connected as id ' + db.threadId);
});
app.use(bodyParser.urlencoded({ extended: true })); 


app.use(session({
    secret: 'Your_Secret_Key',
    resave: true,
    saveUninitialized: true
}))

var sess;

app.get('/',(req,res) => {
    sess = req.session;
    if(!sess.email) {
        res.render('index');
    }
    else {
        res.render('userDashboard', {user:sess.email});
    }
});

app.get("/login", (req, res) => {
    sess = req.session;
    if(!sess.email) {
        res.render('login', {error: ""});
    }
    else {
        res.render('userDashboard', {user:sess.email});
    }
    
});

app.get("/register", (req, res) => {
    sess = req.session;
    if(!sess.email) {
        res.render('register', {error: ""});
    }
    else {
        res.render('userDashboard', {user:sess.email});
    }
    
});

app.get("/demoResume", (req, res) => {
    sess = req.session;
    if(!sess.email) {
        res.render('login', {error: ""});
    }
    else {
        res.render('demoResume');
    }
});


app.post("/signupenc",(req,res)=>{
    var {name, email, password, con_pass, image}  = req.body;
    db.query('SELECT * FROM users WHERE email = ?', [email],
    (err,result)=>{
        if(err){
            res.send({ err: err })
        }
        if(result.length>0){
            res.render('register', {error:"User already exists!"});
        }
        else {
            if(password == con_pass){
                var myCipher= mycrypto.createCipher(algo,key);
                var encpass=myCipher.update(password,'utf8','hex')
                +myCipher.final('hex');
        
                db.query('INSERT INTO users (name,email, password, image) VALUES (?,?,?,?)',
                [name,email, encpass, image],
                (err,result)=>{
                    if(err){
                        res.status(422).send({err:err})
                    }else{
        
                        var mailOptions = {
                            from: 'gmitcse1@gmail.com',
                            to: email,
                            subject: 'Thunder CV Creator',
                            html: '<b>WELCOME:' + name + '</b> <br/>Registration Successful !',
                          };
                          
                        transporter.sendMail(mailOptions, function(error, info){
                            if (error) {
                                console.log(error);
                            } else {
                                console.log('Email sent: ' + info.response);
                            }
                        });
        
                    
                        res.render('login', {error: ""});
                    }
                });
                console.log("SignupSucessful");
                
            }
            else{
                res.send({message:'Passwords not matched'}); 
            }
        }
    });



    
});

app.post("/loginenc",(req,res)=>{
    let {email, password}  = req.body;
    var myCipher= mycrypto.createCipher(algo,key);
    var encpass=myCipher.update(password,'utf8','hex') 
    +myCipher.final('hex');

    db.query('SELECT * FROM users WHERE email=?',
        [email],
        (err,result)=>{
            if(err){
                res.send({ err: err })
            }
            if(result.length<=0) {
                res.render('login', {error: 'User not found.'});  
            }
            else {
                if(result.length>0 && result[0].password == encpass){
                    console.log("Login Successfull");
                    sess = req.session;
                    sess.email = email;
                    res.render('userDashboard', {user:sess.email});
                }
                else {
                    res.render('login', {error: "Incorrect Password"});
                }
            }
            
        }

    )
})

app.get('/logout',(req,res) => {
    req.session.destroy((err) => {
        if(err) {
            return console.log(err);
        }
        res.render('index');
    });

});

app.get("*", (req, res) => {
    sess = req.session;
    if(!sess.email) {
        res.render('index');
    }
    else {
        res.render('userDashboard', {user:sess.email});
    }
})


app.listen(4050, () => {
    console.log("Server running at 4050");
}) 
