from flask import Blueprint
from flask_restful import Api
from resources.Hello import Hello
from resources.Category import CategoryResource
from resources.Customer import CustomerResource
from resources.LoginandRegister import LoginRegister
from resources.Orders import Orders

api_bp = Blueprint('api', __name__)
api = Api(api_bp)

# Route
api.add_resource(Hello, '/Hello')
api.add_resource(CategoryResource, '/category')
api.add_resource(CustomerResource, '/customers')
api.add_resource(LoginRegister, '/login') #get method is login | post is register
