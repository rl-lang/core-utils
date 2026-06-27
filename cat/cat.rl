get read_lines, println from std::io
get args from std::process
get arr_is_empty from std::array

dec arr[string] Args = args()

if !Args.arr_is_empty() {
    dec arr[string] lines = Args[0].read_lines()

    for line in lines {
        println(line)
    }
} else {
    println("usage cat <file>")
}
