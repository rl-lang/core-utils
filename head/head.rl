get read_lines, println from std::io
get args from std::process
get len, arr_range from std::array
get to_int from std::types
get clamp from std::math

dec arr[string] Args = args()

if Args.len() == 2 {
    dec arr[string] lines = Args[0].read_lines()
    dec int count = Args[1].to_int()
    count = count.clamp(0, lines.len())
    dec arr[int] range = arr_range(0, count, 1)

    for i in range {
        println(lines[i])
    }
} else {
    println("usage head <file> <count>")
}
