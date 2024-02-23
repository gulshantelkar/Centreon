-- Import the required library
local http = require("socket.http")

-- Define the URL to test
local urlToTest = "https://592d-49-205-34-61.ngrok-free.app"

-- Set a timeout for the request (in seconds)
local timeout = 5

-- Function to perform the HTTP request and check the response
function testHttpRequest(url)
    local _, code, _, _ = http.request(url)
    return code == 200
end

-- Perform the test
local isRequestSuccessful = testHttpRequest(urlToTest)

-- Output the result
if isRequestSuccessful then
    print("HTTP Request to " .. urlToTest .. " is successful.")
else
    print("HTTP Request to " .. urlToTest .. " failed.")
end