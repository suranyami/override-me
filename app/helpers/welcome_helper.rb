module WelcomeHelper
  def new_page(url)
    It.link(url, target: '_blank')
  end
end
