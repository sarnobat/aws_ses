# aws_ses

```
+--------------+  send email   +-------------+  MX record   +---------+  Receipt Rule : Action   +---------+  subscription   +--------------+
| Email client | ------------> | Godaddy DNS | -----------> | AWS SES | -----------------------> | AWS SNS | --------------> | Linux server |
+--------------+               +-------------+              +---------+                          +---------+                 +--------------+
```