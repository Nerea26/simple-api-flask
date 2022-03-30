from flask import Flask
app = Flask(__name__)
@app.route('/')  #lo importante es definir las rutas, las dos primeras y las dos últimas siempre son las mismas
def hello_world():
    return "Hello World"
if __name__ == '__main__':
    app.run(host='0.0.0.0') 


