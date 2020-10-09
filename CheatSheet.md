Cheat-sheet vim
===============

## Quitting vim (you actually don't need to)
- :q (:q! if you don't want to save your work) add 'a' to quit all
- [Control-z] puts vim in background, enter fg command to go back to it. (jobs to see
  how many of background jobs are running, if many, fg [job-id] works)

## Basic movements
- h j k l or arrow keys
- [Control-D] for page down, [Control-U] page up
- ^ beginning of line, $ end of line
- gg beginning of file
- G end of file
- [nb]gg jump to the line nb
- w and e to jump between words
- W and e to jump at the end
- b to jump words backward

## Windws, buffers, splits, tabs etc.
- open a new buffer: :e [file_path]
- split vim:
   - vertically: :vsp or [Control-w]v
   - horizontaly: :sp or [Control-w]s
   - navigate: [Control-w]h, j, k or l
   - move: [Control-w]H, J, K or L
- tabs:
   - create a new tab: :tabnew
   - move between tabs: gt or gT

## Less-Basic but useful movements
- brackets jump: %
- next code block
   - { previous: [[, next: ]]
   - } previous: [], next: ][

## Search
- /[stuff_here] search next
- ?[studd_here] search previous
- n to go to the next one, N the previous one (in the search order)

## Mods (3 of many)
### Default
- Only love

### Selection
- Visual: v
- Visual line: [Shift-v]
- Visual block: [Control-v]

### Insert
- i: insert (before cursor)
- I: insert at the beginning of the line
- a: append (after cursor)
- A: append at the end of the line
- :set paste : pastemod (insert) (:set nopaste to disable)

## Operators
- delete: d removes (and yank) stuff
- change: c removes (and yank) suff and then switch to Insert mode
- yank(copy): y
- paste:
   - after cursor: p
   - before cursor: P
- select: v

Doubling it will do it on one line.

Useful operator to know:
- and: a will include (eg. a bracket)
- in: i will exclude it

You can do a lot of stuff, by combining it:
- copy in brackets(): yib or yi( or yi) will copy everything in the brackets
- change in <>: ci< or ci> will remove everything in the <> and then switch to
  insert mode.
- delete and {}: da{ or da} will delete the curly brackets and everything
  inside it
...

It also works with movements, for example:
- change the end of the word at the right of the cursor: cw
- change the whole word the cursor is on: caw
- copy from the cursor to the end of line: y$
etc.

Typing vibp or dibp allows you to paste in the brackets what you had previously
yanked.

## Why using i3 when you can use vim? (emacs-like vim)
- Integrated terminal
- copen & make (:copen | make)
- Integrated debugger (tbh I have never used it)
      ```
   :packadd termdebug #to enable the built-in plugin
   :Termdebug [binary] #to launch the terminal
   ```

## Useful Tricks
- Jump between ctags
   ```
   ctag -R .' #to create the tags
   ```
   - go to declaration: [Alt-]]
   - go back: [Alt-t]
- goto file: gf (same window) or [Control-w]f (new split) on a filename
- manpage:
   - [Shift-k]
   - Man [nb] [word] To enable it:
   ```
   runtime ftplugin/man.vim # to enable the built-in plugin
   ```
- if you want to edit multiple lines at once, for, for examples a comment:
   1) block select on the first column
   2) I
   3) type the comment token, // in C for example
   4) Escape
   5) Enjoy your commented lines!
- you can use sed in vim by using :s/...... It also works on selections!

## Configuration
- .vimrc
- Must have
- Mappings
- Functions

## Best of all
- :help <<<---- BEST COMMAND!!!!! (like really!!!)
- vimtutor command
