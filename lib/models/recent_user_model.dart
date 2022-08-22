class RecentUser {
  final String? icon, name, date, role, email, posts, test;

  RecentUser(
      {this.icon, this.name, this.date, this.role, this.email,this.posts, this.test});
}
class RecentUser2 {
  final String? icon, name, total, nb, cart, parti, pay, retro;

  RecentUser2(
      {this.icon, this.name, this.total, this.nb, this.cart, this.parti, this.pay, this.retro});
}
class ListUsersEntreprise {
  final String? icon, name, souscri, contact, collabo, parti, jour, paiement;

  ListUsersEntreprise(
      {this.icon, this.name, this.souscri, this.contact, this.collabo, this.parti, this.jour, this.paiement});
}
class ListUsersCollab {
  final String? icon, name, entreprise, email, nb, total, cart, bon;

  ListUsersCollab(
      {this.icon, this.name, this.entreprise, this.email, this.nb, this.total, this.cart, this.bon});
}
class ListUsersProd {
  final String? icon, name, descri, ville, contact, categorie, nbpro, retro, nbrec;

  ListUsersProd(
      {this.icon, this.name, this.descri, this.ville, this.contact, this.categorie, this.nbpro, this.retro, this.nbrec});
}

List recentUsers = [
  RecentUser(
    icon: "assets/icons/xd_file.svg",
    name: "RECOLTE n°1 du 12/04/22",
    role: "951€",
    email: "46",
    date: "20.67€",
    posts: "29KM",
    test:"Terminée",
    
  ),
  RecentUser(
    icon: "assets/icons/Figma_file.svg",
    name: "ENTREPRISE #1",
    role: "120€",
    email: "23",
    date: "5.22€",
    posts: "33km",
    test:"Terminée",
  ),
  RecentUser(
    icon: "assets/icons/doc_file.svg",
    name: "ENTREPRISE #2",
    role: "200€",
    email: "13",
    date: "15.38€",
    posts: "32",
    test:"Terminée",
  ),
  RecentUser(
    icon: "assets/icons/sound_file.svg",
    name: "ENTREPRISE #3",
    role: "564€",
    email: "10",
    date: "56.40€",
    posts: "3",
    test:"Terminée",
  ),
  RecentUser(
    icon: "assets/icons/media_file.svg",
    name: "RECOLTE n°2 du 26/04/22",
    role: "1037€",
    email: "49",
    date: "21.16€",
    posts: "2",
    test:"En cours",
  ),
  RecentUser(
    icon: "assets/icons/pdf_file.svg",
    name: "ENTREPRISE #1",
    role: "342€",
    email: "26",
    date: "26.31€",
    posts: "3",
    test: "Terminée",
  ),
  RecentUser(
    icon: "assets/icons/excle_file.svg",
    name: "ENTREPRISE #2",
    role: "100€",
    email: "10",
    date: "3.85€",
    posts: "34",
    test:"En cours",
  ),
  RecentUser(
    icon: "assets/icons/excle_file.svg",
    name: "ENTREPRISE #3",
    role: "528€",
    email: "13",
    date: "52.80€",
    posts: "13",
    test:"A livrer",
  ),
   RecentUser(
    icon: "assets/icons/media_file.svg",
    name: "RECOLTE n°3 du 10/05/22",
    role: "1055€",
    email: "49",
    date: "21.53€",
    posts: "2",
    test:"En cours",
  ),
   RecentUser(
    icon: "assets/icons/pdf_file.svg",
    name: "ENTREPRISE #1",
    role: "342€",
    email: "13",
    date: "26.31€",
    posts: "3",
    test:"En cours",
  ),
  RecentUser(
    icon: "assets/icons/excle_file.svg",
    name: "ENTREPRISE #2",
    role: "100€",
    email: "26",
    date: "3.85€",
    posts: "34",
    test:"En cours",
  ),
  RecentUser(
    icon: "assets/icons/excle_file.svg",
    name: "ENTREPRISE #3",
    role: "528€",
    email: "10",
    date: "52.80€",
    posts: "34",
    test:"A livrer",
  ),
  
];
List recentUsers2 = [
  RecentUser2(
    icon: "assets/icons/xd_file.svg",
    name: "RECOLTE n°1 du 12/04/22",
    total: "951€",
    nb:"25",
    cart: "17.29",
    parti: "1",
    pay:"Pas effectué",
    retro:"Fait le 4/06/22",
  ),
  RecentUser2(
    icon: "assets/icons/xd_file.svg",
    name: "Producteur #1",
    total: "951€",
     nb: "32",
    cart: "17.29",
    parti: "1",
    pay:" ",
    retro:"Non",
  ),
  RecentUser2(
      icon: "assets/icons/xd_file.svg",
    name: "Producteur #2",
    total: "951€",
     nb: "12",
    cart: "17.29",
    parti: "1",
    pay:" ",
    retro:"Oui",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #3",
    total: "951€",
     nb: "14",
    cart: "17.29",
    parti: "1",
    pay:" ",
    retro:"Oui",
  ),
  RecentUser2(
   icon: "assets/icons/xd_file.svg",
    name: "Producteur #4",
    total: "951€",
     nb: "26",
    cart: "17.29",
    parti: "1",
    pay:" ",
    retro:"Oui",
  ),
  RecentUser2(
    icon: "assets/icons/xd_file.svg",
    name: "RECOLTE n°2 du 26/04/22",
    total: "951€",
     nb: "17",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Fait le 5/04/22",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #1",
    total: "951€",
     nb: "6",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Non",
  ),
  RecentUser2(
    icon: "assets/icons/xd_file.svg",
    name: "Producteur #2",
    total: "342",
     nb: "18",
    cart: "18",
    parti: "1",
    pay:"Facture",
    retro:"Non",

  ),
   RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #3",
    total: "951€",
     nb: "9",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Oui",
  ),
   RecentUser2(
       icon: "assets/icons/xd_file.svg",
    name: "Producteur #4",
    total: "951€",
     nb: "4",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Oui",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "RECOLTE n°3 du 10/05/22",
    total: "951€",
     nb: "30",
    cart: "17.29",
    parti: "1",
    pay:"Fait le 15/04/22",
    retro:"Fait le 16/04/22",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #1",
    total: "951€",
     nb: "17",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Oui",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #2",
    total: "951€",
     nb: "10",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Oui",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #3",
    total: "951€",
     nb: "17",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Oui",
  ),
  RecentUser2(
     icon: "assets/icons/xd_file.svg",
    name: "Producteur #4",
    total: "951€",
     nb: "3",
    cart: "17.29",
    parti: "1",
    pay:"Facture",
    retro:"Non",
  ),
  
];

