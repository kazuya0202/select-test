# apt-fast install
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
alias af='sudo apt-fast'
# alias af='sudo apt-fast' >> ~/.bashrc		# register alias

# ubuntu update
af update -y

bash ./darknet-ubuntu-setup.sh
bash ./darknet-opencv-ubuntu-setup.sh

# display messages
echo "Rewrite the Makefile."
echo -e "According to 'darknet-opencv-ubuntu-setup.sh'.  ...\n"

# display file
cat ./darknet-opencv-ubuntu-setup.sh
