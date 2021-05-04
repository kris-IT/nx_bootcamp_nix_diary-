 tail +2 src/diary_tail.sh; echo ""; \
    echo "}"; \
 tail +2 src/completion.sh; echo ""; \
    echo "export DIARY_PATH=\"\${HOME}/diary\""; \
} > diary.sh
cat <<EOF
Готово! 
