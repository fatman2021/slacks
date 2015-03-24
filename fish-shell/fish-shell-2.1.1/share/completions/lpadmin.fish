complete -c lpadmin -s c -d 'Adds the named printer to class' -x
complete -c lpadmin -s i -d 'Sets a  System V style interface script for the printer' -x
complete -c lpadmin -s m -d 'Sets a standard System V interface script or PPD file ' -x
complete -c lpadmin -s R -d 'Deletes the named option from printer' -xa '(__fish_print_lpr_options)'
complete -c lpadmin -s r -d 'Removes the named printer from class. If the resulting class becomes empty it is removed' -x

complete -c lpadmin -s v -d 'Sets the device-uri attribute of the printer queue' -r
complete -c lpadmin -s D -d 'Provides a textual description of the destination' -x
complete -c lpadmin -s E -d 'Enables the destination and accepts jobs'
complete -c lpadmin -s L -d 'Provides a textual location of the destination' -x
complete -c lpadmin -s P -d 'Specifies a PostScript Printer Description file to use with the printer' -xa "(__fish_complete_suffix .ppd; __fish_complete_suffix .ppd.gz)"
complete -c lpadmin -s o -xa cupsIPPSupplies=true  -d 'Specifies whether IPP supply level values should be reported'
complete -c lpadmin -s o -xa cupsIPPSupplies=false -d 'Specifies whether IPP supply level values should be reported'
complete -c lpadmin -s o -xa cupsSNMPSupplies=true -d 'Specifies whether SNMP supply level (RFC 3805) values should be reported'
complete -c lpadmin -s o -xa cupsSNMPSupplies=false -d 'Specifies whether SNMP supply level (RFC 3805) values should be reported'
complete -c lpadmin -s o -xa job-k-limit= -d 'Sets the kilobyte limit for per-user quotas. The value is an integer number of kilobytes (1024)'
complete -c lpadmin -s o -xa job-page-limit=  -d 'Sets the page limit for per-user quotas (int) '
complete -c lpadmin -s o -xa job-quota-period= -d 'Sets the accounting period for per-user quotas (sec)'
complete -c lpadmin -s o -xa job-sheets-default= -d 'Sets the default banner page(s) to use for print jobs'
complete -c lpadmin -s o -d 'Sets a  PPD option for the printer' -xa '(__fish_complete_lpr_option)'
#complete -c lpadmin -s o -d 'Sets a default server-side option for the destination' -xa '(__fish_complete_lpr_option | sed "s/=/-default=/")'
complete -c lpadmin -s o -d 'Sets the binary communications program to use when printing' -xa 'port-monitor=none port-monitor=bcp port-monitor=tbcp'
complete -c lpadmin -s o -d 'Sets the error policy to be used when the printer backend is unable to send the job to the printer. ' -xa 'printer-error-policy=abort-job printer-error-policy=retry-job printer-error-policy=retry-current-job printer-error-policy=stop-printer'
complete -c lpadmin -s o -xa printer-is-shared=true -d 'Sets the destination to shared/published or unshared/unpublished'
complete -c lpadmin -s o -xa printer-is-shared=false -d 'Sets the destination to shared/published or unshared/unpublished'
complete -c lpadmin -s o -d 'Sets the IPP operation policy associated with the destination' -xa "printer-policy=(cat /etc/cups/cupsd.conf | grep \<Policy | sed 's/<Policy \(.\+\)>/\1/')"

complete -c lpadmin -s u -xa 'allow:all allow:none (__fish_complete_list , __fish_complete_users allow:)' -d 'Sets user-level access control on a destination. Names starting with "@" are interpreted as UNIX group'
complete -c lpadmin -s u -xa '(__fish_complete_list , __fish_complete_groups allow: @)' -d 'Sets user-level access control on a destination. Names starting with "@" are interpreted as UNIX group'
complete -c lpadmin -s u -xa 'deny:all deny:none (__fish_complete_list , __fish_complete_users deny:)' -d 'Sets user-level access control on a destination. Names starting with "@" are interpreted as UNIX group'
complete -c lpadmin -s u -xa '(__fish_complete_list , __fish_complete_groups deny: @)' -d 'Sets user-level access control on a destination. Names starting with "@" are interpreted as UNIX group'

