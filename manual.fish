function manual -d "Open our manual (no argument) or an equipment manual (one of 'weidmuller', 'wm' or 'ms')"
    # Chech is search term is there
    if test -d $argv
	# No argument, open the lates version of our manual
	set -g greatest 1
	set -g manual_path "None"
	for file in /home/kenneth/Dropbox\ \(Spectro\ Inlets\)/Development/Documentation/Manual/ECMS_user_manual_v1\.*.pdf
	    set filename (basename $file)
	    set version_ (string split '.' $filename)
	    if test $version_[2] > $greatest
		set -g greatest $version_[2]
		set -g manual_path $file
	    end
	end
	echo "Openning latest version of our manual" $manual_path
	evince "$manual_path" &
    else
	set -g search_term (string lower $argv[1])
	echo "## $search_term ##"
	switch $search_term
	    case wm
		set docpath /home/kenneth/Dropbox\ \(Spectro\ Inlets\)/Industrial\ R\&D/Manuals/weidmuller_main.pdf
	    case weidmuller
		set docpath /home/kenneth/Dropbox\ \(Spectro\ Inlets\)/Industrial\ R\&D/Manuals/weidmuller_main.pdf
	    case ms
		set docpath /home/kenneth/Dropbox\ \(Spectro\ Inlets\)/Development/Software/Pfeiffer\ API/API\ Reference_EULA\(FW1.6\).pdf
	end
	if set -q docpath
	    echo "Opening $search_term doc: "$docpath
	    evince "$docpath" &
	else
	    echo "not found"
	end

		
    end

end
