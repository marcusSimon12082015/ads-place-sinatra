module HomeHelper
  def displayLoginOutLink
    if logged_in?
      "<a href='/sessions/logout'>Log out</a>"
    else
      "<a href='/login'>Login</a>"
    end
  end
end
