
png("C:\\Users\\Deepali Singh\\Desktop\\Coursera\\plot1.png",width=480,height=480)
plot1 <- read.table("household_power_consumption.txt", header = T, sep = ";")
df <- as.data.frame(plot1[66637:69516,3],drop = false)
colnames(df) <- c("global_active_power")
g_a_p <- as.numeric(df$global_active_power)
hist(g_a_p, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "frequency")
dev.off()
