_list:
    @just --list

start:
    watchexec --restart --clear -w src "cargo build || exit 1; ./target/debug/diffr --line-numbers < diff.txt | less -R"
