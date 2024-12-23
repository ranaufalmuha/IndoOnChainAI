import Blob "mo:base/Blob";
import Cycles "mo:base/ExperimentalCycles";
import Text "mo:base/Text";
import IC "ic:aaaaa-aa";

actor {
  // Transform function (required for HTTP requests)
  public query func transform(
    raw : {
      response : IC.http_request_result;
      context : Blob;
    }
  ) : async IC.http_request_result {
    return raw.response;
  };

  // Test Gemini API
  public func generateResponse(prompt : Text) : async Text {
    // 1. Setup request
    let url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=" # "API_KEY";

    let request_headers = [{ name = "Content-Type"; value = "application/json" }];

    let request_body_json = "{\"contents\":[{\"parts\":[{\"text\":\"" # prompt # "\"}]}]}";
    let request_body = Text.encodeUtf8(request_body_json);

    let request : IC.http_request_args = {
      url = url;
      max_response_bytes = null;
      headers = request_headers;
      body = ?request_body;
      method = #post;
      transform = ?{
        function = transform;
        context = Blob.fromArray([]);
      };
    };

    // 2. Add cycles
    Cycles.add(230_850_258_000);

    // 3. Make request
    let response = await IC.http_request(request);

    // 4. Decode response
    switch (Text.decodeUtf8(response.body)) {
      case (null) { "Error: Could not decode response" };
      case (?text) { text };
    };
  };
};
