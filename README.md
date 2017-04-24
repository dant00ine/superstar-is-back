# README

Sample request for login route:

``
    curl --data "session[email]=email@gmail.com&session[password]=password" -H 'Accept: application/vnd.superstar-is-back.v1' \ api.superstar-is-back.dev/sessions
``

Sample request for protected route (**note**: there are two headers supplied):

``
    curl -H 'Accept: application/vnd.superstar-is-back.v1' -H 'Authorization: cszZPNq_LyeegxZFECWk' \ api.superstar-is-back.dev/users/1
``
