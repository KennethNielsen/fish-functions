function ve -d "Activate and enter a virtual env"
    switch (count $argv)
	# If the command isn't given a virtual env name
	case 0
	    cd ~/venv
	case 1
	    set vename $argv[1]

	    # Change to venv dir
	    if test -d ~/venv/$vename
		cd ~/venv/$argv[1]
	    else
		echo "No vritual environment called $vename"
		return 1
	    end

	    # Activate it
	    source bin/activate.fish

	    # Finally cd into project dir
	    if test -d $argv[1]
		cd $argv[1]
	    else
		# 
		for file in *
		    set lfile (string lower $file)
		    if [ $lfile = $vename ] ; and test -d $file
			cd $file
		    end
		end
	    end
    end  # Switch
end  # Function
