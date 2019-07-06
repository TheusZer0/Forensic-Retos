CC=clang
LIB=-lz -llzo2 -lucl -llz4

default: dumpifs fixdecifs uuu zzz exMifsLzo exMifsLz4

zzz:
	${CC} zzz.c -o zzz ${LIB}
uuu:
	${CC} uuu.c -o uuu ${LIB}
exMifsLzo:
	${CC} exMifsLzo.c -o  exMifsLzo ${LIB}
exMifsLz4:
	${CC} exMifsLz4.c -o  exMifsLz4 ${LIB}
fixdecfs: fixdecfs.c
	${CC} fixdecifs.c -o fixdecfs ${LIB}
dumpifs: dumpifs.c
	${CC} dumpifs.c -o dumpifs ${LIB}
clean:
	rm exMifsLzo
	rm exMifsLz4
	rm dumpifs
	rm uuu
	rm zzz
	rm fixdecifs
