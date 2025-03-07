#!/bin/bash

Code from Lecture04 on Git

Last login: Sat Oct  5 13:26:22 2024 from 10.126.227.224
s2015320@bioinfmsc5:~$ echo $USER
s2015320
s2015320@bioinfmsc5:~$ cd Exercises/Lecture04
s2015320@bioinfmsc5:~/Exercises/Lecture04$ ls -al
total 24
drwxr-xr-x 2 s2015320 g_s2015320   116 Sep 27 12:39 .
drwxr-xr-x 7 s2015320 g_s2015320   157 Oct  4 16:07 ..
-rw-r--r-- 1 s2015320 g_s2015320 10240 Sep 27 12:42 CodeFiles.tar
-rw-r--r-- 1 s2015320 g_s2015320    96 Sep 27 12:31 motif_file2.txt
-rw-r--r-- 1 s2015320 g_s2015320    68 Sep 27 12:19 motif_file.txt
-rw-r--r-- 1 s2015320 g_s2015320    34 Sep 27 12:44 someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cd ..
s2015320@bioinfmsc5:~/Exercises$ ls -al
total 8
drwxr-xr-x 7 s2015320 g_s2015320 157 Oct  4 16:07 .
drwx------ 6 s2015320 lcfg       273 Oct  5 14:39 ..
drwxr-xr-x 8 s2015320 g_s2015320 214 Oct  4 12:13 .git
-rw-r--r-- 1 s2015320 g_s2015320  41 Sep 27 11:58 .gitignore
drwxr-xr-x 3 s2015320 g_s2015320  50 Oct  5 14:10 Lecture03
drwxr-xr-x 2 s2015320 g_s2015320 116 Sep 27 12:39 Lecture04
drwxr-xr-x 2 s2015320 g_s2015320  10 Oct  1 12:12 Lecture05
drwxr-xr-x 2 s2015320 g_s2015320 300 Oct  4 11:27 Lecture06
-rw-r--r-- 1 s2015320 g_s2015320 195 Oct  4 11:34 message_to_al
s2015320@bioinfmsc5:~/Exercises$ ls -IR .git
branches  COMMIT_EDITMSG  config  description  HEAD  hooks  index  info  logs  objects	refs
s2015320@bioinfmsc5:~/Exercises$ cd .git
s2015320@bioinfmsc5:~/Exercises/.git$ ls -IR .git
ls: cannot access '.git': No such file or directory
s2015320@bioinfmsc5:~/Exercises/.git$ ls -al
total 28
drwxr-xr-x  8 s2015320 g_s2015320  214 Oct  4 12:13 .
drwxr-xr-x  7 s2015320 g_s2015320  157 Oct  4 16:07 ..
drwxr-xr-x  2 s2015320 g_s2015320   10 Sep 27 11:44 branches
-rw-r--r--  1 s2015320 g_s2015320   33 Oct  4 12:00 COMMIT_EDITMSG
-rw-r--r--  1 s2015320 g_s2015320  228 Oct  4 12:13 config
-rw-r--r--  1 s2015320 g_s2015320   73 Sep 27 11:44 description
-rw-r--r--  1 s2015320 g_s2015320   23 Sep 27 11:44 HEAD
drwxr-xr-x  2 s2015320 g_s2015320 4096 Sep 27 11:44 hooks
-rw-r--r--  1 s2015320 g_s2015320 1767 Oct  4 12:00 index
drwxr-xr-x  2 s2015320 g_s2015320   29 Sep 27 11:44 info
drwxr-xr-x  3 s2015320 g_s2015320   42 Sep 27 12:20 logs
drwxr-xr-x 40 s2015320 g_s2015320 4096 Oct  4 12:00 objects
drwxr-xr-x  4 s2015320 g_s2015320   43 Sep 27 11:44 refs
s2015320@bioinfmsc5:~/Exercises/.git$ rm -fr .git
s2015320@bioinfmsc5:~/Exercises/.git$ ls -l .git
ls: cannot access '.git': No such file or directory
s2015320@bioinfmsc5:~/Exercises/.git$ cd ..
s2015320@bioinfmsc5:~/Exercises$ ls -al
total 8
drwxr-xr-x 7 s2015320 g_s2015320 157 Oct  4 16:07 .
drwx------ 6 s2015320 lcfg       273 Oct  5 14:39 ..
drwxr-xr-x 8 s2015320 g_s2015320 214 Oct  4 12:13 .git
-rw-r--r-- 1 s2015320 g_s2015320  41 Sep 27 11:58 .gitignore
drwxr-xr-x 3 s2015320 g_s2015320  50 Oct  5 14:10 Lecture03
drwxr-xr-x 2 s2015320 g_s2015320 116 Sep 27 12:39 Lecture04
drwxr-xr-x 2 s2015320 g_s2015320  10 Oct  1 12:12 Lecture05
drwxr-xr-x 2 s2015320 g_s2015320 300 Oct  4 11:27 Lecture06
-rw-r--r-- 1 s2015320 g_s2015320 195 Oct  4 11:34 message_to_al
s2015320@bioinfmsc5:~/Exercises$ git config
usage: git config [<options>]

