for i in {10..1}
do
  DATE="$(date -d "-${i} days" +"%Y-%m-%d 12:00:00")"

  echo "$DATE" >> activity.txt
  git add activity.txt

  GIT_AUTHOR_DATE="$DATE" \
  GIT_COMMITTER_DATE="$DATE" \
  git commit -m "Коммит от $DATE"
done
