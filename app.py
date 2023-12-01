# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Bonjour, OpenShift & RHACS !'

if __name__ == "__main__":
    app.run(debug=True)
