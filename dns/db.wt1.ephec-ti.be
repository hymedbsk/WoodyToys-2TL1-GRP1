$ORIGIN wt1.ephec-ti.be.
$TTL	604800
@		IN	SOA	ns.wt1.ephec-ti.be. admin.wt1.ephec-ti.be. (
		 2019030901		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
ns      IN      A       51.77.141.217
mail    IN      A       51.77.141.236
@       IN      NS      ns
        IN      A       51.77.141.217
        IN      MX      1       mail
web     IN      A       51.77.141.217
www     IN      CNAME   web
b2b     IN      CNAME   web