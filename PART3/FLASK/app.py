from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Flask running in ECS"

app.run(host="0.0.0.0", port=5000)
