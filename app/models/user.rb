class User < ApplicationRecord
  serialize :spotify_hash, Hash
end
