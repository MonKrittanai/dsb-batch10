T2 <- function() {
  number_rounds1 <- as.numeric(readline("How many times did you play? : "))
  User_score1 <- 0
  Comp_score1 <- 0

  for (i in 1:number_rounds1) {
    choices <- c(1, 2, 3)
    print(paste0("Round : ", i))
    User_choose <- readline("Choose (1 = Hammer, 2 = Scissors, 3 = Paper) : ")
    Comp_choose <- sample(choices, 1)
    print(paste0("User : ", User_choose))
    print(paste0("COM : ", Comp_choose))

    if (User_choose == Comp_choose) {
      print("Draw")
    } else if (User_choose == 1 & Comp_choose == 2 ||
               User_choose == 2 & Comp_choose == 3 ||
               User_choose == 3 & Comp_choose == 1) {
      print("User Win")
      User_score1 <- User_score1 + 1
    } else {
      print("Comp Win")
      Comp_score1 <- Comp_score1 + 1
    }
  }
  print(paste0("Final score: User : ", User_score1, ", COM : ", Comp_score1))
  if (User_score1 > Comp_score1 ) {
    print("Winner is User")
  } else {print("Winner is Comp")}
}

T2()
