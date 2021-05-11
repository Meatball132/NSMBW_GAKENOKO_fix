CW_PATH=../cw
CPPFILES=gakenoko

CC=$CW_PATH/mwcceppc.exe
CFLAGS="-I- -i ../k_stdlib -Cpp_exceptions off -enum int -Os -use_lmw_stmw on -fp hard -rostr -sdata 0 -sdata2 0"

for i in $CPPFILES
do
	echo Compiling $i.cpp...
	$CC $CFLAGS -c -o $i.o $i.cpp
done

echo Linking...

../Kamek/bin/Debug/Kamek.exe gakenoko.o -dynamic -externals=externals-nsmbw-eu-v1.txt -versions=versions-nsmbw.txt -output-kamek=engine.\$KV\$.bin

