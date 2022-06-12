from flask import Flask
from services import blueprints

def app_init():
    app = Flask(__name__)
    for bp in blueprints:
        app.register_blueprint(bp)
    return app

app = app_init()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
