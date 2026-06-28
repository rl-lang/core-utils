get delete_file, println from std::io
get args from std::process
get len from std::array

dec arr[string] Args = args()

if Args.len() == 1 {
    Args[0].delete_file()
} else {
    println("usage rm <file>")
}
