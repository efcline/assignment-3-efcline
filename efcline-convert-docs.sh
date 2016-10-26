#!/bin/bash
#Various variables defined:

#Greet the user
read -p "Hello, there! What is your name?" NAME
echo "Hello," $NAME 

# Declare input argument as a variable; establish conversion options
echo "This is a script that helps convert files from markdown (.md) to .html, .docx, .odt, and .pdf"
echo "Which file would you like to convert?" 
read FILE
echo "Ok! Let's convert $FILE" 

# Convert markdown to HTML
pandoc -S -o $FILE.html $FILE
# Convert markdown to DOCX, ODT
pandoc -S -o $FILE.docx $FILE && pandoc -S -o $FILE.odt $FILE
echo "Here are your new files!"
ls 

# Convert markdown to PDF
echo "We have changed our $FILE to three different formats. PDF is a little more tricky, but with any luck..."
pandoc -S -toc -o $FILE.pdf $FILE.html
echo "Successfully, converted $FILE to HTML, DOCX, ODT, PDF. Congratulations! Here are your new files"
ls -lah

echo "Returning to home directory in 3, 2, 1..."