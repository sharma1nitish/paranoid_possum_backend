module V1
  class PostsEndpoint < BaseEndpoint
    resource :posts do
      desc 'Get posts.'
      get '/' do
        Post.order('title')
      end
    end
  end
end
