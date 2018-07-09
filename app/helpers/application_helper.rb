module ApplicationHelper
  def avatar_url(model)
    model.avatar.url
  end
end
