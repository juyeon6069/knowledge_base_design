#Part of KM code - Intermediate and Advanced
(*Spongebob has
    (instance-of ((a Sponge)))
    (salary (1500))
    (job ((a Job with 
            (make ((the produces of (the restaurant of (the favorite of (the girlfriend of (the friend of Spongebob)))))))
    (sex (male))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Positive Clean Friendly))
                    (no (Notcurious Notdumb)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (Shirt))
                                (bottom (Squarepants))
                                (shoes (Yes)))))
                    (color (Yellow))
                    (tooth (Big))
                    (smile (Yes)))))))))

(*Spongebob has
    (friend ((a Friend with
                (name (Larry))
                (instance-of ((a Fish)))
                (lives-in (vikini-city))
                (sex (male))
                (favorite ((a Favorite with
                        (name (Krabby-Patty))
                        (price (3.99))
                        (category (burger))
                        (restaurant (Krusty-Krab)))))))))

(*Patrick has
    (instance-of ((a Fish)))
    (salary (0))
    (apply (applicant))
    (salary-want (100))
    (sex (male))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Positive Friendly))
                    (no (Clean Notcurious Notdumb)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (No))
                                (bottom (Flowerpants))
                                (shoes (No)))))
                    (color (Pink))
                    (tooth (No))
                    (smile (Yes))))))

(*Squidward has
    (instance-of ((a Fish)))
    (salary (1500))
    (sex (male))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Clean Notcurious Notdumb))
                    (no (Positive Friendly)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (Shirt))
                                (bottom (No))
                                (shoes (No)))))
                    (color (Blue))
                    (tooth (No))
                    (smile (No))))))


(*Sandy has
    (instance-of ((a Animal)))
    (salary (1500))
    (salary-want (3500))
    (apply (applicant))
    (sex (female))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Positive Clean Friendly Notdumb))
                    (no (Notcurious)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (Spacesuit))
                                (bottom (Spacesuit))
                                (shoes (Yes)))))
                    (color (Brown))
                    (tooth (Yes))
                    (smile (Yes))))))

(*Pearl has
    (instance-of ((a Fish)))
    (salary (2000))
    (salary-want (3000))
    (apply (applicant))
    (sex (female))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Notcurious Friendly Notdumb))
                    (no (Positive Clean)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (Tshirt))
                                (bottom (Skirt))
                                (shoes (Yes)))))
                    (color (Blue))
                    (tooth (Yes))
                    (smile (Yes))))))

(*Mr.Krab has
    (instance-of ((a Fish)))
    (salary (5000000))
    (sex (male))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Clean Notcurious Friendly Notdumb))
                    (no (Positive)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (Shirt))
                                (bottom (Pants))
                                (shoes (No)))))
                    (color (Red))
                    (tooth (No))
                    (smile (Yes))))))

(*Plankton has
    (instance-of ((a Fish)))
    (salary (10000))
    (sex (male))
    (lives-in (vikini-city))
    (personality ((a Personality with
                    (yes (Notcurious))
                    (no (Positive Clean Friendly Notdumb)))))
    (appearance ((a Appearance with
                    (outfit ((a Outfit with
                                (top (No))
                                (bottom (No))
                                (shoes (No)))))
                    (color (Green))
                    (tooth (No))
                    (smile (No))))))

#INTERMEDIATE QUERIES
# Which fish thinks  of itself as a famous fish  in  VIKINI city?
#(Find the fish which has friends 0.7 times or more the number of SpongeBob's friends)
(allof (the instances of Fish) where 
        ((the number of (the friend of It)) 
        >= (0.7 * (the number of (the friend of *Spongebob)))))

#Which character has negative personality?
(allof (the lives-in-of of (vikini-city)) 
        where ((the number of (allof ?x in (the no of (the personality of It)) 
                where ((?x) = (Positive)))) = 1))

#ADVANCED QUERIES
#Mr.Krab is trying to hire an employee.
#First, he considers firing if the desired wage of the applicant exceeds $3000.
(every Fish has
    (fail ((if ((the salary-want of Self) > 3000) 
            then (*Yes)
            else (*No)))))
(every Animal has
    (fail ((if ((the salary-want of Self) > 3000)
            then (*Yes)
            else (*No)))))

(the fail of *Sandy)
(the fail of *Pearl)
(the fail of *Patrick)

#Sandy applied again after contracting wage negotiation with Mr.Krab.
#Mr. Krab wants to hire positive, neat, not curious, friendly, and not dumb applicant.
#If more than four conditions are met, it will be hired
(allof (the apply-of of (applicant)) where
        ((the number of (the yes of (the personality of It)))
        >= 4))
        
#Can Plankton and Patrick buy one krabby patty per a day?
(every Fish has
        (everyday-Krabby-Patty(
                (if ((the salary of Self) >= (30 * (the price of (the favorite of (the friend of *Spongebob)))))
                then (*Yes)
                else (*No)))))

(the everyday-Krabby-Patty of *Plankton)
(the everyday-Krabby-Patty of *Patrick)