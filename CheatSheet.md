Cheat-sheet vim
===============

## Quitting vim (you actually don't need to)
- :q (:q! if you don't want to save your work) add 'a' to quit all
- [C-z] puts vim in background, enter fg command to go back to it. (jobs to see
  how many of background jobs are running, if many, fg [job-id] works)

## Basic movements
- h j k l or arrow keys
- [C-D] for page down, [C-U] page up
- ^ beginning of line, $ end of line
- gg beginning of file
- G end of file

## Windws, buffers, splits, tabs etc.
- open a new buffer: :e [file_path]
- split vim:
   - vertically: :vsp or [C-w]v
   - horizontaly: :sp or [C-w]s
   - navigate: [C-w]h, j, k or l
   - move: [C-w]H, J, K or L
- tabs:
   - create a new tab: :tabnew

## Less-Basic movements
- brackets jump: %
- next code block
   - { previous: [[, next: ]]
   - } previous: [], next: ][

## Search
- /[stuff_here] search next
- ?[studd_here] search previous
- n to go to the next one, N the previous one (for the search)

## Mods (3 of many)
### Default
- Only love

### Selection
- Visual: v
- Visual line: [Shift-v]
- Visual block: [C-v]

### Insert
- i: insert (before cursor)
- I: insert at the beginning of the line
- a: append (after cursor)
- A: append at the end of the line
- :set paste : pastemod (insert) (:set nopaste to disable)


## Why using i3 when you can use vim? (emacs-like vim)
- Integrated terminal
- copen & make (:copen | make)
- Integrated debugger (tbh I have never used it)
```
:packadd termdebug /* to add the built-in plugin */
:Termdebug [[binary]] /* to launch the terminal */
```
-
## Useful Tricks
- Jump between ctags (think about 'ctag -R .' before):
   - go to declaration: [Alt-]]
   - go back: [Alt-T]
- goto file: gf (same window) or [C-w]f (new tab) on a filename
- manpage:
   - [Shift-k]
   - Man [nb] [word] To enable it:
   ```
   runtime ftplugin/man.vim
   ```

## Configuration
- .vimrc
- Must have
- Mappings
- Functions
-
## Best of all
- :help [[[---- BEST COMMAND!!!!! (like rly)
