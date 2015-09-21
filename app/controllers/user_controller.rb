class UserController < ApplicationController
  load_and_authorize_resource
end


class UsersController < Devise::UsersController

  after_filter :find_all_blog_posts, only: [:create]

  protected
  def find_all_blog_posts
    p '---------------------------------------'
  end
end