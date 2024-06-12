# Configure your Amplitude API key
AmplitudeAPI.config.api_key = "abcdef123456"

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
AmplitudeAPI.track(event)
