from flask import Flask, render_template, jsonify
import main as p

main = Flask(__name__)

@main.route('/', methods = ['GET'])
def index():
	p.init()
	initial = p.initial_state
	p.bfs(initial)
	moves = p.backtrace()
	return render_template('main.html', initial = initial, moves = moves)

main.run(debug = True)
