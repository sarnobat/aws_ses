# aws_simple_email_service

```
+--------------+  send email   +-------------+  MX record   +---------+  Receipt Rule : Action   +---------+  subscription   +--------------+
| Email client | ------------> | Godaddy DNS | -----------> | AWS SES | -----------------------> | AWS SNS | --------------> | Linux server |
+--------------+               +-------------+              +---------+                          +---------+                 +--------------+
```