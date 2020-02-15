function dbd -d "Enter folder under Dropbox.../Development"
    switch (count $argv)
	case 0
	    cd ~/Dropbox\ \(Spectro\ Inlets\)/Development
	case 1
	    cd ~/Dropbox\ \(Spectro\ Inlets\)/Development
	    cdl $argv[1] 
	case "*"
	    echo "dbd does not support more than 1 argument"
    end
end