Config file location
    --global              use global config file
    --system              use system config file
    --local               use repository config file
    --worktree            use per-worktree config file
    -f, --file <file>     use given config file
    --blob <blob-id>      read config from given blob object

Action
    --get                 get value: name [value-regex]
    --get-all             get all values: key [value-regex]
    --get-regexp          get values for regexp: name-regex [value-regex]
    --get-urlmatch        get value specific for the URL: section[.var] URL
    --replace-all         replace all matching variables: name value [value_regex]
    --add                 add a new variable: name value
    --unset               remove a variable: name [value-regex]
    --unset-all           remove all matches: name [value-regex]
    --rename-section      rename section: old-name new-name
    --remove-section      remove a section: name
    -l, --list            list all
    -e, --edit            open an editor
    --get-color           find the colour configured: slot [default]
    --get-colorbool       find the colour setting: slot [stdout-is-tty]

Type
    -t, --type <>         value is given this type
    --bool                value is "true" or "false"
    --int                 value is decimal number
    --bool-or-int         value is --bool or --int
    --path                value is a path (file or directory name)
    --expiry-date         value is an expiry date

Other
    -z, --null            terminate values with NUL byte
    --name-only           show variable names only
    --includes            respect include directives on lookup
    --show-origin         show origin of config (file, standard input, blob, command line)
    --default <value>     with --get, use default value when missing entry

