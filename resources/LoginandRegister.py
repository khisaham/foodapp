from flask import request
from flask_restful import Resource
from model.Model import db, Customers, CustomersSchema

customer_schema = CustomersSchema(many=True)
customer_schema = CustomersSchema()


class LoginRegister(Resource):
    def get(self):
        customers = Customers.query.all()
        customers = customer_schema.dump(customers).data
        return {'status': 'success', 'data': customers}, 200

    def post(self):
        json_data = request.get_json(force=True)
        if not json_data:
            return {'message': 'No input data provided'}, 400
        # Validate and deserialize input
        data, errors = customer_schema.load(json_data)
        if errors:
            return errors, 422
        category = Customers.query.filter_by(email=data['email']).first()
        if category:
            return {'message': 'Category already exists'}, 400
        customers = Customers(
            email=json_data['email'],
            phone_number=json_data['phone_number'],
            fisrt_name=json_data['first_name'],
            last_name=json_data['last_name'],
            coop=json_data['coop'],
            password=json_data['password'],
            passport_number=json_data['passport_number'],
            gender=json_data['gender'],
            date_registered=json_data['date_registered']

        )

        db.session.add(customers)
        db.session.commit()

        result = customer_schema.dump(customers).data

        return {"status": 'success', 'data': result}, 201
