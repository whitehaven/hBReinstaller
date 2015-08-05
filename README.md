# hBReinstaller

I have tried many times to get rid of unnecessary leaf packages when I remove a root-positioned package, but I've never found a better way than to reinstall everything.

I've tried this as a bash function:
# Brew deleter
function brewnuke
{
	echo "----> Nuking brew package: $1";
	echo "====> brew rm $1"
	brew rm $1;
	echo "+---> Package nuked"
	
	echo ""
	echo "----> Nuking brew dependencies"
	echo "====> brew rm $(join <(brew leaves) <(brew deps $1))"
	brew rm $(join <(brew leaves) <(brew deps $1));-	
	echo "+---> $1 nuked and unique dependencies removed.";
	
	echo ""
	echo "----> Cleaning Cellar..."
	brew cleanup -s --force;
	echo "+---> Cellar cleaned up."
}

But, inevitably packages get left that you don't want.

So, this simple bash script just strips out everything, cleans up, and reinstalls the ones you are sure you like from the "Gospel" list, thus eliminating the clogging. I know it takes forever, but it sure is clean and it feels great when you know you have exactly what you need and nothing else. Like hiking.