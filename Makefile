BIN := bin
SRC_DIR := src
LIB := lib
RAYLIB_SRC := raylib/src
SRCS := $(wildcard $(SRC_DIR)/*.c)
OBJS := $(patsubst $(SRC_DIR)/%.c,%.o,$(SRCS))

LFLAGS := -L./$(LIB)/ -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
IFLAGS := -I./include/
CFLAGS := -Wall -std=c99 -Wno-missing-braces
OPT := -O1 

.PHONY: all build_raylib clean_raylib clean

default: run

build: $(BIN)/app.x

$(BIN)/app.x: $(OBJS)
	mkdir -p $(BIN)
	gcc $^ $(OPT) $(CFLAGS) $(IFLAGS) $(LFLAGS) -o $@

%.o: $(SRC_DIR)/%.c
	gcc -c $(OPT) $(CFLAGS) $(IFLAGS) $< -o $@ 

build_raylib:	
		make -C $(RAYLIB_SRC) PLATFORM=PLATFORM_DESKTOP && \
	cp $(RAYLIB_SRC)/libraylib.a $(LIB)

clean_raylib:
	make -C $(RAYLIB_SRC) clean
	$(RM) $(LIB)/libraylib.a

run: build
	$(BIN)/app.x

clean:
	$(RM) -rf $(BIN) $(OBJS)