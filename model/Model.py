from flask import Flask
from marshmallow import Schema, fields, pre_load, validate
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy

ma = Marshmallow()
db = SQLAlchemy()


class Comment(db.Model):
    __tablename__ = 'comments'
    id = db.Column(db.Integer, primary_key=True)
    comment = db.Column(db.String(250), nullable=False)
    creation_date = db.Column(db.TIMESTAMP, server_default=db.func.current_timestamp(), nullable=False)
    category_id = db.Column(db.Integer, db.ForeignKey('categories.id', ondelete='CASCADE'), nullable=False)
    category = db.relationship('Category', backref=db.backref('comments', lazy='dynamic'))

    def __init__(self, comment, category_id):
        self.comment = comment
        self.category_id = category_id


class Category(db.Model):
    __tablename__ = 'categories'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(150), unique=True, nullable=False)

    def __init__(self, name):
        self.name = name


class Customers(db.Model):
    __tablename__ = 'customers'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(123), unique=True, nullable=False)
    phone_number = db.Column(db.String(15), unique=True, nullable=False)
    first_name = db.Column(db.String(54))
    last_name = db.Column(db.String(54))
    coop = db.Column(db.Integer)
    password = db.Column(db.String(154))
    passport_number = db.Column(db.Integer)
    gender = db.Column(db.String(8))
    dob = db.Column(db.DATE)
    date_registered = db.Column(db.TIMESTAMP, server_default=db.func.current_timestamp(), nullable=False)

    def __init__(self, email, phone_number, first_name, last_name, coop, password, passport_number, gender, dob,
                 date_registered):
        # self.id = id
        self.email = email
        self.phone_number = phone_number
        self.first_name = first_name
        self.last_name = last_name
        self.coop = coop
        self.password = password
        self.passport_number = passport_number
        self.gender = gender
        self.dob = dob
        self.date_registered = date_registered


class CategorySchema(ma.Schema):
    id = fields.Integer()
    name = fields.String(required=True)


class CommentSchema(ma.Schema):
    id = fields.Integer(dump_only=True)
    category_id = fields.Integer(required=True)
    comment = fields.String(required=True, validate=validate.Length(1))
    creation_date = fields.DateTime()


class CustomersSchema(ma.Schema):
    id = fields.Integer()
    email = fields.String(required=True, validate=validate.Length(10))
    phone_number = fields.String(required=True, validate=validate.Length(1))
    first_name = fields.String(required=True)
    last_name = fields.String()
    coop = fields.Integer()
    password = fields.String()
    passport_number = fields.Integer()
    gender = fields.String()
    dob = fields.Date()
    date_registered = fields.DateTime()

