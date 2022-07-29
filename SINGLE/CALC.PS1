$arg1=$args[0]
$arg2=$args[1]
$arg3=$args[2]

"set hperc=" + $arg1 / $arg3 * 100 | set-content 1.CMD -Encoding Ascii
"set tperc=" + $arg2 / $arg3 * 100 | set-content 2.CMD -Encoding Ascii
