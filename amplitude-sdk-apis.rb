# I believe this is the custom api Richy was talking about

require 'amplitude-api'

# Configure your Amplitude API key
AmplitudeAPI.config.api_key = "3039be907323ee474d06f29b807263f0"

event = AmplitudeAPI::Event.new({
  user_id: "12345",
  event_type: "clicked on home",
  time: Time.now,
  insert_id: 'f47ac10b-58cc-4372-a567-0e02b2c3d479',
  event_properties: {
    cause: "button",
    arbitrary: "properties"
  }
})

print(AmplitudeAPI)

AmplitudeAPI.track(event)

