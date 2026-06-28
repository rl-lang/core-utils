get println from std::io
get move_file from std::fs
get args from std::process
get len from std::array

dec arr[string] Args = args()

if Args.len() == 2 {
    Args[0].move_file(Args[1])
} else {
    println("usage mv <source> <destination>")
}
