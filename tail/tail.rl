get read_lines, println from std::io
get args from std::process
get len, arr_range, arr_reverse, arr_push from std::array
get to_int from std::types
get clamp from std::math

dec arr[string] Args = args()

if Args.len() == 2 {
    dec arr[string] lines = Args[0].read_lines()
    lines = lines.arr_reverse()
    dec int count = Args[1].to_int()
    count = count.clamp(0, lines.len())
    dec arr[int] range = arr_range(0, count, 1)

    dec arr[string] new_lines = []
    for i in range {
        new_lines = new_lines.arr_push(lines[i])
    }
    new_lines = new_lines.arr_reverse()

    for line in new_lines {
        println(line)
    }
} else {
    println("usage tail <file> <count>")
}
