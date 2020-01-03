#doitlive speed: 1
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
watch -t -n 0.2 'echo date:\\t$(date +%Y-%m-%d)\\nhour:\\t$(date +%H\:%M\:%S)\\nzone:\\t$(date +%Z%z)'
