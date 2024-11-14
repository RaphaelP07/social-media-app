module Site
  class HomeController < SiteController
    skip_before_action :authenticate_user!
    def index
      @active_posts = Post.where(active: true, featured: false).where("publish_date <= ?", Date.today)
      @featured_posts = Post.where(active: true, featured: true).where("publish_date <= ?", Date.today).limit(5)
    end
  end
end
