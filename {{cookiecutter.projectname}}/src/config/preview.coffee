base = require './base'
os = require 'os'
_ = require 'lodash'

hostname = os.hostname()

module.exports = _.merge base, 
	locals: _.merge base.locals, 
		site:
			url: "http://#{hostname}:8000"
		analytics:
			google:
				code: 'UA-TEST-0'
				domain: hostname

	ignore: [
		"**/.*.tmp"
	]
