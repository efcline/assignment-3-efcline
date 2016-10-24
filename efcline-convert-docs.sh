#!/bin/bash
#Various variables defined:
ARGUMENT = $1

#Greet the user

read -p "Hello, there! What is your name?" NAME
echo "Hello," $NAME 

# Declare input argument as a variable; establish conversion options
echo "This is a script that helps convert files from markdown (.md) to .html, .docx, .odt, and .pdf"
echo "Which file would you like to convert?" 
read FILE
echo "Ok! Let's convert $FILE" 

# Convert markdown to HTML
echo "Let's convert $FILE to HTML. We can call it html-version-2"
pandoc -S -o html-version-2.html $FILE
echo "Here it is!"
ls 
echo "Continue?"
read INPUT

# Convert markdown to DOCX
echo "You answered $INPUT. Now let's convert to word processing files: DOCX and ODT. We will call them microsoft-readable.docx and open-office-readable.odt"
pandoc -S -o microsoft-readable.docx $FILE
# Convert markdown to ODT
pandoc -S -o open-office-readable.odt $FILE
ls

# Convert markdown to PDF
echo "We have changed our $FILE to three different formats. Should we try PDF too?"
read ANSWER
echo "You answered $ANSWER Let's convert to pdf and get our adobe-version.pdf"
pandoc -S -toc -o abode-version.pdf html-version.html

echo "Converted $FILE to HTML, DOCX, ODT, PDF. Congratulations! Here are your new files"
ls -lah

echo "Returning to home directory in 3, 2, 1..."