s2015320@bioinfmsc5:~/Exercises$ git config --localuser.nam e"vesoelisabeth"
error: unknown option `localuser.nam'
usage: git config [<options>]

Config file location
    --global              use global config file
    --system              use system config file
    --local               use repository config file
    --worktree            use per-worktree config file
    -f, --file <file>     use given config file
    --blob <blob-id>      read config from given blob object

Action
    --get                 get value: name [value-regex]
    --get-all             get all values: key [value-regex]
    --get-regexp          get values for regexp: name-regex [value-regex]
    --get-urlmatch        get value specific for the URL: section[.var] URL
    --replace-all         replace all matching variables: name value [value_regex]
    --add                 add a new variable: name value
    --unset               remove a variable: name [value-regex]
    --unset-all           remove all matches: name [value-regex]
    --rename-section      rename section: old-name new-name
    --remove-section      remove a section: name
    -l, --list            list all
    -e, --edit            open an editor
    --get-color           find the colour configured: slot [default]
    --get-colorbool       find the colour setting: slot [stdout-is-tty]

Type
    -t, --type <>         value is given this type
    --bool                value is "true" or "false"
    --int                 value is decimal number
    --bool-or-int         value is --bool or --int
    --path                value is a path (file or directory name)
    --expiry-date         value is an expiry date

Other
    -z, --null            terminate values with NUL byte
    --name-only           show variable names only
    --includes            respect include directives on lookup
    --show-origin         show origin of config (file, standard input, blob, command line)
    --default <value>     with --get, use default value when missing entry

s2015320@bioinfmsc5:~/Exercises$ git config --local user.name "vesoelisabeth"
s2015320@bioinfmsc5:~/Exercises$ git config --local user.email "vesoelisabeth@gmail.com"
s2015320@bioinfmsc5:~/Exercises$ git config merge.tool vimdiff
s2015320@bioinfmsc5:~/Exercises$ git config merge.conflictstyle diff3
s2015320@bioinfmsc5:~/Exercises$ git config mergetool.prompt false
s2015320@bioinfmsc5:~/Exercises$ 
s2015320@bioinfmsc5:~/Exercises$ git config --global core.editor "nano -w"
s2015320@bioinfmsc5:~/Exercises$ git config --list
core.editor=nano -w
core.autocrlf=input
alias.st=status
alias.lo=log --oneline
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
merge.tool=vimdiff
merge.conflictstyle=diff3
mergetool.prmpt=false
mergetool.prompt=false
user.name=vesoelisabeth
user.email=vesoelisabeth@gmail.com
s2015320@bioinfmsc5:~/Exercises$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Lecture03/

nothing added to commit but untracked files present (use "git add" to track)
s2015320@bioinfmsc5:~/Exercises$ git config --list | grep "user"
user.name=vesoelisabeth
user.email=vesoelisabeth@gmail.com
s2015320@bioinfmsc5:~/Exercises$ cat ~/.gitconfig
[core]
	editor = nano -w
	autocrlf = input
[alias]
	st = status
	lo = log --oneline
s2015320@bioinfmsc5:~/Exercises$ cat .git/config
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[merge]
	tool = vimdiff
	conflictstyle = diff3
[mergetool]
	prmpt = false
	prompt = false
[user]
	name = vesoelisabeth
	email = vesoelisabeth@gmail.com
s2015320@bioinfmsc5:~/Exercises$ git add Lecture03/
warning: adding embedded git repository: Lecture03
hint: You've added another git repository inside your current repository.
hint: Clones of the outer repository will not contain the contents of
hint: the embedded repository and will not know how to obtain it.
hint: If you meant to add a submodule, use:
hint: 
hint: 	git submodule add <url> Lecture03
hint: 
hint: If you added this path by mistake, you can remove it from the
hint: index with:
hint: 
hint: 	git rm --cached Lecture03
hint: 
hint: See "git help submodule" for more information.
s2015320@bioinfmsc5:~/Exercises$ echo -e "mypasswordsfile\n*.pdf\n*.c\n*.log" >> .gitignore
s2015320@bioinfmsc5:~/Exercises$ echo -e "**/fq.gz" >> .gitignore
s2015320@bioinfmsc5:~/Exercises$ nano .gitignore
s2015320@bioinfmsc5:~/Exercises$ cat .gitignore
!bowtie2.log
mypasswordsfile
*.pdf
*.c
*.log
**/fq.qz
mypasswordsfile
*.pdf
*.c
*.log
**/fq.gz
s2015320@bioinfmsc5:~/Exercises$ nano .gitignore
s2015320@bioinfmsc5:~/Exercises$ cat .gitignore
!bowtie2.log
mypasswordsfile
*.pdf
*.c
*.log
**/fq.qz

s2015320@bioinfmsc5:~/Exercises$ git check-ignore-v*
git: 'check-ignore-v*' is not a git command. See 'git --help'.
s2015320@bioinfmsc5:~/Exercises$ git check-ignore -v*
error: unknown switch `*'
usage: git check-ignore [<options>] <pathname>...
   or: git check-ignore [<options>] --stdin

    -q, --quiet           suppress progress reporting
    -v, --verbose         be verbose

    --stdin               read file names from stdin
    -z                    terminate input and output records by a NUL character
    -n, --non-matching    show non-matching input paths
    --no-index            ignore index when checking

s2015320@bioinfmsc5:~/Exercises$ git check-ignore -v *
s2015320@bioinfmsc5:~/Exercises$ git check-ignore -v *
s2015320@bioinfmsc5:~/Exercises$ git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   Lecture03

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   .gitignore
	modified:   Lecture03 (modified content)

s2015320@bioinfmsc5:~/Exercises$ cd Lecture 04 && ls
-bash: cd: too many arguments
s2015320@bioinfmsc5:~/Exercises$ cd Lecture04 && ls
CodeFiles.tar  motif_file2.txt	motif_file.txt	someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat motif_file.txt
#This line has motif1 and motif1 in it 
# This line has motif2 only
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   ../Lecture03

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../.gitignore
	modified:   ../Lecture03 (modified content)

