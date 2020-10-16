module ApplicationHelper
	def gravatar_for(user)
		gravatar_id= Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url= "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url,alt: user.name,class: "gravatar")
	end
	
	def hidden_div_if(condition,attributes={},&block)
		if condition
			attributes['style'] ="display: none"
		end
		content_tag("div",attributes,&block)
	end
end