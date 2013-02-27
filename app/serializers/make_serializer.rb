class MakeSerializer < ActiveModel::Serializer
  attributes :id, :website
  has_many :cars, embed: :ids

  def attributes
    hash = super
    hash[:errors] = object.errors.messages unless object.errors.blank?
    hash
  end

end
