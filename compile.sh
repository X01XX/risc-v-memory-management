# Comiple and link files.

# Note: An .a file that does not produce a .o file, it may be empty, or just comments,  will stop compilation.

# Compile any new, or changed, source files in the current directory.
for source_file in `ls ./*.a`; do

    name="${source_file%.*}"
    # echo "source" `ls -al $source_file`
    if [ -e $name.o ]
    then
        # echo "object" `ls -al $name.o`
	if [ $source_file -nt $name.o ]
	then
            # echo "file " $source_file "is newer than " $name.o
            echo "compiling ${source_file} "
	    rm $name.o
	    ./rv $source_file &>>/dev/null
	    if [ ! -e $name.o ]; then
                cat $name.lst
                exit 1
            fi
	fi
    else
        # object file not found
        echo "compiling ${source_file} "
	./rv $source_file &>>/dev/null
	if [ ! -e $name.o ]; then
            cat $name.lst
            exit 1
        fi
    fi
done

# Link all object files in the current directory.
./rv *.o -o main.e

