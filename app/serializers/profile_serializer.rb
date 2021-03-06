class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :picture, :name, :bio, :zipcode, :phone,
  :socialMedia

  has_many :commutes

  def socialMedia
    { twitter: object.twitter ,
      linkedin: object.linkedin,
      facebook: object.facebook,
      instagram: object.instagram,
      goodreads: object.goodreads,
      skype: object.skype
    }
  end
end
