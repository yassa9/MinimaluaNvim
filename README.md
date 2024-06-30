### Description
#
> - This is my minimal Neovim config with Lua.


![image](https://github.com/yassa9/Simple-Nvim-Lua-Config/assets/69548206/7db55e8d-acaf-4b9f-abc2-34f12a230c48)

### Local Setup
#
> - Run the following commands below.

```bash
# Go to the config directory.
cd .config

# Clone the repository.
git clone git@github.com:yassa9/MinimaluaNvim.git

# Rename the folder.
mv MinimaluaNvim nvim

# Go the nvim directory and open nvim.
cd nvim
nvim init.lua

# Install the plugins.
:PlugInstall
```

## Keyboard Commands
> - General.

```plaintext
Leader Key                  : <Space>
Open Terminal (Horizontal)  : <Space>th
Open Terminal (Vertical)    : <Space>tv
Escape Splits               : <Space><Space>
Support for Typst           : :TypstPreview
Open Telescope find files   : <leader>ff
```

![image](https://github.com/yassa9/Simple-Nvim-Lua-Config/assets/69548206/ff7bf0db-ab78-437a-96ed-1fd21b70c58b)


> - NerdTree basic commands.

```plaintext
m     : This bring up the NerdTree Filesystem menu.
a     : This allows to create a new file.
d     : This allows to delete a file.
mm    : This allows renaming a file.

t     : Open a new tab.
gt    : Switch to next tab.
gT    : Switch to previous tab.
C-t   : Toggle the NERDTree.
```

> - Cursor movement basic commands.

```plaintext
h   : Move cursor left.
j   : Move cursor down.
k   : Move cursor up.
l   : Move cursor right.
H   : Move to top of screen.
M   : Move to middle of screen.
L   : Move to bottom of screen.
G   : Move the cursor at the bottom of the page.
gg  : Move to the top of page.

e   : Jump forwards to the end of a word.
E   : Jump forwards to the end of a word (Words can contain punctuation).
w   : Jump forwards to the start of a word.
W   : Jump forwards to the start of a word (Words can contain puntuation).
gd  : Go to definition.

C-y : Completion active import.
C-n : Completion next import.
C-p : Completion previous import.

r   : Replace a character.
x   : Delete a character.
o   : New line below without pressing insert.
O   : New line above without pressing insert.

V || Shift + v    : Highlight a line.
>                 : Indent multiple line.

:noh              : Remove the highlights.

```

### Clipboard Setup
#

> - To make sure the clipboard works.

```sh
sudo apt install xclip
```
