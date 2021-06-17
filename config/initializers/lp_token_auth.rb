LpTokenAuth.config do |config|

  # The secret used when encrypting the JWT
  #
  config.secret = 'cd6ee4d6472c9533d17b0330167645c6950fe6e3a3d998aafc2e4a2b906a9570960bc76b306a4b04498791430ef27af84022c0716f086bc9cf693c59f1db078d'

  # The number of hours the token is active
  # default: 7 * 24
  #
  config.expires = 7 * 24

  # The encryption algorithm to use
  # default: HS512
  #
  config.algorithm = 'HS512'

  # Where to include the token in the response, must be an array, options are
  # :cookie, :header
  # default: [:cookie]
  #
  config.token_transport = [:cookie]
end
