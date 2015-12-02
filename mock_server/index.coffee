express = require('express')
fs = require 'fs'
app = express()

module.exports = (portnum) ->
	app.get '/' , (req, res) ->
		response = {
			body :  {
				capacityData:[
					{name: "server1.mail.com", cpu:63 , ram: 2341},
					{name: "server2.mail.com", cpu:32 , ram: 409},
					{name: "server1.files.com", cpu:1 , ram: 200},
					{name: "server2.files.com", cpu:12 , ram: 500},
					{name: "server3.files.com", cpu:90 , ram: 100}
					],
				httpResponseCode: 200
			}
		}
		res.send (response)

	server = app.listen(portnum, ->
		host = server.address().address
		port = server.address().port
		console.log 'mock service listening at http://%s:%s', host, port
		return
	)
