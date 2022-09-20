class AddCustomerReferenceToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :customer
  end
end
