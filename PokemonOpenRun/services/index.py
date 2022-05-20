from flask import render_template, Blueprint

bp = Blueprint("index", __name__, url_prefix="/")

@bp.route('/', methods=['GET'])
@bp.route('/index', methods=['GET'])
def index():
    return render_template('index.html')
