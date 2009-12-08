module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the new post page/i
      new_post_path
      
    when /the posts page/i
      posts_path
    when /the homepage/i
      root_path
    when /the sign up page/i
      new_user_path
    when /the sign in page/i
      new_session_path
    when /the password reset request page/i
      new_password_path
      
    when /the comments page/i
      new_post_comments_path

    # Add more page name => path mappings here

    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World(NavigationHelpers)
