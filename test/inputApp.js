var express = require('express');

?? props.bodyparser
	var bodyParser = require('body-parser');

?? props.mvc
	var indexController = require('./controllers/index.js');

var app = express();
app.set('view engine', 'jade');
app.set('views', __dirname + '/views');

?? props.static
	app.use(express.static(__dirname + '/public'));

?? props.bodyparser
	app.use(bodyParser.urlencoded({extended: false}));

?? props.mvc
	app.get('/', indexController.index);
::
	app.get('/', function(req, res) {
		res.render('index');
	});

var server = app.listen(<%= 3000 + Math.floor(Math.random() * 7000) %>, function() {
	console.log('Express server listening on port ' + server.address().port);
});
