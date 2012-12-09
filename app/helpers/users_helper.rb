module UsersHelper
	def gravatar_for(user)																  # Returns the Gravatar (http://gravatar.com/) for the given user.
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.email, class: "gravatar")
	end
end