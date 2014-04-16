piper
=====

`piper` is a command line tool that shows you a tree of all the processes on your system that write to or read from pipes.

**Example**

In one terminal, run: `cat /dev/urandom | sed 's/2/3/g' > blah`. 

Also imagine that you have a couple of other scripts that both send their output to a logger script. You can use `piper` to find out how all these processes are connected with pipes!

Then run `piper`! 

```
$ ./piper
cat /dev/urandom (2011) => sed 's/2/3/g' (2043)

ruby other_awesome_script.py (2343) ||
                                    ||
python awesome_script.py  (3425)    ==> some_logger_program (12312)
```


Todo
====

As you may have noticed, this project doesn't exist! If such a thing already exists, tell me! Or write it!
