echo $(pwd)
ls -l
ls 
echo "$(git branch)"
echo "$(git status)"
HEAD_COMMIT=$(git rev-parse HEAD)
PARENT_COMMIT=$(git rev-parse HEAD~1)
git diff --name-only $PARENT_COMMIT $HEAD_COMMIT > changed_files.txt || touch changed_files.txt
cat changed_files.txt

echo $(git diff)

      
for i in $(cat changed_files.txt) ; do
    echo $i
    if [[ "$i" == *"kk.txt"* ]]; then
        echo "kk.txt file changes"
       # aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "kkk.txt folder changes"
        echo "SNS notification sent to email"
    fi
    if [[ "$i" == *"bose.txt"* ]]; then
        echo "bose.txt has changed"
        #aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "bose.txt has changed"
        echo "SNS notification sent to email"
    fi                                              
done

##############################
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


# #!/bin/bash

# for i in kk bose gg; do
#     if [[ "$i" == *"kk"* ]]; then
#         echo "kk.txt file changes"
#         # aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "kkk.txt folder changes"
#         echo "SNS notification sent to email"
#     fi
#     if [[ "$i" == *"bose"* ]]; then
#         echo "bose.txt has changed"
#         #aws sns publish --topic-arn arn:aws:sns:us-east-1:824738494196:temp --message "bose.txt has changed"
#         echo "SNS notification sent to email"
#     fi
# done


