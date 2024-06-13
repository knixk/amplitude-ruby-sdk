require 'amplitude-experiment'

# (1) Initialize the experiment client
experiment = AmplitudeExperiment.initialize_remote('<DEPLOYMENT_KEY>', AmplitudeExperiment::RemoteEvaluationConfig.new)

# (2) Fetch variants for a user
user = AmplitudeExperiment::User.new(
  user_id: 'user@company.com',
  device_id: 'abcdefg',
  user_properties: {
    'premium' => true
  }
)   

variants = experiment.fetch(user)

# (3) Access a flag's variant
variant = variants['YOUR-FLAG-KEY']
unless variant.nil?
    if variant.value == 'on'
        # Flag is on
    else
        # Flag is off
    end
end
