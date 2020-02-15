function db -d "Enter folder under Dropbox..."
    switch (count $argv)
	case 0
	    cd ~/Dropbox\ \(Spectro\ Inlets\)
	case 1
	    cd ~/Dropbox\ \(Spectro\ Inlets\)
	    cdl $argv[1] 
	case "*"
	    echo "dbd does not support more than 1 argument"
    end
end
