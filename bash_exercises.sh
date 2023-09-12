# Create a Bash script that takes a text file as an argument and counts the number of words in the file.
#Display the word count at the end.

function textfile() {
    # Get the name of the Bash script file
    local file=$1
    first_char="${file:0:1}"
    wc -w $file | cut -d "$first_char" -f1; echo "words"
}

echo -n "Please input a file name: "
read -r userinput
textfile $userinput

#Write a script that reads a CSV file and displays its contents in a formatted table.
#Make sure the script handles different delimiters and optional headers in the CSV file.