List usersEntreprise = [
  ListUsersEntreprise(
    icon: "assets/icons/xd_file.svg",
    name: "Entreprise #1",
    souscri: "19/05/22",
    contact: "46",
    collabo: "46",
    parti: "12",
    jour:"Mercredi",
    paiement:"Virement"
    
  ),
  ListUsersEntreprise(
    icon: "assets/icons/xd_file.svg",
    name: "Entreprise #2",
    souscri: "24/06/22",
    contact: "56",
    collabo: "25",
    parti: "8",
    jour:"Jeudi",
    paiement:"Virement"
    
  ),
  
];
List usersCollab= [
  ListUsersCollab(
    icon: "assets/icons/xd_file.svg",
    name: "Nom #1",
    entreprise: "Entreprise #1",
    email: "m*****@gmail.com",
    nb: "10",
    total: "46€",
    cart:"12€",
    bon:"Oui"
    
  ),
  ListUsersCollab(
    icon: "assets/icons/xd_file.svg",
    name: "Nom #2",
    entreprise: "Entreprise #2",
    email: "l*****@gmail.com",
    nb: "15",
    total: "52€",
    cart:"14€",
    bon:"Oui"
    
  ),
  
];
List usersProd = [
  ListUsersProd(
    icon: "assets/icons/xd_file.svg",
    name: "Producteur #1",
    descri: "Descriptif #1",
    ville: "Montpellier",
    contact: "12",
    categorie:"Catégorie #1",
    nbpro:"15",
    retro:"Valeur",
    nbrec:"16"
    
  ),
 ListUsersProd(
    icon: "assets/icons/xd_file.svg",
    name: "Producteur #2",
    descri: "Descriptif #2",
    ville: "Montpellier",
    contact: "12",
    categorie:"Catégorie #2",
    nbpro:"14",
    retro:"Valeur",
    nbrec:"18"
    
  ),
  
];

