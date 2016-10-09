module V1
  class Root < Grape::API
    version 'v1', using: :path

    mount V1::PostsEndpoint
  end
end
