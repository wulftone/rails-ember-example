class CarSerializer < ActiveModel::Serializer
  attributes :id, :engine, :year, :model_name, :color

  def attributes
    hash = super
    hash[:errors] = object.errors.messages unless object.errors.blank?
    hash
  end

end
