# Exercise 05

datSleep <- sleep

# 1)
groupSet <- unique(datSleep$group)
for (group in groupSet) {
  print(paste0(
    "Group: ", group,
    "; Mean extra: ", mean(datSleep$extra[datSleep$group==group])
  ))
}
