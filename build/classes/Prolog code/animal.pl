mammal(armadillo).
mammal(ass).
mammal(bat).
mammal(bear).
mammal(beaver).
mammal(cat).
mammal(chimpanzee).
mammal(cow).
mammal(coyote).
mammal(deer).
mammal(dog).
mammal(dolphin).
mammal(elephant).
mammal(fox).
mammal(panda).
mammal(gibbon).
mammal(giraffe).
mammal(goat).
mammal(gopher).
mammal(hedgehog).
mammal(hippopotamus).
mammal(horse).
mammal('humpback whale').
mammal(jaguar).
mammal(kangaroo).
mammal(koala).
mammal(leopard).
mammal(lion).
mammal(llama).
mammal(lynx).
mammal(mole).
mammal(monkey).
mammal(mouse).
mammal(narwhal).
mammal(orangutan).
mammal(orca).
mammal(otter).
mammal(ox).
mammal(pig).
mammal('polar bear').
mammal(porcupine).
mammal(puma).
mammal(rabbit).
mammal(raccoon).
mammal(rat).
mammal(rhinoceros).
mammal(sheep).
mammal(squirrel).
mammal(tiger).
mammal(walrus).
mammal(weasel).
mammal(wolf).
mammal(zebra).

bird(crow).
bird(peacock).
bird(dove).
bird(sparrow).
bird(goose).
bird(ostrich).
bird(pigeon).
bird(turkey).
bird(hawk).
bird('bald eagle').
bird(raven).
bird(pigeon).
bird(parrot).
bird(flamingo).
bird(seagull).
bird(swallow).
bird(blackbird).
bird(penguin).
bird(robin).
bird(swan).
bird(owl).
bird(stork).
bird(woodpecker).

fish(anchovy).
fish(barracuda).
fish(betta).
fish('blue tang').
fish(bream).
fish(bullhead).
fish(butterflyfish).
fish(carp).
fish(clownfish).
fish(eel).
fish(flounder).
fish(herring).
fish(lionfish).
fish(puffer).
fish(shark).
fish(sturgeon).
fish(sunfish).
fish(tarpon).
fish(tuna).
fish(whale).
fish(catfish).
fish('climbing perch').
fish('kissing fish').
fish(sharkcatfish).
fish(sawfish).
fish('grey mullet').
fish(dolphin).
fish(grouper).

reptile(agamid).
reptile(alligator).
reptile('blind snake').
reptile(boa).
reptile(caiman).
reptile(carapace).
reptile(chameleon).
reptile(cobra).
reptile(constrictor).
reptile(colubrid).
reptile('coral snake').
reptile(crocodile).
reptile(crocodilian).
reptile(cryptodira).
reptile('flying lizard').
reptile('freshwater turtle').
reptile(gecko).
reptile(gharial).
reptile('gila monster').
reptile(iguana).
reptile(lizard).
reptile('legless lizard').
reptile(mamba).
reptile('monitor lizard').
reptile(plastron).
reptile(pleurodira).
reptile(python).
reptile(rattlesnake).
reptile('sea snake').
reptile('sea turtle').
reptile('shieldtail snake').
reptile(skink).
reptile(tortoise).
reptile(turtle).
reptile(tuatara).
reptile(venom).
reptile(viper).
reptile('wall lizard').
reptile('whiptail lizard').

amphibian(frog).
amphibian(salamander).
amphibian(caecilians).
amphibian(labyrinthod).
amphibian(amphiuma).
amphibian(anthracosauria).

arthropod(moth).
arthropod(bee).
arthropod(butterfly).
arthropod(spider).
arthropod(crab).
arthropod(scropion).
arthropod(flea).
arthropod(bug).
arthropod(ant).
arthropod(dragonfly).
arthropod(mantis).
arthropod(fly).
arthropod(mosquito).
arthropod(grasshopper).
arthropod(beetle).
arthropod(cockroach).
arthropod(centipede).
arthropod(worm).
arthropod(louse).

animal(X):- mammal(X),!.
animal(X):- bird(X),!.
animal(X):- fish(X),!.
animal(X):- reptile(X),!.
animal(X):- amphibian(X),!.
animal(X):- arthropod(X),!.


multicellular(X):-animal(X).
heterotroph(X):-animal(X).
moveable(X):-animal(X).
reproducesexually(X):-animal(X).


milk(Y):- mammal(Y).
hair(Y):- mammal(Y).
neocortex(Y):- mammal(Y).


feather(Z):-bird(Z).
egg(Z):-bird(Z).
beak(Z):-bird(Z).


liveinwater(A):-fish(A).
gills(A):-fish(A).
scales(A):-fish(A).
fins(A):-fish(A).


scalyskin(B):-reptile(B).
landborn(B):-reptile(B).
coldblooded(B):-reptile(B).


liveinwater(C):-amphibian(C).
liveinland(C):-amphibian(C).
waterborn(C):-amphibian(C).


segmentedbody(D):- arthropod(D).
manyjointedleg(D):- arthropod(D).
exoskeleton(D):- arthropod(D).
coldblooded(D):- arthropod(D).

animaltype(E,Type):- animal(E),mammal(E),Type = mammal,!.
animaltype(E,Type):- animal(E),bird(E),Type = bird ,!.
animaltype(E,Type):- animal(E),fish(E),Type = fish ,!.
animaltype(E,Type):- animal(E),reptile(E),Type = reptile ,!.
animaltype(E,Type):- animal(E),amphibian(E),Type =  amphibian ,!.
animaltype(E,Type):- animal(E),arthropod(E),Type = arthopod ,!.


property(animal,['Multi cellular','Heterotroph','Can move by its own'
                 ,'Reproduce sexually']).
property(mammal,['Produce milk','Has hair or fur','Has a neocortex']).
property(bird,['Has feather','Lays hard shelled eggs','Has a beak']).
property(fish,['Lives in water','Has gills','Has scales','Has fins']).
property(reptile,['Has scaly skin','Born in land','Cold blooded']).
property(amphibian,['Lives in water','Lives in land','Born in water']).
property(arthropod,['Segmented body','Has many jointed legs','Exoskeleton'
                    ,'Cold blooded']).



%code below will be used for learning purpose
len([],0).
len([_|T],L):-len(T,L1),L is L1+1.
similar([],_).
similar([H|T],Y):-property(_,Y),member(H,Y),similar(T,Y).
classify(Properties,A):- similar(Properties,Y),len(Properties,L)
                                    ,len(Y,B),L==B,property(A,Y).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%% New facts will be added below
mammal('hed led').
mammal('nsb dfg').