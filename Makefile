CFLAGS  = -Wall -Wextra -g
LDFLAGS = -g
INCL = ourlibrary.h

LIBRARY_TARGET = ourlibrary.so
LIBRARY_SRC = ourlibrary.c
LIBRARY_OBJ = $(LIBRARY_SRC:.c=.o)

TESTS_TARGET = test_runner
TESTS_SRC = tests.c
TESTS_OBJ = $(TESTS_SRC:.c=.o)
LDLIBS_TESTS = -lcmocka


.PHONY: all
all : $(LIBRARY_TARGET)

$(TESTS_TARGET): $(LIBRARY_OBJ) $(TESTS_OBJ)
	$(LINK.o) $^ $(LDLIBS) $(LDLIBS_TESTS) -o $@

$(LIBRARY_TARGET): $(LIBRARY_OBJ)
	$(CC) $(LDFLAGS) $(LIBRARY_OBJ) -shared -o $@

%.o: %.c $(INCL)
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: tests
tests : $(TESTS_TARGET)
	./$(TESTS_TARGET)

.PHONY: clean
clean:
	rm -f $(LIBRARY_TARGET) $(TESTS_TARGET) *.o