s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Additional code for Lecture03"
[master 7a46a5a] Additional code for Lecture03
 1 file changed, 1 insertion(+)
 create mode 160000 Lecture03
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../.gitignore
	modified:   ../Lecture03 (modified content)

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add ..//gitignore
fatal: pathspec '..//gitignore' did not match any files
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add ../.gitignore
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Lecture04 update with bowtie2.log"
[master b31f67a] Lecture04 update with bowtie2.log
 1 file changed, 2 insertions(+)
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar cvf CodeFiles.tar motif_file.txt
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ #tar cvf means a tar archive file is being added, v for verbose so it will give me feedback on what is being added, f for file 
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar cvf CodeFiles.tar motif_file.txt
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ #that added an unzipped archive file for the code files. now repeat but add a gzipped file 
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar cvfz CodeFiles.tar.gz motif_file.txt
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar tf CodeFiles.tar
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ # Lists the contents of the specified tar archive without extracting any files.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar ztf CodeFiles.tar.gz
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar ztfv CodeFile.tar.gz
tar (child): CodeFile.tar.gz: Cannot open: No such file or directory
tar (child): Error is not recoverable: exiting now
tar: Child returned status 2
tar: Error is not recoverable: exiting now
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar ztfv CodeFiles.tar.gz
-rw-r--r-- s2015320/g_s2015320 68 2024-09-27 12:19 motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ ls
CodeFiles.tar	  motif_file2.txt  someotherfile.sh
CodeFiles.tar.gz  motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add CodeFiles.tar.gz
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "CodeFiles all done and tar zipped part2"
[master 981af60] CodeFiles all done and tar zipped part2
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 Lecture04/CodeFiles.tar.gz
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	modified:   CodeFiles.tar

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit CodeFiles.tar
[master 5591989] "Adding initial tar file"
 1 file changed, 0 insertions(+), 0 deletions(-)
s2015320@bioinfmsc5:~/Exercises/Lecture04$  rm CodeFiles.tar motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git log
commit 55919898901cee2804726e0734b144661b54146e (HEAD -> master)
Author: vesoelisabeth <vesoelisabeth@gmail.com>
Date:   Sat Oct 5 15:55:30 2024 +0100

    "Adding initial tar file"

commit 981af60b9ea2e45c844331392af9a729b0a54a6f
Author: vesoelisabeth <vesoelisabeth@gmail.com>
Date:   Sat Oct 5 15:55:06 2024 +0100

    CodeFiles all done and tar zipped part2

commit b31f67a811f2b9bfddd7ab2c0c561cf407cd541c
Author: vesoelisabeth <vesoelisabeth@gmail.com>
Date:   Sat Oct 5 15:44:52 2024 +0100

    Lecture04 update with bowtie2.log

commit 7a46a5acfcbd6113f5e3ab7323411846dc1610e1
Author: vesoelisabeth <vesoelisabeth@gmail.com>
Date:   Sat Oct 5 15:43:12 2024 +0100

    Additional code for Lecture03

commit 997c1593fe9c19e708dd266548bd770593fff7f9
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Oct 4 12:00:52 2024 +0100

    Committing Week3 Lecture content

commit a54d3dee47711be66e86dbdfeac42b206287619e
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Sep 27 12:45:14 2024 +0100

    Third version of the someotherfile.sh shell script

commit 9cfd0c643c9b7e088a89666ea631ec64fbfcccc1
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Sep 27 12:43:25 2024 +0100

    Updated version of tar

commit 39f67dce0157ef61368161780358702d12631055
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Sep 27 12:40:35 2024 +0100

    Added the someotherfile.sh shell script

commit 7d41e8baf97a4b695a5ab65bc315766090973f47
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Sep 27 12:38:01 2024 +0100

    Additional motif files, and updated tar file

commit 140009f4483928ab75b4240bad7c275961a8ada9
Author: Elisabeth Veso <s2015320@bioinfmsc5.ed.ac.uk>
Date:   Fri Sep 27 12:21:56 2024 +0100

    ^G
    First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ gitlog --oneline
