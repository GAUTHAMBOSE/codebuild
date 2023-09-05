


# # for i in $(git diff --name-only HEAD HEAD~1); do
# for  i in kk bose gg; do
#     if [[ $i == *"kk"* ]]; then
#         echo "kk.txt file changes"
#         ws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "kkk.txt folder changes"
#         echo "SNS notification sent to email"
#     elif [[ $i == *"bose.txt"* ]]; then
#         echo "bose.txt has changed"
#         aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "bose.txt has changed"
#         echo "SNS notification sent to email"

#     fi
# done


#!/bin/bash

for i in kk bose gg; do
    if [[ "$i" == *"kk"* ]]; then
        echo "kk.txt file changes"
        # aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "kkk.txt folder changes"
        echo "SNS notification sent to email"
    fi
    if [[ "$i" == *"bose"* ]]; then
        echo "bose.txt has changed"
        #aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "bose.txt has changed"
        echo "SNS notification sent to email"
    fi
done


