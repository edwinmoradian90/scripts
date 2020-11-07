# Bash Scripts 

### Various misc scripts that help with my everyday workflow.

# Installation

Clone the repo like this.

```bash
git clone https://github.com/edwinmoradian90/scripts

```

Once cloned, place the scripts directory where ever you want and cd into it.

```bash
cd ./scripts

```

Finally, while in the scripts directory, run the scripts setup.

```bash
./setup_scripts

```

This will setup up your bashrc to include the scripts directory into your path and include required aliases.
After setup is completed, open a new terminal and you should be ready to go.

# Commands

### clone

The point of the clone command is to save time cloning a repo from GitHub. 
When I setup a new distro or setup a new computer, I find myself cloning the scripts and documents that I normally clone, 
so having to retype the same url five or more times can be a pain. 

The clone command can take two optional arguments, a commit message and a branch.
The arguments are not required when executing the command, but you will be prompted to input them in the command line.

Using the -u or --user flag will require you to provide a user and a branch, as opposed to just the branch without the flag.

```bash
clone user branch

```

### push 

The push command, like the clone command, is an attempt to curtail redundency.
Instead of writing this: 

```bash
git add .
git commit -m "some commit message"
git push origin some_branch

```

You can now write:

```bash 
push "some commit message" branch

```

or just: 

```bash
push

```

The latter will prompt you input the missing information in the terminal, while the former will just make the changes.

### mdcd

The mdcd command is a very simple command that simply creates a directory and cds into the directory you just created. 
The issue with doing this with the regular mkdir command is that you would always have to write an extra command after the creating the directory, 
which could did not auto-complete mind you.

Before you would have to do this:

```bash
mkdir somedir && cd somedir

```
Now, you can do this: 

```bash
mdcd somedir

```
This will result in a new directory, which you will cd into automatically, saving a precious 0.7ms of time having to cd manually yourself.

### rdcd

The rdcd command is the inverse of mdcd command. If you are in an empty directory, you can use the rdcd command to go back one directory and delete the folder.
So instead of having to cd out of the folder and then delete it, you can now do it with one command.

It takes no arguments and will assume your current directory is the directory to be deleted.

Before:

```bash
cd ..
rmdir somedir

```

After:

```bash
rdcd

```

Again, just more of a QOL thing than anything.

### gt 

This is probably one of my most used commands so far. The gt, or "go to", command is very useful for traversing back to a parent folder.