-bash: gitlog: command not found
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git log --oneline
5591989 (HEAD -> master) "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	deleted:    CodeFiles.tar
	deleted:    motif_file.txt

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git reset HEAD somefilename
Unstaged changes after reset:
D	Lecture04/CodeFiles.tar
D	Lecture04/motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat somefilename
cat: somefilename: No such file or directory
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat $somefilename
q
q
^X^C
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	deleted:    CodeFiles.tar
	deleted:    motif_file.txt

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ echo "#This lie has mtoif3 on it" >> motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ nano motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat motif_file.txt <(echo "# This line has motif4 on it") > motif_file2.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ 
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat motif_file2.txt
#This line has motif3 on it
# This line has motif4 on it
s2015320@bioinfmsc5:~/Exercises/Lecture04$ nano motif_file2.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar -uzf CodeFiles.tar.gz motif_file*
tar: Cannot update compressed archives
Try 'tar --help' or 'tar --usage' for more information.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ gzip -d CodeFiles.tar.gz
s2015320@bioinfmsc5:~/Exercises/Lecture04$ ls
CodeFiles.tar  motif_file2.txt	motif_file.txt	someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar -uvf CodeFiles.tar motif*
motif_file2.txt
motif_file.txt
s2015320@bioinfmsc5:~/Exercises/Lecture04$ #last command updates the existing CodeFiles.tar archive by adding the specified files if they are newer, while also providing feedback in the terminal about what is being added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	modified:   CodeFiles.tar
	deleted:    CodeFiles.tar.gz
	modified:   motif_file.txt
	modified:   motif_file2.txt

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add motif_file*
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add CodeFiles.tar
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   CodeFiles.tar
	modified:   motif_file.txt
	modified:   motif_file2.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	deleted:    CodeFiles.tar.gz

s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Additinal motif files, and updated tar files from lecture04 part2"
[master c624c00] Additinal motif files, and updated tar files from lecture04 part2
 3 files changed, 3 insertions(+), 5 deletions(-)
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git log --oneline
c624c00 (HEAD -> master) Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git config --global alias.lo"log--online"
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git lo
c624c00 (HEAD -> master) Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ nano someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar -uvf CodeFiles.tar soemotherfile.sh
tar: soemotherfile.sh: Cannot stat: No such file or directory
tar: Exiting with failure status due to previous errors
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar -uvf CodeFiles.tar someotherfile.sh
someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ ls -al
total 24
drwxr-xr-x 2 s2015320 g_s2015320   116 Oct  5 16:30 .
drwxr-xr-x 7 s2015320 g_s2015320   157 Oct  5 15:24 ..
-rw-r--r-- 1 s2015320 g_s2015320 10240 Oct  5 16:31 CodeFiles.tar
-rw-r--r-- 1 s2015320 g_s2015320    56 Oct  5 16:25 motif_file2.txt
-rw-r--r-- 1 s2015320 g_s2015320    28 Oct  5 16:17 motif_file.txt
-rw-r--r-- 1 s2015320 g_s2015320    34 Sep 27 12:44 someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Adding someotherfile.sh shell script, updated"
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	modified:   CodeFiles.tar
	deleted:    CodeFiles.tar.gz

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git st
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	modified:   CodeFiles.tar
	deleted:    CodeFiles.tar.gz

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git reset HEAD someotherfile.sh
Unstaged changes after reset:
M	Lecture04/CodeFiles.tar
D	Lecture04/CodeFiles.tar.gz
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat someotherfile.sh
Some random text
More random text
s2015320@bioinfmsc5:~/Exercises/Lecture04$ echo -e "# This is my better script\n# Done using different approaches" > my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Added my_cool_script"
[master 3a7fa98] Added my_cool_script
 1 file changed, 2 insertions(+)
 create mode 100644 Lecture04/my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add someotherfile.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Final changes added"
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)
	modified:   ../Lecture03 (modified content)
	modified:   CodeFiles.tar
	deleted:    CodeFiles.tar.gz

no changes added to commit (use "git add" and/or "git commit -a")
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -a
[master c74b12c] "Final changes made"
 2 files changed, 0 insertions(+), 0 deletions(-)
 delete mode 100644 Lecture04/CodeFiles.tar.gz
