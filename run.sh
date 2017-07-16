
# To get the email file, execute:
cat ~/github/aws_ses_subscriber/lastMessage.txt.json | jq '.Message | fromjson' | jq '.content '   | jq -r '.' | tee /Unsorted/trash/test.eml

# To parse the email file, use formail
cat /Unsorted/trash/test.eml | formail -x Subject
