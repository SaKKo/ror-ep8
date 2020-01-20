# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  first_name :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_status  (status)
#

class User < ApplicationRecord
  include AASM
  aasm column: :status do
    state :borned, initial: true
    state :old
    state :hurted
    state :died

    event :live do
      transitions from: :borned, to: :old
    end
    event :hurt do
      transitions from: :old, to: :hurted
    end
    event :kill do
      transitions from: :hurted, to: :died
    end
    event :heal do
      transitions from: :hurted, to: :old, after: :thank_you_doctor
    end
    event :reborn do
      transitions from: :died, to: :borned
    end
  end
  def thank_you_doctor
    Rails.logger.debug "Thank you so much!!!!"
  end
end
