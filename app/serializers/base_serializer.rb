class BaseSerializer < ActiveModel::Serializer
  delegate :current_user, to: :scope

  attributes :id, :created_at, :updated_at
end
