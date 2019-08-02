

$ORIGIN azzouz.ephec-ti.be.
$TTL	3600
azzouz.ephec-ti.be.	IN	SOA	ns.azzouz.ephec-ti.be. he201575@students.ephec.be. (

		         2019031001	; Serial
			 3600		; Refresh
			  600		; Retry
			86400		; Expire
			 600 )	; Negative Cache TTL

@	 IN	 NS 	ns
	IN 	A	 51.77.203.31
	IN      TXT     "v=spf1 include:mail.azzouz.ephec-ti.be ip4:51.77.203.31 -all"
@		                       IN	     MX	 10	 mail
azzouz.ephec-ti.be.      IN      NS      ns.azzouz.ephec-ti.be.
ns.azzouz.ephec-ti.be.   IN      A   51.77.203.31
www.azzouz.ephec-ti.be.  IN      A   51.77.203.31
b2b.azzouz.ephec-ti.be.  IN      A   51.77.203.31
intranet.azzouz.ephec-ti.be.  IN      A   51.77.203.31
mail    	       IN      A   51.77.203.31
sip				IN	A	51.77.203.32
_sip._udp		SRV	0	0	5060	sip
_sip._tcp		SRV 0	0	5060	sip

smtp		                   IN	     CNAME	 mail
pop3		                   IN	     CNAME	 mail
imap		                   IN	     CNAME	 mail



