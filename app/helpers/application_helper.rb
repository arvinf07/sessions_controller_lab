module ApplicationHelper

  def links
    if session[:name]
      form_tag ({controller: 'sessions', action: 'destroy', method: 'post'}) do 
        submit_tag 'logout'
      end
    else
      form_tag ({controller: 'sessions', action: 'create', method: 'post'}) do
        submit_tag 'login'
      end
    end
  end  


end
