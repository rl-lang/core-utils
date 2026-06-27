get args from std::process
get println from std::io
get list_dir from std::fs

dec arr[string] paths = list_dir(".")

for path in paths {
    println(path)
}
