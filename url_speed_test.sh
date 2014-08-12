#This is a simple speedtest to test file responsive.
#created by Jeff Rangel - jeff.rangel@rackspace.com

echo ""
echo "http url?"
read "url"
echo ""

for i in {1..50}; do curl -w '\nLookup time:\t%{time_namelookup}\nConnect time:\t%{time_connect}\nPreXfer time:\t%{time_pretransfer}\nStartXfer time:\t%{time_starttransfer}\n\nTotal time:\t%{time_total}\n' -o /dev/null -s $url; done

echo ""
echo ""
echo "done."
