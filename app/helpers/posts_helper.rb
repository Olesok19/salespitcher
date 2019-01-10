module PostsHelper
  def formatted_date(post)
    post.created_at.strftime("%d/%m/%Y %H:%M")
  end
end
