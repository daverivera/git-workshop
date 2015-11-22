# Download and install pip
echo "Downloading pip..."
wget https://bootstrap.pypa.io/get-pip.py
echo "Installing pip.."
python get-pip.py
echo "pip installed"
echo ""

# Installing sphinx and
echo "Installing sphynx..."
pip install sphinx sphinx-autobuild
echo "Sphinx installed!"
echo ""

# Installing RTD theme
echo "Installing RTD theme..."
pip install sphinx_rtd_theme
echo "RTD theme installed"
echo ""

# Building the Doc
echo "Building..."
make html
echo "Launching documentation..."
firefox build/html/index.html