s2015320@bioinfmsc5:~/Exercises/Lecture04$ echo "# This is definitely my better script" >> my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
# This is definitely my better script
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git checkout my_cool_script.sh
Updated 1 path from the index
s2015320@bioinfmsc5:~/Exercises/Lecture04$ #"checkout" gets the most recent version (of the repo/file) from the repo
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
s2015320@bioinfmsc5:~/Exercises/Lecture04$ echo "# This script is not going to work" >> my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
# This script is not going to work
s2015320@bioinfmsc5:~/Exercises/Lecture04$ echo "# This script is not good" >> my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
# This script is not going to work
# This script is not good
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "I am not sure cool script is actually any good"
[master 0fd74a3] I am not sure cool script is actually any good
 1 file changed, 2 insertions(+)
s2015320@bioinfmsc5:~/Exercises/Lecture04$ nano my_cool_script
s2015320@bioinfmsc5:~/Exercises/Lecture04$ nano my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar u
tar: Options '-Aru' are incompatible with '-f -'
Try 'tar --help' or 'tar --usage' for more information.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ tar uvf CodeFiles.tar my_cool_script.sh someotherfile.sh
my_cool_script.sh
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git add CodeFiles.tar
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git commit -m "Updated contents of tar, coolscript"
[master f2a6e39] Updated contents of tar, coolscript
 1 file changed, 0 insertions(+), 0 deletions(-)
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git lo
f2a6e39 (HEAD -> master) Updated contents of tar, coolscript
0fd74a3 I am not sure cool script is actually any good
c74b12c "Final changes made"
3a7fa98 Added my_cool_script
c624c00 Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v1.0 e3c3ed4 -m "A very preliminary
> version 1"
fatal: Failed to resolve 'e3c3ed4' as a valid ref.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag
v
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v2.0 -m "Version2"
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v1.0 e3c3ed4 -m "A very preliminary
> version 1"
fatal: Failed to resolve 'e3c3ed4' as a valid ref.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag
v
v2.0
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git show v1.0
fatal: ambiguous argument 'v1.0': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v1.2 e3c3ed4 -m "A very preliminary
> version 1.2"
fatal: Failed to resolve 'e3c3ed4' as a valid ref.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -d v1.2
error: tag 'v1.2' not found.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v1.2 a85da1e -m "A very preliminary
> version 1.2"
fatal: Failed to resolve 'a85da1e' as a valid ref.
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git log --oneline
f2a6e39 (HEAD -> master, tag: v2.0, tag: v) Updated contents of tar, coolscript
0fd74a3 I am not sure cool script is actually any good
c74b12c "Final changes made"
3a7fa98 Added my_cool_script
c624c00 Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -a v1.2 c74b12c -m "A very preliminary version 1.2"
s2015320@bioinfmsc5:~/Exercises/Lecture04$ 
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag
v
v1.2
v2.0
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git show v1.2 | grep commit
commit c74b12c713f5e23c1e96bee440daf3adf169876a
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git lo
f2a6e39 (HEAD -> master, tag: v2.0, tag: v) Updated contents of tar, coolscript
0fd74a3 I am not sure cool script is actually any good
c74b12c (tag: v1.2) "Final changes made"
3a7fa98 Added my_cool_script
c624c00 Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git tag -d v
Deleted tag 'v' (was 1c712e2)
s2015320@bioinfmsc5:~/Exercises/Lecture04$ git lo
f2a6e39 (HEAD -> master, tag: v2.0) Updated contents of tar, coolscript
0fd74a3 I am not sure cool script is actually any good
c74b12c (tag: v1.2) "Final changes made"
3a7fa98 Added my_cool_script
c624c00 Additinal motif files, and updated tar files from lecture04 part2
5591989 "Adding initial tar file"
981af60 CodeFiles all done and tar zipped part2
b31f67a Lecture04 update with bowtie2.log
7a46a5a Additional code for Lecture03
997c159 Committing Week3 Lecture content
a54d3de Third version of the someotherfile.sh shell script
9cfd0c6 Updated version of tar
39f67dc Added the someotherfile.sh shell script
7d41e8b Additional motif files, and updated tar file
140009f ^G First file added
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script
cat: my_cool_script: No such file or directory
s2015320@bioinfmsc5:~/Exercises/Lecture04$ cat my_cool_script.sh
# This is my better script
# Done using different approaches
# This script is not going to work
# This script is not good
s2015320@bioinfmsc5:~/Exercises/Lecture04$ #Now the checking out part
