# api_gateway-data_receiver

This module generates a rest-api for invoking Lambda functions through API Gateway and passing data to Lambda in the request body.

## Module description
Generates a default API for reciving data using POST method, and connect it to lambda for handeling. The API generates an API_KEY required for autorization, and activates logging to CloudWatch for each invokation.

## Requires
The following input variables are required:
- project_name
- api_name
- resource_tags
- lambda_api_function_arn
    - the arn of the lamda function that hadles data included in the body.


## Usage

The API is invoked using:
- {invoke_url}/{stage}, where:
    - invoke_url/stage : is a url looking like this `https://{api_id}.execute-api.eu-west-1.amazonaws.com/{api_name}/{stage}`

- Authorization is required by sending an api key in the header:
    - x-api-key : key_value
        - the `key_value` is generated by API Gateway on API creation and can be found in the console, under API Gateway - API Keys

- The data to send is passed in the body. 

Below is an example of how uploading a file to S3 using python code:

```py
import requests
import json

url = "https://{api_id}.execute-api.eu-west-1.amazonaws.com/{api_name}/{stage}"

payload = json.dumps({
  "fraksjon_rute": "Papir"
})
headers = {
  'x-api-key': '<KEY>',
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)
```

