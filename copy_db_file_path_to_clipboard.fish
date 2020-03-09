function copy_db_file_path_to_clipboard -d "Copy the path of a file inside Dropbox to the clipboard"
    set captured_dir (string split "/home/kenneth" (pwd))
    if test -d $argv > /dev/null
	set captured_path "$captured_dir[2]"
    else
	set captured_path "$captured_dir[2]/$argv[1]"
    end
    echo -n $captured_path|xclip -selection c
    echo "Copied \"$captured_path\" to clipboard"
end
