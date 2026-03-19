const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Express running in ECS");
});

app.listen(3000, () => console.log("Running on 3000"));
1
