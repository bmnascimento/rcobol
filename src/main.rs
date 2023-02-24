use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
    
    if args.len() != 2 {
        panic!("Usage: rcobol [script]")
    }

    let file_path = &args[1];

    run_file(file_path);
}

fn run_file(file_path: &String) {
    println!("File {file_path}");
    let contents = fs::read_to_string(file_path)
        .expect("Should have been able to read the file");
    run(contents);
}

fn run(contents: String) {
    println!("{contents}")
    //Scanner
    //tokens = scanTokens
    //for token in tokens print token
}