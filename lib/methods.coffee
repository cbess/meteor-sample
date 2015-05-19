Meteor.methods
	addEntry: (text) ->
		if !Meteor.userId()
			return new Meteor.Error 'unauthorized'

		# insert the entry
		Entries.insert
			title: 'n/a'
			content: text
			userId: Meteor.userId()

	userEmail: (userId) ->
		user = Meteor.users.findOne({_id: userId})
		if user
			return user.emails[0].address
		else
			return null
