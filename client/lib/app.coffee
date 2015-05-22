# When you subscribe to a record set, it tells the server to
# send records to the client.
Meteor.subscribe 'entries'
Meteor.subscribe 'usernames'

# counter starts at 0
Session.setDefault 'counter', 0

Template.home.events
	'click button': ->
		# increment the counter when button is clicked
		Session.set('counter', Session.get('counter') + 1);

Template.home.helpers
	counter: -> Session.get 'counter'
	entries: -> Entries.find({}) # all user entries
	username: ->
		# get the username for the entry
		user = Meteor.users.findOne({_id: this.userId})
		if user?
			return user.username
		else
			return this.createdAtDisplay

## Private

Template.private.events
	'submit form': ->
		$entry = $('#entry-content')
		Meteor.call 'addEntry', $entry.val(), ->
			console.log 'entry added'
			# clear text area
			$entry.val('')
		return false

Template.private.helpers
	myEntries: ->
		Entries.find # only entries for current user
			userId: Meteor.userId()
