#!/bin/bash


if [ -n "$TERMUX_VERSION" ]; then
    cmd="pkg"
else
    cmd="sudo apt"
fi


check_command() {
    command -v $1 >/dev/null 2>&1
}

# Check Python
if check_command "python"; then
    :
else
    $cmd install python
fi

# check clang
if check_command "clang"; then
    :
else
    $cmd install clang
fi

# check make
if check_command "make"; then
    :
else
    $cmd install make
fi

if check_command "r2"; then
     :
else
     $cmd install radare2
fi

make
cp zpatcher ~/../usr/bin/
chmod +x ~/../usr/bin/zpatcher