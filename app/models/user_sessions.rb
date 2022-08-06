# frozen_string_literal: true

class UserSessions
  include Mongoid::Document
  field :data
  field :created_at, 	type: DateTime
  field :updated_at, 	type: DateTime
  # create index to clean out the collection
  index({ updated_at: 1 }, { expire_after_seconds: 1.day })
end
