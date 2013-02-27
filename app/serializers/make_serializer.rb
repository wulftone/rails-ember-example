class MakeSerializer < ActiveModel::Serializer
  attributes :id, :website
  has_many :cars, embed: :ids

  def attributes
    hash = super
    hash[:validation_errors] = object.errors.messages.to_json unless object.errors.blank?
    hash
  end

end
