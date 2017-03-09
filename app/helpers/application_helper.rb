module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "StudySpace"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def avatar_exists?(user)
  	if user.avatar.present?
    	image_tag user.avatar.url
  	else
    	image_tag "/images/default-user.png"
	end
  end
end