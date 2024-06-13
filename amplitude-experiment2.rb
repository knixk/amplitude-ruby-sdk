
"""
# for remote evaluation
require 'amplitude-experiment'

# (1) Get your deployment's API key
apiKey = 'YOUR-API-KEY'

# (2) Initialize the experiment client
experiment = AmplitudeExperiment.initialize_remote(api_key)

# (3) Fetch variants for a user
user = AmplitudeExperiment::User.new(user_id: 'user@company.com', device_id: 'abcezas123', user_properties: {'premium' => true})

# (4) Lookup a flag's variant
# 
# To fetch asynchronous
experiment.fetch_async(user) do |_, variants|
  variant = variants['YOUR-FLAG-KEY']
  unless variant.nil?
    if variant.value == 'on'
      # Flag is on
    else
      # Flag is off
    end
  end
end

# To fetch synchronous
variants = experiment.fetch(user)
variant = variants['YOUR-FLAG-KEY']
unless variant.nil?
  if variant.value == 'on'
    # Flag is on
  else
    # Flag is off
  end
end
"""

"""
# for local evaluation of variants
require 'amplitude-experiment'

# (1) Get your deployment's API key
apiKey = 'YOUR-API-KEY'

# (2) Initialize the experiment client
experiment = AmplitudeExperiment.initialize_local(api_key)

# (3) Start the local evaluation client
experiment.start

# (4) Evaluate a user
user = AmplitudeExperiment::User.new(user_id: 'user@company.com', device_id: 'abcezas123', user_properties: {'premium' => true})
variants = experiment.evaluate(user)
variant = variants['YOUR-FLAG-KEY']
unless variant.nil?
  if variant.value == 'on'
    # Flag is on
  else
    # Flag is off
  end
end
"""