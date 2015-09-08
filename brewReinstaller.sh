echo "> > > WHI hBrew Reinstaller 3.0 < < <"

# Remove All Packages
echo "---> Removing All Packages";
for packages in $( brew list );
do
	brew rm $packages;
done;

# Cleanup brew
echo "---> Cleaning hBrew";
brew cleanup -s --force;

brew tap Homebrew/homebrew-dupes;
brew tap beeftornado/rmtree;

# Reinstall Gospel Packages
echo "---> Reinstalling Gospel Packages"
brew install gcc;
brew install axel;
brew install bash-completion;
brew install cheat;
brew install cmus;
brew install colordiff;
brew install coreutils;
brew install dtrx;
brew install duff;
brew install ffmpeg;
brew install htop-osx;
brew install html2text;
brew install iftop;
brew install imagemagick;
brew install irssi;
brew install jpeg;
brew install jpegoptim;
brew install libav;
brew install links;
brew install memtester;
brew install mplayer;
brew install mtr;
brew install nmap;
brew install optipng;
brew install parallel;
brew install p7zip;
brew install pdfcrack;
brew install pianobar;
brew install pv;
brew install sf-pwgen;
brew install renameutils;
brew install rmtree;
brew install rsync;
brew install rtorrent;
brew install slurm;
brew install sox;
brew install speedtest_cli;
brew install thefuck;
brew install tig;
brew install tmux;
brew install trash;
brew install tree;
brew install youtube-dl;
brew install wget;

# Cleanup brew
brew cleanup -s --force;
