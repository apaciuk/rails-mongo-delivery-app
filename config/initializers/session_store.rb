# frozen_string_literal: true

Rails.application.config.session_store :mongoid_store, key: '_rails_session'
MongoSessionStore.collection_name = 'user_sessions'
