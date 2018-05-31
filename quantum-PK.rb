require 'securerandom'

def create_public_key private_key, key_size, rand_size, sm_sz
  pub_key = key_size.times.map{(private_key * SecureRandom.random_number(rand_size) + small_even_rand(sm_sz))}
  return pub_key
end

def small_even_rand sm_sz
  small_even = SecureRandom.random_number(sm_sz)
  if small_even.odd?
    small_even += 1
  end
  return small_even
end

#send 0 or 1 as message
def encrypt_message pub_key, message
  p_key = pub_key.shuffle[0 .. pub_key.length / 2] # randomly select half the values
  sum = 0
  p_key.each{ |i| sum += i}
  return sum + message
end

def decrypt_message private_key, message
  if(message/private_key).even?
    return 0
  else
    return 1
  end
end

private_key = 9 # and odd number
key_size = 20 # some practical value
sm_sz = 100 # size of small even number
rand_size = 500 # some practical value
message = 1 # 0, 1

pub_key = create_public_key private_key, key_size, rand_size, sm_sz
cypher_text = encrypt_message pub_key, message
puts decrypt_message private_key, cypher_text
