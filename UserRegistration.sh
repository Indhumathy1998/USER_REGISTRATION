#!/bin/bash -x

echo "Ensure all validations are in place during user entry"

#uc1 first name validation
read -p "enter firstname:" first_name
firstname_Pattern="^[A-Z][a-z]{2,}$"
if [[ $first_name =~ $firstname_Pattern ]]
then
	echo "valid"
else
	echo "invalid"
fi

#uc2 last name validation
read -p "enter lastname:" last_name
lastname_Pattern="^[A-Z][a-z]{2,}$"
if [[ $last_name =~ $lastname_Pattern ]]
then
        echo "valid"
else
        echo "invalid"
fi

#uc3 email validation
read -p "enter email:" email
email_Pattern="^[0-9a-zA-Z]+([_.+-][a-zA-Z0-9]+)?@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?"
if [[ $email =~ $email_Pattern ]]
then
        echo "valid"
else
        echo "invalid"
fi

#uc4 mobile number validation
