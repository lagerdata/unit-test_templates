#
#
########################################
# This connects to a GDB Server listening
# for commands on localhost at tcp port 2331
target remote localhost:3333
########################################


########################################

########################################





########################################
# Reset the chip to get to a known state.
monitor reset halt



########################################


# Load the program executable called "image.elf"
file ../_build/cc3220s/unity-cc3220s


set breakpoint pending on

load
break main
