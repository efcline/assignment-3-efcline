#!/bin/bash
#Various variables defined:

#Greet the user
read -p "Hello, there! What is your name?" NAME
echo "Hello," $NAME 

# Declare input argument as a variable; establish conversion options
echo "This is a script that helps convert files from markdown (.md) to .html, .docx, .odt, and .pdf"
echo "Which file would you like to convert?" 
read FILE
echo "Ok, $NAME! Let's convert $FILE" 

# Convert markdown to HTML
pandoc -o $FILE.html $FILE
echo "Look! We converted a file!"
ls

# Convert markdown to DOCX, ODT
read -p "DOCX and ODT are two types of files that may be opened in word processors. Let's try to convert to both! Press enter to continue."
pandoc -o $FILE.docx $FILE && pandoc -o $FILE.odt $FILE
echo "Here are your new files!"
ls 

# Convert markdown to PDF
echo "We have changed our $FILE to three different formats. PDF is a little more tricky, since it is better to start with an html file."
read -p "Should we attempt one final file conversion? Press any key to continue!"
pandoc -o $FILE.pdf $FILE.html
echo "Successfully converted $FILE to HTML, DOCX, ODT, PDF. Congratulations, $NAME! Here are your new files"
ls -la

echo "Returning to home directory in 3, 2, 1..."