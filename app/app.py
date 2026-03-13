from flask import Flask
import os
app = Flask(__name__)

@app.route('/')
def hello():
    message = os.environ.get('APP_MESSAGE', 'Version 2.0 - My CI/CD Pipeline Works!')
    return f'<h1 style="color:green">{message}</h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
