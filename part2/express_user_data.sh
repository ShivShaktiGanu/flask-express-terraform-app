#!/bin/bash
apt update -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install nodejs -y
l
mkdir /home/ubuntu/express
cd /home/ubuntu/express
npm init -y
npm install express

cat <<EOF > app.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Express Frontend Running');
});

app.listen(3000, () => console.log('Running on 3000'));
EOF

nohup node app.js &
