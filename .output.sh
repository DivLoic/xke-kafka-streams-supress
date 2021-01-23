#doitlive speed: 4
#doitlive shell: /bin/zsh
#doitlive commentecho: true
#doitlive prompt: {dir.cyan} {user.green} ◒ 🍹 ➜
cd window-final-result

# #Now we consume the aggregated sensor events
./gradlew -q --console=plain consumeResult
