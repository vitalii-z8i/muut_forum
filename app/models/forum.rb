class Forum
  attr_accessor :timestamp, :message, :signature

  MUUT_KEY = '6E6KouiOz1'
  MUUT_SECRET = 'acP8AeMllKys7buGCpZ6PbfA'

  def initialize(user = {})
    # timestamp (in seconds). Improves security.
    @timestamp = Time.now.to_i
    # Message (base64 encoded string)
    @message = Base64.strict_encode64(user.to_json)
    # Signature (signed with private key)
    @signature = Digest::SHA1.hexdigest("#{MUUT_SECRET} #{message} #{timestamp}")
  end
end
