### Enter vim
	vim FILE_NAME

### Scrolling and Windows:
	E (Scroll the window down i.e similar to mouse scroller down)
	Y (Scroll the window up i.e similar to mouse scroller up)
	F (Scroll down one page i.e similar to pg down)
	B (Scroll up one page i.e similar to pg up)
	H (Move cursor to the top of the window)
	M (Move cursor to the middle of the window)
	L (Move cursor to the bottom of the window)
	G (To go to bottom of the file)
	gg (To go to start of the file)

### In command mode
	j (For moving cursor down)
	k (For moving cursor up)
	l (For moving cursor right)
	h (For moving cursor left)

**NOTE:** If you press any command and you dont want to do that operation you press esc.

	c(ANY_COMMAND) (Delets and take you into insert mode for changing w.r.t given command operation)
	C (Delets to end of line from current cursor position and takes you into insert mode)
	ct(ANY_CHAR) (Deletes line from current cursor position to given char and takes you into insert mode)
	dt(ANY_CHAR) (Deletes line from current cursor position to given char)
	* (If you are on start of some word and want to take cursor to the other occurences of that word)


### Back and Forth of words
	w (To move the cursor to forward any character/delimiter)
	e (Similar to w, it moves cursor to end of the word)
	b (To take cursor to the back of the current word)
	SHIFT W (To take cursor to the next word after the space)
	SHIFT B (To take cursor to back of word after the space)


