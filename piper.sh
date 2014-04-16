
ls /proc/*/fd/* -l \
  2> /dev/null \
  | grep 'pipe:' \
  | awk  '{print $11  $9}' \
  | awk -F '/' '{print $1 " " $3 " " $5}' \
  | grep -v " 1$" \
  | sort \
  > outputs \
  | cat

ls /proc/*/fd/* -l \
  2> /dev/null \
  | grep 'pipe:' \
  | awk  '{print $11  $9}' \
  | awk -F '/' '{print $1 " " $3 " " $5}' \
  | grep " 1$" \
  | sort \
  > inputs \
  | cat

join inputs outputs \
    | awk '{
        cmd="cat /proc/"$2"/cmdline";
        cmd | getline input;
        cmd="cat /proc/"$4"/cmdline";
        cmd | getline output;
        print input "[" $2 "]" " => " output "[" $4 "]";
    }' \
    | cat
