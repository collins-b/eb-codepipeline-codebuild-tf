
ACCOUNT_ID=""
ROLE_NAME=""
POLICY="{ \"Version\": \"2012-10-17\", \"Statement\": [ { \"Effect\": \"Allow\", \"Principal\": { \"AWS\": \"arn:aws:iam::${ACCOUNT_ID}:root\" }, \"Action\": \"sts:AssumeRole\" } ] }"

echo '{ "Version": "2012-10-17", "Statement": [ { "Effect": "Allow", "Action": "eks:Describe*", "Resource": "*" } ] }' > /tmp/iam-role-policy

aws iam create-role --role-name ${ROLE_NAME} --assume-role-policy-document "$POLICY" --output text --query 'Role.Arn'

aws iam put-role-policy --role-name ${ROLE_NAME} --policy-name eks-describe --policy-document file:///tmp/iam-role-policy

ROLE="    - rolearn: arn:aws:iam::${ACCOUNT_ID}:role/${ROLE_NAME}\n      username: build\n      groups:\n        - system:masters"

kubectl get -n kube-system configmap/aws-auth -o yaml | awk "/mapRoles: \|/{print;print \"$ROLE\";next}1" > /tmp/aws-auth-patch.yml

kubectl patch configmap/aws-auth -n kube-system --patch "$(cat /tmp/aws-auth-patch.yml)"

echo "Done..."