#!/bin/bash
yum update -y

yum install python3 -y
pip3 install flask

curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install nodejs -y

cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello():
    return "Flask Running"
app.run(host='0.0.0.0', port=5000)
EOF

nohup python3 app.py &

mkdir express
cd express
npm init -y
npm install express

cat <<EOF > app.js
const express=require('express');
const app=express();
app.get('/',(req,res)=>res.send('Express Running'));
app.listen(3000);
EOF

nohup node app.js &
