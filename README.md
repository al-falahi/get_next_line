# get_next_line

## 📌 Objective
Implement a function `get_next_line(int fd)` that reads and returns one line at a time from a file descriptor.

## ✅ Requirements
- Return one line per call (including `\n` if present).
- Works with any `BUFFER_SIZE` defined via `-D BUFFER_SIZE=xx`.
- Must use only: `read`, `malloc`, `free`.
- No use of: `lseek`, `global variables`, `libft`.

## 📁 Required Files
- `get_next_line.c` – main logic
- `get_next_line_utils.c` – helper functions
- `get_next_line.h` – function prototypes
- `main.c` (for testing)
- `Makefile` (with dynamic BUFFER_SIZE support)

## 🔧 How It Works
- Reads data into a static buffer (`stash`).
- Keeps appending from `read()` until a newline is found.
- Extracts the current line and saves the rest for the next call.
- Frees memory when finished.

## 🔨 How to Compile & Run

```
make BUFFER_SIZE=42 run
```

To test with different buffer sizes:
```
make BUFFER_SIZE=1 run
make BUFFER_SIZE=9999 run
make BUFFER_SIZE=10000000 run
```

## 🧪 Testing
Run on a file like `test.txt` containing multiple lines. Each call to `get_next_line()` should return one line until EOF.

## 📄 Example

```
Line 1\n
Line 2\n
Line 3
```

Calling `get_next_line(fd)` three times will return:
1. `"Line 1\n"`
2. `"Line 2\n"`
3. `"Line 3"`

## 📎 Notes
- Norminette-compliant.
- Handles memory safely.
- Works with any buffer size.

## 👨‍💻 Author
42 Project – Adapted and summarized for clear understanding.
