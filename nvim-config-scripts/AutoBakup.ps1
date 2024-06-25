# clean
rm -r D:/nvim-config-bak/nvim-config-* -Force

# cp files
cp -r D:/nvim/nvim-config-scripts/nvim/ D:/nvim-config-bak/nvim-config-scripts/ -Force
cp -r D:/nvim/nvim-config-data/nvim-data/site/autoload/ D:/nvim-config-bak/nvim-config-data/nvim-data/site/autoload/ -Force
cp D:/nvim/nvim-config-scripts/AutoBakup.ps1 D:/nvim-config-bak/nvim-config-scripts/ -Force

# get time stamp
$timestamp = Get-Date -Format "HH/dd/MM/yyyy"

# for git
cd D:/nvim-config-bak
git add .
echo "Auto upload $timestamp"
git commit -m "auto upload $timestamp"
git push

# cd back
cd D:\nvim\nvim-config-scripts\
