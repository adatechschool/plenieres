from flask import Flask, request
from flask import render_template
import process_data as pd 

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('form.html')

@app.route('/salut', methods=["POST"]) #voir le sens de post dans le ficher html 
def suivie_donner():
    username= request.form["username"]
    password= request.form["password"]
    pd.data_process(username, password)
    return "Merci"

if __name__ == "__main__":
    app.run()
