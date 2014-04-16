piper
=====

`piper` is a command line tool that shows you how the processes on your system are connected with pipes!

*Why would I even want this?*

Sometimes you have loggers on your system that communicate through pipes! You might want to know how they all fit together. This is more likely to be useful on a server than on your desktop. 

(reality: I have no practical use for this yet. Possibly this is not actually useful.)

**Example**

In one terminal, run: `cat /dev/urandom | sed 's/2/3/g' > blah`. 

Also imagine that you have pulseaudio and some other tools running on your system:

Then run `piper`! 

Here's what I get:

```
$ ./piper.sh
/usr/lib/pulseaudio/pulse/gconf-helper[2858] => /usr/bin/pulseaudio[2787]
/usr/lib/speech-dispatcher-modules/sd_dummy[21265] => /usr/bin/speech-dispatcher[21267]
/usr/lib/speech-dispatcher-modules/sd_espeak[21259] => /usr/bin/speech-dispatcher[21265]
/usr/lib/speech-dispatcher-modules/sd_espeak[21259] => /usr/bin/speech-dispatcher[21267]
cat[23526] => sed[23527]
```

Todo
====

Make this better than a hacked-together bash script.
