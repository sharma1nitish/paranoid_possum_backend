module V1
  class PostsEndpoint < BaseEndpoint
    resource :posts do
      desc 'Get posts.'
      get '/' do
        Post.order('title')
      end

      desc 'Get post.'
      params do
        requires :id, type: Integer
      end
      get '/' do
        Post.find(params[:id])
      end
    end
  end
end
