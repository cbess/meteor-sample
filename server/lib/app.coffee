# published collections send the results to the client, which
# they can then be used in the templates

Meteor.publish 'entries', ->
	# send all entries to client
	[
		Entries.find({})
		,
		usernamesCursor()
	]

Meteor.publish 'usernames', ->
	# send all the usernames to the client
	# because only the current user's info is available by default
	usernamesCursor()

usernamesCursor = ->
	Meteor.users.find {},
		fields:
			username: 1
