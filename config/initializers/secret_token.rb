# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Events::Application.config.secret_key_base = '2c3d7b47bc2c298cd8795e10fda5aca0df0a5a5ce06bc4928ef8085e7b4d37d58574383eed077ffeeeeb63bc2372bec365bc1d0b6873a2bec269e2bbee03c353'
