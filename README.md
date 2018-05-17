# SoCoCoin

Sococoin est un Token Ethereum qui suit la spécification
[ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md).

## Abstrait

Le but de ce token est de pousser des personnes à l'aise avec les outils informatiques
à venir en aide, de façon autonome et decentralisée, à des utilisateurs moins
au fait des nouvelles technologies en général et du web en particulier.

## Ecosystème

[Socomodule](https://github.com/socialement-competents/socomodule)

[Socoperator](https://github.com/socialement-competents/socoperator)

[Sococoin](https://github.com/socialement-competents/sococoin)

## Lexique

**Utilisateur** :
Utilisateur de la plateforme, qui va se connecter par exemple
par l'intermédiaire d'une borne PILA.
Connecté sur 

**Opérateur** :
Personne à l'aise avec les nouvelles technologies qui va aider, grâce à la
plateforme Socoperator, des personnes en difficulté, par chat.

**Organisme** :
Entreprise, institution publique, ONG ou même simple développeur qui installe
le Socomodule sur son site web.

## Attribution de tokens

Des tokens seront attribués à un opérateur après chaque opération d'aide,
en fonction de plusieurs critères :
- durée de l'intervention
- perception par l'utilisateur
- type d'aide
- ...

## Fonctionnement

L'organisme installe le socomodule sur son site web, ce qui va ajouter
un module de chat non intrusif sur chacune des pages souhaitée.

Les utilisateurs de ce site auront la possibilité d'ouvrir une conversation,
afin de demander de l'aide (envoyer un message dans le chat ouvre une conversation).

Tous les opérateurs verront cette nouvelle conversation s'afficher : ils auront
alors la possibilité de se l'attribuer, simplement en y répondant. Une
conversation qui est attribuée à un opérateur n'est ni visible ni accessible
par les autres opérateurs.

Il faut bien comprendre qu'un seul opérateur, avec un seul compte, peut dialoguer
avec et aider un utilisateur qui se trouve sur n'importe quelle plateforme web,
tout en restant sur la même application, Socoperator.

## Organismes ciblés

L'écosystème Socialement Compétents cible en priorité les institutions publiques.
Il est particulièrement adapté aux petits organismes (petites mairies, communautés
des communes etc.) et aux TPE / PME qui n'ont ni les moyens ni la vocation
d'avoir un service de support informatique dédié.
N'importe quelle entreprise, ONG, institution ou simple développeur peut inclure
sur son site web l'intégration Socomodule par un simple copier / coller
(voir [le CodePen](https://codepen.io/tsauvajon/pen/JvmrEo) d'exemple).

Quelques exemples d'utilisation :
- Démarches Pôle Emploi
- Déclarations d'impôts
- Toute autre démarche administrative
- Aide à l'utilisation d'un site web

## Récompenses possibles

Pôle emploi : formations gratuites, mise en avant de CV pour une offre d'emploi ...
Réductions sur les transports en commun (titres individuels ou abonnements)
Réductions sur la culture (par des subventions publiques)

## Challenges

Nous avons identifié un certain nombre de challenges qui seront à prendre en compte
lors d'une version de production de l'application.

Tout d'abord, il faudra récompenser au mieux les opérateurs, en favorisant
les comportements positifs et en diminuant les récompenses lors de comportements
négatifs. Cela demandera une étude et une réflexion en profondeur, car il est
facile de détourner un système qui se veut bénéfique en ne "jouant pas le jeu".

Ensuite, la fraude est possible: deux complices peuvent créer un nombre illimité
de conversations, et les clôturer afin de recevoir des récompenses sans réelle
valeur ajoutée. Plusieurs leviers peuvent être utilisés pour contrer ce problème :
vérifier, grâce à une IA, si les messages sont générés par un humain ou une
machine ; évaluer la durée de l'intervention ; vérifier le rythme des interventions
pour chaque opérateur ; limiter le nombre de conversations simultanées ...

Enfin, il faudrait donner la possibilité aux organisations utilisatrices de notre
suite de certifier ou non des opérateurs. Dans le cas de Pôle Emploi, par exemple,
Pôle Emploi devrait avoir la possibilité d'autoriser, ou non, un opérateur à
aider des utilisateurs sur leur plate-forme. Pôle Emploi pourrait proposer une
formation d'opérateur qui donnerait accès, sur la plateforme "Socoperator", à
l'aide aux utilisateurs des portails Pôle Emploi.

## Evolutions possibles

Sans rentrer dans les détails :

Il serait possible de faire une analyse d'expression de l'utilisateur afin de
déterminer sa satisfaction, et adapter les récompenses opérateur en conséquence.
Solution technique possible : modèle TensorFlow entraîné.

Il serait également judicieux de stocker le maximum d'informations sur les
résolutions de problèmes, et d'analyser de façon intelligente les problèmes
récurrents, les performances des opérateurs, les axes d'amélioration.
Solution technique possible : une stack BigData classique (Hadoop, MapReduce ...).

Les opérateurs peuvent facilement être remplacés par un ChatBot. Les récompenses
peuvent alors être omises, ou distribuées aux propriétaires du ChatBot ...
Solutions techniques possibles : ChatBot avec arbre décisionnel, ChatBot avec un
modèle entraîné par une IA.
