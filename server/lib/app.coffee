Meteor.publish 'entries', ->
	Entries.find {}
