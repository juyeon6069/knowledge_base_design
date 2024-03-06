#Part of KM code - Simple
(*Spongebob has
    (instance-of (Sponge))
    (employee-of (*Krusty-Krab))
    (friend (*Patrick *Sandy *Mr.Krab *Squidward *Plankton *Gary *Pearl))
    (friend-of (*Patrick *Sandy *Mr.Krab *Pearl *Gary))
    (family (*Gary))
    (enemy-of (*Squidward *Plankton))
    (likes (*Krabby-Patty *Fish))
    (neighbor (*Patrick *Squidward)))

(*Patrick has
    (instance-of (Fish))
    (friend (*Spongebob *Sandy *Mr.Krab *Squidward *Plankton *Gary *Pearl))
    (firend-of (*Spongebob *Sandy *Mr.Krab *Gary *Pearl))
    (enemy-of (*Squidward *Plankton))
    (likes (*Krabby-Patty))
    (neighbor (*Spongebob *Squidward)))

(*Squidward has
	(instance-of (Fish))
	(friend (*Sandy))
	(friend-of (*Sandy))
	(enemy (*Spongebob *Patrick))
	(dislikes (Fish *Spongebob *Krabby-Patty))
	(neighbor (*Spongebob *Patrick)))

(*Sandy has
	(instance-of (Animal))
	(friend (*Spongebob *Squidward *Patrick *Gary *Mr.Krab))
	(friend-of (*Spongebob *Squidward *Patrick *Gary *Mr.Krab))
	(likes (*Krabby-Patty)))

(*Mr.Krab has
	(instance-of (Fish))
	(friend (*Spongebob *Patrick *Squidward *Gary *Sandy *Pearl))
	(friend-of (*Spongebob *Patrick *Gary *Sandy *Pearl))
	(enemy (*Plankton))
	(enemy-of (*Plankton))
	(owns (*Krusty-Krab))
	(family (*Pearl))
	(likes (*Krabby-Patty)))

(*Plankton has
	(instance-of (Fish))
	(friend-of (*Spongebob *Patrick))
	(enemy (*Mr.Krab *Spongebob *Patrick))
	(enemy-of (*Mr.Krab))
	(likes (*Krabby-Patty)))

(*Gary has
	(instance-of (Fish))
	(friend (*Spongebob *Patrick *Sandy *Mr.Krab))
	(friend-of (*Spongebob *Patrick *Sandy *Mr.Krab))
	(family (*Spongebob)))

(*Pearl has
	(instance-of (Fish))
	(friend (*Spongebob *Patrick *Mr.Krab))
	(friend-of (*Spongebob *Patrick *Mr.Krab))
	(family (*Mr.Krab))
	(likes (*Krabby-Patty)))

(*Krusty-Krab has
	(instance-of (Restaurant))
	(produces (*Krabby-Patty))
	(employee (*Spongebob *Squidward)))

#SIMPLE QUERIES
(the neighbor of *Spongebob)
(the likes-of of *Krabby-Patty)
(the family of (the all-instances of Fish))
(the employee-of of(the friend of *Patrick))