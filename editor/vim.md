# Vim

Vim is a old editor, preferred by many. They might have their own reasons to like it and they 
might be still valid.

I'm not a power user of Vim nor I wanted to be. PHP storm suites me well but still, it is
my desire since long to use Vim editor so I'm learning Vim just for interest, not to become
power user.

## Moving the cursor

###Basic movement

- h - Left
- l - right
- k - up
- j - down

```
      ^
      k
 < h     l >
      j
      v
```

**Move within same line**

| Command    | Purpose                              |
|------------|--------------------------------------|
| w          | Go to first character of next word   |
| e          | Go to last character of current word |
| 0          | Go to Start of line                  |
| $          | Go to end of line                    |

### Basic save and exit commands

| Command    | Purpose                   |
|------------|---------------------------|
| :q         | Quit                      |
| :w         | Save                      |
| :wq        | Save and quit             |
| :!q        | Quit without saving       |

### Basic editing

**In normal mode**

| Command    | Purpose                           |
|------------|-----------------------------------|
| x          | Delete one character under cursor |
| dw         | Delete one word, including space  |
| de         | Delete one word, excluding space  |
| dd         | Delete one line                   |
| d$         | Delete cursor to end of line      |

**Going to insert mode**

Insert mode is used to update the text.

To go to insert mode, press `i` from normal mode. To go back to normal mode (from insert mode), press `Esc`.

| Command      | Purpose                                       |
|--------------|-----------------------------------------------|
| `i` (insert) | Normal -> Insert mode at current location.    |
| `Esc`        | Insert -> Normal mode                         |
| `a` (append) | Normal -> Insert mode after current location. |
| `A` (append) | Normal -> Insert mode at last of line.        |

**In insert mode**
