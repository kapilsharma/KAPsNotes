# Vim

Vim is a old editor, preferred by many. They might have their own reasons to like it and they
might be still valid.

I'm not a power user of Vim nor I wanted to be. PHP storm suites me well but still, it is
my desire since long to use Vim editor so I'm learning Vim just for interest, not to become
power user.

Below is a quick cheat sheet I made for vim editor.

Continue at vimtutor chapter 6.4

## Moving the cursor

### Basic movement (In normal mode)

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

| Command    | Purpose                                    |
|------------|--------------------------------------------|
| 0          | Go to Start of line                        |
| $          | Go to end of line                          |
| w, W       | Go to first character of next word         |
| e, E       | Go to last character of current word       |
| b, B       | Go to previous word                        |
| Enter, +   | First non blank character of next line     |
| ^          | First non blank character of current line  |
| -          | First non blank character of previous line |
| n&#124;    | Column `n` of current line                 |


**Move within visible screen**

| Command    | Purpose                                  |
|------------|------------------------------------------|
| H,M,L      | Top, Middle, Last line of current screen |
| nH         | n (Number) of lines after top line       |
| nL         | n (Number) of lines before last line     |

**Go to line**

| Command    | Purpose                                             |
|------------|-----------------------------------------------------|
| Ctrl + G   | Show File name, and current line number in the file |
| G          | Go to bottom of the file                            |
| gg         | Go to the start of file                             |
| <%d>g      | Go to line number <%d>                              |

**Scroll**

| Command    | Purpose                                             |
|------------|-----------------------------------------------------|
| Ctrl-F,B   | Scroll Forward, Backward one screen                 |
| Ctrl-U,D   | Scroll Up, Down half screen                         |
| z `Enter`  | Reposition line with cursor to top of screen        |
| z-         | Reposition line with cursor to bottom of screen     |
| z.         | Reposition line with cursor to middle of screen     |          

### Search

| Command    | Purpose                                 |
|------------|-----------------------------------------|
| /<phrase>  | Search <phrase>                         |
| n          | Search next, in forward direction       |
| N          | Search previous                         |
| ?<phrase>  | Search <phrase> in backword direction   |
| Ctrl + O   | Go back from where we come              |
| Ctrl + I   | Go forward (After pressing Ctrl + O)    |
| %          | Move to matching Parentheses ({[]})     |

### Replace

| Command         | Purpose                                              |
|-----------------|------------------------------------------------------|
| :s/old/new      | Change first occurance of old to new in line         |
| :s/old/new/g    | Change all occurance of old to new in line           |
| :#,#s/old/new/g | Change all occurance of old to new between lines #,# |
| :%s/old/new/g   | Change all occurance of old to new in file           |
| :%s/old/new/gc  | 'c' flag will confirm occurance before changing      |

### Basic save and exit commands

| Command     | Purpose                   |
|-------------|---------------------------|
| :q          | Quit                      |
| :w          | Save                      |
| :w filename | Save to file 'filenale'   |
| :wq         | Save and quit             |
| :!q         | Quit without saving       |

### Basic editing

**In normal mode**

| Command    | Purpose                                                        |
|------------|----------------------------------------------------------------|
| x          | Delete one character under cursor                              |
| dw         | Delete one word, including space                               |
| de         | Delete one word, excluding space                               |
| dd         | Delete one line                                                |
| d$         | Delete cursor to end of line                                   |
| p          | Put (paste) deleted line (by dd) below curser or word to right |
| r          | Replace single character with new character                    |
| R          | Replace multiple characters with new characters                |
| ce         | Change. Delete cursor to end of word and goes to insert mode   |
| cw         | Change. Delete cursor to next word and goes to inset mode      |
| c$         | Change. Delete cursor to end of line and goes to insert mode   |

**Undo and redo**

| Command    | Purpose                         |
|------------|---------------------------------|
| u          | Undo last change                |
| U          | Undo everything in current line |
| Ctrl + R   | Redo                            |

**Copy and paste**

1. Select text in visual mode
2. Press `y` to yank (copy) text
3. Move cursor to position where we want to paste.
4. press `p` to paste.

> We can do `yw` in normal mode to copy a word

### Insert mode

Insert mode is used to update the text.

To go to insert mode, press `i` from normal mode. To go back to normal mode (from insert mode), press `Esc`.

| Command      | Purpose                                       |
|--------------|-----------------------------------------------|
| `i` (insert) | Normal -> Insert mode at current location.    |
| `Esc`        | Insert -> Normal mode                         |
| `a` (append) | Normal -> Insert mode after current location. |
| `A` (append) | Normal -> Insert mode at last of line.        |
| o            | Normal -> Insert mode at new next line.       |
| O (Capital)  | Normal -> Insert mode at previous new line.   |

**In insert mode**

### Running external command

From within vim, we can run external unix/dos commands as follow:

:! command

### Visual mode

Type `v` to enter in visual mode. In visual mode, we can select text with cursor movement.

**Selecting part of text in other file**

1. Move to starting point.
2. Press `v` to enter visula mode
3. Move curser to end point. Text will be selected.
4. Press `:`. Bottom of screen will show `:'<,'>`
5. Press `w filename`. Selected text will be saved to `filenale`.

**Insert contents of file**

1. Move curser to line below which we need to paste.
2. type `:r filename`. Contents of file `filename` will be placed below curser.

> We can also paste output of command with `:r !command`.
