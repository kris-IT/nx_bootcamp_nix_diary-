# diary - приложение для ведения дневника
if [ ! -d "${DIARY_PATH}" ]
then
mkdir -p "${DIARY_PATH}"
fi
if [ -r "${DIARY_PATH}/.diaryrc" ]
then
	source "${DIARY_PATH}/.diaryrc"
else
 cat <<- EOF > "${DIARY_PATH}/.diaryrc"
 export DIARY_EDITOR=nano
	EOF
	source "${DIARY_PATH}/.diaryrc"
fi

# Обработка запуска без команды
@@ -109,3 +122,4 @@ function _diary
 COMPREPLY=( $(compgen -W "${opts}" -- ${word}) )
}
complete -F _diary diary
export DIARY_PATH="${HOME}/diary"
