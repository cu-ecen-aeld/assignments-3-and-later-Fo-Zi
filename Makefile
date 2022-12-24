buildit:
	cd build && cmake .. && make 
clean:
	rm -r build
	mkdir build
test:
	./full-test.sh
