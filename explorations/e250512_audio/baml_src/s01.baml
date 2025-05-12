generator target {
    output_type "python/pydantic"
    output_dir "."
    version "0.87.2"
    default_client_mode async
}
// client<llm> LocalAudioModel {
//   provider openai-generic
//   options {
//     model "qwen-audio-7b"
//     base_url "http://127.0.0.1:30100/v1"
//     default_role "user"
//   }
// }
client<llm> GPT4o {
  provider openai
  options {
    model "gpt-4o"
    // base_url env.OPENAI_API_BASE
    api_key env.OPENAI_API_KEY
  }
}
function MyFunction(my_audio: audio) -> string {
  client GPT4o
  prompt #"
    what do you hear?
    {{ _.role("user") }}
    {{ my_audio }}
  "#
}
test my_test {
  functions [MyFunction]
  args {
    my_audio { url "https://actions.google.com/sounds/v1/emergency/beeper_emergency_call.ogg"}
  }
}
