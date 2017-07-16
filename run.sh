# Listening for network traffic
nc -k -l 4468 | tee ~/github/aws_ses_subscriber/lastMessage.txt | tee -a ~/github/aws_ses_subscriber/log.txt |  perl -pe 's{\n}{}g' | perl -pe 's{POST.*Accept-Encoding: gzip,deflate}{}g' | jq -r '.["Subject"] + " :: " +  .["Timestamp"]' | tee -a ~/github/aws_ses_subscriber/test.txt 

# To get the email file, execute:
cat ~/github/aws_ses_subscriber/lastMessage.txt.json | jq '.Message | fromjson' | jq '.content '   | jq -r '.' | tee /Unsorted/trash/test.eml

# To parse the email file, use formail
cat /Unsorted/trash/test.eml | formail -x Subject
