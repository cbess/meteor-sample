# published collections send the results to the client, which
# they can then be used in the templates

Meteor.publish 'entries', ->
	# send all entries to client
	Entries.find {}

Meteor.publish 'usernames', ->
	# send the usernames to the client
	Meteor.users.find {},
		fields:
			username: 1
