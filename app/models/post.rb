class UrlValidator < ActiveModel::Validator
  def validate(record)
    unless record.url.starts_with? 'http'
      record.errors.add :url, "Please input a URL to make a post"
    end
  end
end

class Post < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :user
  validates :url, presence: true
  validates :title, presence: true
  validates_with UrlValidator
end


