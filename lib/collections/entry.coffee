@Entries = new Mongo.Collection 'entries'

schema = new SimpleSchema
	title:
		type: String
		max: 30

	content:
		type: String

	createdAt:
		type: Date
		autoValue: -> new Date() unless not @isInsert

	userId:
		type: String

Entries.attachSchema(schema)

Entries.helpers
	createdAtDisplay: ->
		moment(@createdAt).format('dddd, MMMM Do YYYY, h:mm:ss a')
