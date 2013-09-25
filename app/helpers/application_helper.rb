module ApplicationHelper
  
  def login_stuff
    if current_audiophile
      link_to(current_audiophile.display_name, current_audiophile, :class => 'login') +
      link_to('log out', destroy_audiophile_session_path, :method => :delete, :class => 'login')
    else
      link_to('sign up', new_audiophile_path, :class => 'login') + 
      link_to('sign in', new_audiophile_session_path, :class => 'login')
    end
  end
end
