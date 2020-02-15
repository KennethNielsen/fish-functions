function cdl -d "Find a folder case insensitive that starts with"
    # Chech is search term is there
    if test -d $argv
	echo "One argument is required"
	return 0
    end

    set search_term (string lower $argv[1])
    for file in *
	set lfile (string lower $file)
	set same_length_lfile (string sub -s 1 -l (string length $search_term) $lfile)
	if [ $search_term = $same_length_lfile ]; and test -d $file
	    cd $file
	    break
	end
    end
end
