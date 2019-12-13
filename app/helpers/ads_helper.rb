module AdsHelper
  def displayAdsImage(ad)
    ad.image.file.nil? ? "/public/images/Poster_not_available.png" : ad.image.url.to_s
  end
  def adOwner?(user)
    !current_user.nil? && current_user.id == user.id
  end
end
