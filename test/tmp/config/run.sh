nutch inject crawl/crawldb /root/nutch_source/runtime/local/conf/urls
nutch generate /root/nutch_source/crawl/crawldb /root/nutch_source/crawl/segments
s1=`ls -d /root/nutch_source/crawl/segments/2* | tail -1`
echo $s1
nutch fetch $s1
nutch parse $s1
nutch updatedb /root/nutch_source/crawl/crawldb $s1
nutch generate /root/nutch_source/crawl/crawldb /root/nutch_source/crawl/segments -topN 1000
s2=`ls -d /root/nutch_source/crawl/segments/2* | tail -1`
echo $s2
nutch fetch $s2
nutch parse $s2
nutch updatedb /root/nutch_source/crawl/crawldb $s2
nutch invertlinks crawl/linkdb -dir /root/nutch_source/crawl/segments
nutch index crawl/crawldb/ -linkdb /root/nutch_source/crawl/linkdb/ $s1 -filter -normalize -deleteGone
nutch index crawl/crawldb/ -linkdb /root/nutch_source/crawl/linkdb/ $s2 -filter -normalize -deleteGone
