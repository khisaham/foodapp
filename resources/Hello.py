from flask_restful import Resource


class Hello(Resource):
    def get(self):
        return {"message": "Welcome Hamphrey! This is a get endpoint"}

    def post(self):
        return {"message": "Hello, Khisaham! This is a post endpoint"}