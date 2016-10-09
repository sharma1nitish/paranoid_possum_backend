module V1
  class BaseEndpoint < Grape::API
    def self.inherited(subclass)
      super
      subclass.instance_eval do
        include Grape::Kaminari

        def self.pagination_params(options = {})
          options.reverse_merge!(
            per_page: 10,
            max_per_page: 50
          )
          paginate(options)
        end
      end
    end
  end
end
