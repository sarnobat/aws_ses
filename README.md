# aws_simple_email_service

```
+--------------+  send email   +-------------+  MX record   +---------+  Receipt Rule : Action   +---------+  subscription   +--------------+
| Email client | ------------> | Godaddy DNS | -----------> | AWS SES | -----------------------> | AWS SNS | --------------> | Linux server |
+--------------+               +-------------+              +---------+                          +---------+                 +--------------+
```

State of this project

The network part works fine.

The problem now is how to get just the JSON body. At the moment we're getting the HTTP headers plus the json body. Once we have just the json body, we have all the json parsing logic established.

Also, the HTTP response is coming twice. It looks like we'll have to write our own script to remove the 2nd occurrence.
