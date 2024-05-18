all:
	mkdir -p release
	cc main.c glad_gl.c -I inc -Ofast -lglfw -lasound -pthread -lm -o release/TempleDriver
	strip --strip-unneeded release/TempleDriver
	upx --lzma --best release/TempleDriver

test:
	cc main.c glad_gl.c -I inc -Ofast -lglfw -lasound -pthread -lm -o /tmp/TempleDriver_test
	/tmp/TempleDriver_test
	rm /tmp/TempleDriver_test

clean:
	rm -f release/TempleDriver
