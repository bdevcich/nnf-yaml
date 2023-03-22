sleep 3

for i in ${NNF_CONTAINER_HOSTNAMES}; do
	host="$i.$NNF_CONTAINER_SUBDOMAIN.$NNF_CONTAINER_DOMAIN"
	echo "host is $host, attempting nslookup..."
	nslookup $host
done

echo $DW_JOB_foo_local_storage
echo $DW_PERSISTENT_foo_persistent_storage
done
