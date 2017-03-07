module UsersHelper
	# Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image = gravatar_url
    unless user.avatar.nil?
    	image = user.avatar
    end
    image_tag(image)
    #image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  
end
