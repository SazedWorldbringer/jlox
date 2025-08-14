JAVAC = javac
JAVA = java
SRC_DIR = .
BIN_DIR = out
PACKAGE = com.craftinginterpreters.lox
MAIN_CLASS = $(PACKAGE).Lox

# find all java files
SOURCES := $(shell find $(SRC_DIR) -name "*.java")

# targets
.PHONY: all run clean

all:
	@mkdir -p $(BIN_DIR)
	@echo "Compiling all Java sources..."
	@$(JAVAC) -d $(BIN_DIR) $(SOURCES)

run: all
	@echo "Running $(MAIN_CLASS)"
	@$(JAVA) -cp $(BIN_DIR) $(MAIN_CLASS)

clean:
	@echo "Cleaning..."
	@rm -rf $(BIN_DIR)
