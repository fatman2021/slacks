function __fish_complete_screen --description "Print a list of running screen sessions"
	screen -list |sgrep \^\t.\*\(.\*\)|sed -e 's/\t\(.*\)\t(\(.*\))/\1'\t'Screen: \2/'
end

complete -c screen -x
complete -c screen -s a -d 'Include all capabilitys'
complete -c screen -s A -d 'Adapt window size'
complete -c screen -s c -r -d 'Specify init file'
complete -c screen -s d -d 'Detach screen' -a '(__fish_complete_screen)'
complete -c screen -s D -d 'Detach screen' -a '(__fish_complete_screen)'
complete -c screen -s r -d 'Reattach session' -a '(__fish_complete_screen)'
complete -c screen -s R -d 'Reattach/create session'
complete -c screen -o RR -d 'Reattach/create any session'
complete -c screen -s e -x -d 'Escape character'
complete -c screen -s f -d 'Flow control on'
complete -c screen -o fn -d 'Flow control off'
complete -c screen -o fa -d 'Flow control automatic'
complete -c screen -s h -x -d 'History length'
complete -c screen -s i -d 'Interrupt display on C-c'
complete -c screen -s l -d 'Login on'
complete -c screen -o ln -d 'Login off'
complete -c screen -o ls -d 'List sessions'
complete -c screen -o list -d 'List sessions'
complete -c screen -s L -d 'Log on'
complete -c screen -s m -d 'Ignore $STY'
complete -c screen -s O -d 'Optimal output'
complete -c screen -s p -d 'Preselect window'
complete -c screen -s q -d 'Quiet mode'
complete -c screen -s s -r -d 'Set shell'
complete -c screen -s S -x -d 'Session name'
complete -c screen -s t -x -d 'Session title'
complete -c screen -s U -d 'UTF-8 mode'
complete -c screen -s v -d 'Display version and exit'
complete -c screen -o wipe -d 'Wipe dead sessions'
complete -c screen -s x -d 'Multi attach'
complete -c screen -s X -r -d 'Send command'

