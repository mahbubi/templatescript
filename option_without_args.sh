#!/bin/bash
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Selamat Datang, ini adalah program pemanggilan site."
   echo
   echo "Syntax: scriptTemplate [-h|-s|-j]"
   echo "options:"
   echo "-h     Print this Help."
   echo "-a     Site A."
   echo "-b     Site B."
   echo
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":hab" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     a) # site A
         echo "option A"
         exit;;
     b) # site B
         echo "option B"
         exit;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done
echo "invalid command, use this opstion : [-h|-a|-b]"
