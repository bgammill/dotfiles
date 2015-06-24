
#!/bin/sh
urxvtc "$@"
if [ $? -eq 2 ]; then
   urxvtd -q -o -f
   urxvtc "$@"
fi
#  This is a script to  open up a urxvt daemon if and only if we dont' have one already.  
# This way, we can utilize the slightly-faster server-client model. 