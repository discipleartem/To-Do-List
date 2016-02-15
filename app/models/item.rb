class Item < ActiveRecord::Base
  belongs_to :user

  #Метод для недопущения пустой записи с метода completed в items_controller
  def completed?
    !completed_at.blank?
  end
end
