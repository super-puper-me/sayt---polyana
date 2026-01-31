from flask import Flask, render_template

app = Flask(name)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/about')
def about():
    return 'help pls'

@app.route('/user/<name>')
def user(name):
    return f"hi, {name}!"

if name == 'main':
    app.run(debug = True)
'''
from flask import Flask, render_template

app = Flask(name)

@app.route('/')
def home():
    return render_template('index.html')


@app.route('/hello')
def hello():
    return "Здравствуйте, это сайт для Вас, если у вас ребенок с аутизмом❤️"


@app.route('/about')
def about():
    return "Это страница 'О нас'"


@app.route('/user/name')
def user(name):
    return f"Добро пожаловать, {name}!"

@app.route('/greet/<name>')
def greet(name):
    return render_template('greet.html', username = name)

if name == 'main':
    app.r
