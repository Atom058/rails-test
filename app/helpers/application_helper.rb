module ApplicationHelper

  #Returns the full title whenever a page fails to define its own
  def full_title(page_title = '')
    base_title = "TestApplication"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

end
