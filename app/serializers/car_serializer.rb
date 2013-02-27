class CarSerializer < ActiveModel::Serializer
  attributes :id, :engine, :year, :model_name, :color

  def attributes
    hash = super
    hash[:validation_errors] = object.errors.messages.to_json unless object.errors.blank?
    hash
  end

end
