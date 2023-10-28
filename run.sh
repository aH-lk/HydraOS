T=$(date +"%T")
SavedIFS="$IFS"
IFS=":."
Time=($T)
Seconds=$((${Time[0]}*3600 + ${Time[1]}*60 + ${Time[2]}))
IFS="$SavedIFS"

echo $Seconds
make clean
make

T=$(date +"%T")
SavedIFS="$IFS"
IFS=":."
Time=($T)
Seconds2=$((${Time[0]}*3600 + ${Time[1]}*60 + ${Time[2]}))
IFS="$SavedIFS"
echo $Seconds

qemu-system-i386 -fda build/main_floppy.img
