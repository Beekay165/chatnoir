module ApplicationHelper
    include FontAwesome::Rails::IconHelper
    
    # helper to set the page title within the page view
	 def title(page_title)
        content_for(:title) { page_title }
     end

end
