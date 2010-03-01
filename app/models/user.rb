require 'digest/sha2'

class User < ActiveRecord::Base
  has_many :submissions

  validates_length_of :username, :within => 1..40
  validates_length_of :password, :within => 6..40, :on => :create
  validates_presence_of :username, :email
  validates_presence_of :password, :password_confirmation, :on => :create
  validates_uniqueness_of :username, :email
  validates_confirmation_of :password, :unless =>
    lambda { |u| u.password.nil? or u.password.strip.empty? }
  validates_format_of :email, :with => RFC822::EmailAddress, :message => "Invalid email"

  attr_protected :id
  attr_accessor :password, :password_confirmation

  def self.authenticate(username, pass)
    u = User.find(:first, :conditions => { :username => username })
    u.id unless u.nil? or User.dohash(pass, u.getsalt) != u.gethash
  end

  def password=(newpass)
    return if newpass.nil? or newpass.strip.empty?
    @password = newpass  # save for validation above
    salt = getsalt || ActiveSupport::SecureRandom.base64(32)
    self.hashed_pass = User.dohash(newpass, salt) + salt
  end

  HASH_LENGTH = Digest::SHA256.new.hexdigest.length

  def gethash
    hashed_pass? ? hashed_pass[0...HASH_LENGTH] : nil
  end

  def getsalt
    hashed_pass? ? hashed_pass[HASH_LENGTH..-1] : nil
  end

  protected

  ROUNDS = 64

  def self.dohash(pass, salt)
    digest = Digest::SHA256.new
    digest << pass
    hash = nil
    ROUNDS.times do
      digest << salt
      hash = digest.hexdigest
      digest.reset
      digest << hash
    end
    hash
  end
end
