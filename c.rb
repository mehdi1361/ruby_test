# coding: utf-8
require "uri"
require "net/http"

url = URI("https://api.irbroker.com/api/v1/user/register")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["X-CLIENT-TOKEN"] = "b230c9a5-b943-4011-9390-9903be045adc"
request["Content-Type"] = "application/x-www-form-urlencoded"
request["Cookie"] = "cookiesession1=678B290CMNOPQRSTUVABCDEFGHIJ87EF; cookiesession1=678B290CIJKMNOPRSTUVWXYZABCD1EBD"
form_data = [['json', '{"dsCode":"11338","username":"pyfuserqwqwqqqq","password":"EVy6NprGZv111","isLegal":"False","isIranian":"1","foreignCode":"0","firstName":"میرمهدی","lastName":"موسویمغانجوق","birthDate":"1367/01/01","birthCertNumber":"570","issuingCity":"ابهر","birthCertId":"637267","fatherName":"میربهرام","nationalCode":"0020102917", "phone":"34534287","mobileNumber":"9212799520","address":"ایران,البرز,شاهینویلابنیاد,22بهمنجنوبیکوچهنوریمقدم,29","postalCode":"3149779451","email":"","fax":"","customerStatusId":"","accountNumber":"0300951758004","baTypeId":101,"shabaNumber":"IR910620000000300951758004","bankBranch":"2020","isPortfo":0, "bankId":45}']]
request.set_form form_data, 'multipart/form-data'
response = https.request(request)
puts response.read_body
