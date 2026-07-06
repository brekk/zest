BUILD_DIR := ./build
EXEC := zest

$(BUILD_DIR)/$(EXEC):
	mkdir -p $(dir $@)
	echo "compiling! - 🍋"
	madlib compile -i src/Main.mad -t llvm -o $@
	echo "built! - 🍋"

version.lock:
	madlib install

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
