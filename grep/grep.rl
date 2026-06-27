get read_lines, println, print from std::io
get args from std::process
get len from std::array
get contains, split from std::str
get term_fg, term_reset_color from std::term

dec arr[string] Args = args()

if Args.len() == 2 {
    dec arr[string] lines = Args[0].read_lines()
    dec string target = Args[1]


    for line in lines {
        if line.contains(target) {
            dec arr[string] splitted_string = line.split(target)
            print(splitted_string[0])
            term_fg("red")
            print(target)
            term_reset_color()
            println(splitted_string[1])
        }
    }
} else {
    println("usage grep <file> <word>")
}
