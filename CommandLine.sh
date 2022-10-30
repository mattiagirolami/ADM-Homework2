
echo "This function returns the ID of the first ten users that got a post description longer than 100 characters."
echo "Make sure to execute this function in the same place of the file instagram_posts.csv"

awk -F'\t' '{if (length($8)>100) {(profile=$4); print(profile)}}' instagram_posts.csv | head -10 > profile_list.csv

echo "The users id found are: "
awk -F'\n' '{if ($1=="") print "User was not found!"; else print $1}' profile_list.csv