**NOTE:** We can also use arrow's to move the cursor

	dd (For deleting the whole line)
	D (For deleting line to end of the line from the cursor position)
	x (For deleting characters i.e similar to delete key on keyboard)
	NUMx (For deleting characters at given number of times i.e delete key)
	SHIFT X (For deleting characters i.e similar to backspace key on keyboard)
	NUM SHIFT X (For deleting characters at given number of times i.e backspace key)
	d(ANY_COMMAND) to delete lines respective to command.
	u (For undoing the changes made)
	R (For Redoing the changes)
	yy (For copying the line to clipboard)
	P (For pasting the things in the same line of cursor)
	p (For pasting the things below the line of cursor)
	r(ANY_CHAR) (For replacing the current cursor position character with given char)
	NUMr(ANY_CHAR) (For replacing the Number of character's from the cursor position with given character )
	SHIFT R (For replacing character's starting from cursor position)
	t(ANY_CHAR) (To take cursor to the char before the given char)
	t(ANY_CHAR); (To take cursor to the char before the given char and continue this search iteratibly in forwared direction)
	t(ANY_CHAR), (To take cursor to the char before the given char and continue this search iteratibly in backward direction)
	f(ANY_CHAR) (To take cursor to that first occurance of given specific char position)
	f(ANY_CHAR); (To take cursor to that first occurance of given specific char position and ; to continue the search in forward direction)
	f(ANY_CHAR), (To take cursor to that first occurance of given specific char position and ; to continue the search in backward direction)
	/(ANY_STRING) (To search for the string in the file i.e similar to CTRL+F and to Find next press 'n' for foward, to 'N' to find backward)
	% (If you are at start of opening tag of any paranthesis/squarebrace/flowerbrace/... and type % then it takes to the closing tag of that char)
	d% (If you are at start of opening tag and type d% it will delete from opening tag to closing tag)
	zz (If the cursor is somewhere above or below or anywhere on the screen, zz will take cursor to the middle of the screen)

### For Cutting and pasting the line
	dd (To delete that line)
	p (To paste that deleted line below)
	<!--- Similar to cut paste---!>
---
	o (To add new line below to the cursor position and takes into insert mode)
	O (To add new line above to the cursor position and takes into insert mode)
---
### For Visual Mode
	V (To Enter into visual mode and press j/k/l/h/{/} to select the region accordingly. Later you del or copy the selected region)
---
### For deleting NUM of recent changes
	NUMdd (Will delete the NUM of times the recent changes made)
---
	} (To go to bottom of the code block)
	{ (To go to start of the code block)
	NUM (To go that position in the line)
	$ (To go end of the line)
	0 (To go start of the line)
	:NUM (To go to specific line number)
	NUMj (To move the cursor to number of line down)
	NUMk (To move the cursor to number of line up)
	NUMl (To move the cursor to number of line right)
	NUMh (To move the cursor to number of line left)
	NUM{ (To move the cursor to number of blocks up)
	NUM} (To move the cusror to number of blocks down)
---
### To Enter Insert Mode
	i (For enabling typing from where your cursor is)
	I (For enabling typing from the very beggining of line on which the cursor is)
	a (For enabling typing from one char ahead of where previous cursor position was)
	A (For enabling typing takes you to the end of line)
---
### To Exit Insert Mode
	esc (For exiting from insert/typing mode and enter into command mode)

### Exit
    :w (For only saving and not quitting)
	:wq (For write and quit)
	:q! (For quit without saving)
	:q (For quit. If nothing is changed in a file, else either of the above)
---
### Miscellenous:
	~ (To swap the letters from capital to small, vice versa.)
	NUM~ (To swap letters from capital to small, vice versa. To the Number of times given)
	. (Redo's your previous command/step)
---
#### Recording and replaying action (45:00)
### Record a Macro
	q(ANY_CHAR) (Here any_char is treated as register keyword, This will start the recording)
	q (To exit from the macro recroding)
### Play Macro
	@(ANY_CHAR) (The char is the Register keyword used)
---
### Basic Find and Replace:
	In Vim, you can find and replace text using the :substitute (:s) command.
	
	The general form of the substitute command is as follows:
		:[range]s/{pattern}/{string}/[flags] [count]

	The command searches each line in [range] for a {pattern}, and replaces it with a {string}. [count] is a positive integer that multiplies the command.

	If no [range] and [count] are given, only the pattern found in the current line is replaced. The current line is the line where the cursor is placed.

	For example, to search for the first occurrence of the string ‘foo’ in the current line and replace it with ‘bar’, you would use:
		:s/foo/bar/
	To replace all occurrences of the search pattern in the current line, add the g flag:
		:s/foo/bar/g
	If you want to search and replace the pattern in the entire file, use the percentage character % as a range. This character indicates a range from the first to the last line of the file:
		:%s/foo/bar/g
	If the {string} part is omitted, it is considered as an empty string, and the matched pattern is deleted. The following command deletes all instances of the string ‘foo’ in the current line:
		:s/foo//g
	Instead of the slash character (/), you can use any other non-alphanumeric single-byte character except as a delimiter. This option is useful when you have the ‘/’ character in the search pattern or the replacement string.
		:s|foo|bar|
	To confirm each substitution, use the c flag:
		:s/foo/bar/gc
		
		OUTPUT:
			replace with bar (y/n/a/q/l/^E/^Y)?

			Press y to replace the match or l to replace the match and quit. Press n to skip the match and q or Esc to quit substitution. The a option substitutes the match and all remaining occurrences of the match. To scroll the screen down, use CTRL+Y, and to scroll up, use CTRL+E.

	You can also use regular expressions as a search pattern. The command bellow replaces all lines starting with ‘foo’ with ‘Vim is the best’:
		:%s/^foo.*/Vim is the best/gc
	The ^ (caret) symbol matches the beginning of a line and .* matches any number of any characters.

	By default, the search operation is case sensitive; searching for “FOO” will not match “Foo”.

### To ignore case for 
	You can also use regular expressions as a search pattern. The command bellow replaces all lines starting with ‘foo’ with ‘Vim is the best’:
		:%s/^foo.*/Vim is the best/gc
	The ^ (caret) symbol matches the beginning of a line and .* matches any number of any characters.

	By default, the search operation is case sensitive; searching for “FOO” will not match “Foo”.

	To ignore case for the search pattern, use the i flag:
		:s/Foo/bar/gi
	Another way to force ignore case is to append \c after the search pattern. For example, /Linux\c performs ignore case search.

	If you changed the default case setting and you want to perform case sensitive search, use the I flag:
		:s/foo/bar/gi
	Uppercase \C after the pattern also forces case match search.
	
### Search Range:
	When no range is specified the substitute command operates only in the current line.

	The range can be either one line or a range between two lines. The line specifiers are separated with the , or ; characters. The range can be specified using the absolute line number or special symbols.

	For example, to substitute all occurrences of ‘foo’ to ‘bar’ in all lines starting from line 3 to line 10 you would use:
		:3,10s/foo/bar/g
	The range is inclusive, which means that the first and last lines are included in the range.

	The dot . character indicates the current line and $ - the dollar sign the last line. To substitute ‘foo’ in all lines starting from the current line to the last one:
		:.,$s/foo/bar/
	The line specifier can also be set using the ‘+’ or ‘-’ symbol,followed by a number that is added or subtracted from the preceding line number. If the number after the symbol is omitted, it defaults to 1.

	For example to substitute each ‘foo’ with ‘bar’ starting from the current line and the four next lines, type:
		:.,+4s/foo/bar/g

### Substituting Whole Word:
	The substitute command looks for the pattern as a string, not a whole word. If, for example, you were searching for “gnu”, the search find matches where “gnu” is embedded in larger words, such as “cygnus” or “magnum”.

	To search for a whole word, type \< to mark the beginning of a word, enter the search pattern, type \> to mark the end of a word:

	For example, to search for the word “foo” you would use \<foo\>:
		:s/\<foo\>/bar/

### Substitute History:
	Vim keeps track of all the commands you run in the current session. To browse the history for previous substitute commands, enter :s and use the arrow up/down keys to find a previous substitute operation. To run the command, simply press Enter. You can also edit the command before performing the operation.
	
	Examples:
	1. Comment lines (add # before the line) from 5 to 20:
		:5,20s/^/#/
	2. Uncomment lines from 5 to 20, revert the previous changes:
		:5,20s/^#//
	3. Replace all instances of ‘apple’, ‘orange’, and ‘mango’ with ‘fruit’:
		:%s/apple\|orange\|mango/fruit/g
	4. Remove trailing whitespace at the end of each line:
		:%s/\s\+$//e
---
## Vim 
	text objects
		w - words
		s - sentences
		p - paragraphs
		t - tags
    Motions
		a - all
		i - in
		t - `til
		f - find forward
		F - find backward
	Commands
		d - delets (also cut)
		c - change (delete, then place in insert mode)
		y - yank (copy)
		v - visually select

{command}{text object/motion}


