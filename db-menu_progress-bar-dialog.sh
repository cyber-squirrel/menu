#!/bin/bash
# pcp.sh: A shell script to copy /bin/* and /etc/* files
#         Display a progress bar while copying files.
# * Based upon Greg's (GreyCat's) GPLd wiki example. *
# --------------------------------------------------------
# Create an array of all files in /etc and /bin directory
DIRS=(/bin/* /etc/*)

# Destination directory
DEST="/tmp/test.$$"

# Create $DEST if does not exits
[ ! -d $DEST ] && mkdir -p $DEST

#
# Show a progress bar
# ---------------------------------
# Redirect dialog commands input using substitution
#
dialog --title "Copy file" --gauge "Copying file..." 10 75 < <(
    # Get total number of files in array
    n=${#DIRS[*]};
    
    # set counter - it will increase every-time a file is copied to $DEST
    i=0
    
    #
    # Start the for loop
    #
    # read each file from $DIRS array
    # $f has filename
    for f in "${DIRS[@]}"
    do
        # calculate progress
        PCT=$(( 100*(++i)/n ))
        
        # update dialog box
cat <<EOF
XXX
$PCT
Copying file "$f"...
XXX
EOF
        # copy file $f to $DEST
        /bin/cp "$f" ${DEST} &>/dev/null
    done
)

# just delete $DEST directory
/bin/rm -rf $DEST