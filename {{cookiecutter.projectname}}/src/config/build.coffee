base = require './base'
_ = require 'lodash'

module.exports = _.merge base,
	output: "./build"
	locals: _.merge base.locals,
		mandril:
			apikey: '{{cookiecutter.mandrill_apikey}}'
			endpoint: 'https://mandrillapp.com/api/1.0/messages/send.json'

		analytics:
			google:
				code: '{{ cookiecutter.googleanalytics_key }}'
				domain: '{{ cookiecutter.googleanalytics_domain }}'