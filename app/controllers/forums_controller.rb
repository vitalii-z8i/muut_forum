class ForumsController < ApplicationController
  def index
  end

  def secure
    @forum = Forum.new
  end

  def authorized
    user = {
      user: {
        id: 'mike', # required
        displayname: 'Mike Davidson', # required
        email: 'super.mike@gmail.com',
        avatar: '//2.gravatar.com/avatar/767fc9c115a1b989744c755db47feb60',
        is_admin: true
      }
    }
    @forum = Forum.new(user)

    render template: 'forums/secure'
  end

  def commenting
    user = {
      user: {
        id: 'mike', # required
        displayname: 'Mike Davidson', # required
        email: 'super.mike@gmail.com',
        avatar: '//2.gravatar.com/avatar/767fc9c115a1b989744c755db47feb60',
        is_admin: false
      }
    }
    @forum = Forum.new(user)
  end

  def commenting2
    user = {
      user: {
        id: 'mike', # required
        displayname: 'Mike Davidson', # required
        email: 'super.mike@gmail.com',
        avatar: '//2.gravatar.com/avatar/767fc9c115a1b989744c755db47feb60',
        is_admin: false
      }
    }
    @forum = Forum.new(user)
    render template: 'forums/commenting'
  end
end
