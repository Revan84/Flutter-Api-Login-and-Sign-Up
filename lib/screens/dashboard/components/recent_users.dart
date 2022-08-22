import 'package:admin_recolt/widgets/constants.dart';
import 'package:admin_recolt/core/utils/colorful_tag.dart';
import 'package:admin_recolt/models/recent_user_model.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Les récoltes"),
                  ),
                  DataColumn(
                    label: Text("Total"),
                  ),
                  DataColumn(
                    label: Text("Nb Collaborateurs"),
                  ),
                  DataColumn(
                    label: Text("Panier moyen"),
                  ),
                  DataColumn(
                    label: Text("Km parcourus"),
                  ),
                  DataColumn(
                    label: Text("Status"),
                  ),
                  DataColumn(
                    label: Text("Modifier"),
                  ),
                
                ],
                rows: List.generate(
                  recentUsers.length,
                  (index) => recentUserDataRow(recentUsers[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class RecentUsers2 extends StatelessWidget {
  const RecentUsers2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Les récoltes"),
                  ),
                  DataColumn(
                    label: Text("Total"),
                  ),
                  DataColumn(
                    label: Text("Nb d'articles"),
                  ),
                  DataColumn(
                    label: Text("Panier moyen"),
                  ),
                  DataColumn(
                    label: Text("Participation"),
                  ),
                  DataColumn(
                    label: Text("Paiement"),
                  ),
                  DataColumn(
                    label: Text("Rétrocession"),
                  ),
                
                ],
                rows: List.generate(
                  recentUsers2.length,
                  (index) => recentUser2DataRow(recentUsers2[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ListUserEntreprise extends StatelessWidget {
  const ListUserEntreprise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Les entreprises"),
                  ),
                  DataColumn(
                    label: Text("Date de souscription"),
                  ),
                  DataColumn(
                    label: Text("Contact"),
                  ),
                  DataColumn(
                    label: Text("Nb de collaborateur"),
                  ),
                  DataColumn(
                    label: Text("Nb  de participation"),
                  ),
                  DataColumn(
                    label: Text("Jour de récolte"),
                  ),
                  DataColumn(
                    label: Text("Paiment Abonnement"),
                  ),
                
                ],
                rows: List.generate(
                  usersEntreprise.length,
                  (index) => usersEntrepriseDataRow(usersEntreprise[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ListUserCollab extends StatelessWidget {
  const ListUserCollab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Les collaborateurs"),
                  ),
                  DataColumn(
                    label: Text("Entreprise"),
                  ),
                  DataColumn(
                    label: Text("E-mail"),
                  ),
                  DataColumn(
                    label: Text("Nb  de participation"),
                  ),
                  DataColumn(
                    label: Text("Total achat "),
                  ),
                  DataColumn(
                    label: Text("Panier moyen"),
                  ),
                  DataColumn(
                    label: Text("Bon de commande"),
                  ),
                
                ],
                rows: List.generate(
                  usersCollab.length,
                  (index) => usersCollabDataRow(usersCollab[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ListUserProd extends StatelessWidget {
  const ListUserProd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text("Les producteurs"),
                  ),
                  DataColumn(
                    label: Text("Descriptif"),
                  ),
                  DataColumn(
                    label: Text("Ville"),
                  ),
                  DataColumn(
                    label: Text("Contact"),
                  ),
                  DataColumn(
                    label: Text("Catégorie"),
                  ),
                  DataColumn(
                    label: Text("Nb de produit"),
                  ),
                  DataColumn(
                    label: Text("Rétrocession"),
                  ),
                  DataColumn(
                    label: Text("Nb de récolte"),
                  ),
                
                ],
                rows: List.generate(
                  usersProd.length,
                  (index) => usersProdDataRow(usersProd[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


_showSimpleModalDialog(context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(20.0)),
            child: Container(
            constraints: BoxConstraints(maxHeight: 350),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
  ),
  onPressed: () {},
  child: Text('A livrer'),
),
                  TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
  onPressed: () {},

  child: Text('En cours'),
),
                  TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
  ),
  onPressed: () { },
  child: Text('Terminée'),
)
                ],
              ),
            ),
          ),
        );
    });
  }
  
DataRow recentUserDataRow(RecentUser userInfo, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            TextAvatar(
              size: 35,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 1,
              shape: Shape.Rectangle,
              text: userInfo.name!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                userInfo.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(userInfo.role).withOpacity(.2),
            border: Border.all(color: getRoleColor(userInfo.role)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(userInfo.role!))),
      DataCell(Text(userInfo.email!)),
      DataCell(Text(userInfo.date!)),
      DataCell(Text(userInfo.posts!)),
      DataCell(Text(userInfo.test!)),
      DataCell(
        Row(
          children: [
            TextButton(
              child: Text('Voir', style: TextStyle(color: greenColor)),
              onPressed: () {_showSimpleModalDialog(context);},
            ),
            SizedBox(
              width: 6,
            ),
            TextButton(
              child: Text("Supprimer", style: TextStyle(color: Colors.redAccent)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                          title: Center(
                            child: Column(
                              children: [
                                Icon(Icons.warning_outlined,
                                    size: 36, color: Colors.red),
                                SizedBox(height: 20),
                                Text("Confirmer la suppression"),
                              ],
                            ),
                          ),
                          content: Container(
                            color: secondaryColor,
                            height: 70,
                            child: Column(
                              children: [
                                Text(
                                    "Êtes-vous sur de vouloir supprimer '${userInfo.name}'?"),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                        icon: Icon(
                                          Icons.close,
                                          size: 14,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.grey),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        label: Text("Cancel")),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton.icon(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 14,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.red),
                                        onPressed: () {},
                                        label: Text("Supprimer"))
                                  ],
                                )
                              ],
                            ),
                          ));
                    });
              },
              // Delete
            ),
          ],
        ),
      ),
    ],
  );
}
DataRow recentUser2DataRow(RecentUser2 user2Info, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            TextAvatar(
              size: 35,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 1,
              shape: Shape.Rectangle,
              text: user2Info.name!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                user2Info.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(user2Info.name).withOpacity(.2),
            border: Border.all(color: getRoleColor(user2Info.name)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(user2Info.total!))),
            DataCell(Text(user2Info.nb!)),
      DataCell(Text(user2Info.cart!)),
      DataCell(Text(user2Info.parti!)),
      DataCell(Row(children: [
        TextButton(
              child: Text(user2Info.pay!, style: TextStyle(color: greenColor)),
              onPressed: () {},
            ),
      ],)),
       DataCell(Text(user2Info.retro!)),
    ],
  );
}
DataRow usersEntrepriseDataRow(ListUsersEntreprise usersEntreprise, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            TextAvatar(
              size: 35,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 1,
              shape: Shape.Rectangle,
              text: usersEntreprise.name!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                usersEntreprise.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(usersEntreprise.souscri).withOpacity(.2),
            border: Border.all(color: getRoleColor(usersEntreprise.souscri)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
         
          child: Text(usersEntreprise.souscri!))),
      DataCell(Text(usersEntreprise.contact!)),
            DataCell(Text(usersEntreprise.collabo!)),
      DataCell(Text(usersEntreprise.parti!)),
      DataCell(Text(usersEntreprise.jour!)),
       DataCell(Text(usersEntreprise.paiement!)),
    ],
  );
}
DataRow usersCollabDataRow(ListUsersCollab usersCollab, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            TextAvatar(
              size: 35,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 1,
              shape: Shape.Rectangle,
              text: usersCollab.name!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                usersCollab.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(usersCollab.entreprise).withOpacity(.2),
            border: Border.all(color: getRoleColor(usersCollab.entreprise)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(usersCollab.entreprise!))),
      DataCell(Text(usersCollab.email!)),
            DataCell(Text(usersCollab.nb!)),
      DataCell(Text(usersCollab.total!)),
      DataCell(Text(usersCollab.cart!)),
       DataCell(Text(usersCollab.bon!)),
    ],
  );
}
DataRow usersProdDataRow(ListUsersProd usersProd, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            TextAvatar(
              size: 35,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 1,
              shape: Shape.Rectangle,
              text: usersProd.name!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                usersProd.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(usersProd.descri).withOpacity(.2),
            border: Border.all(color: getRoleColor(usersProd.descri)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(usersProd.descri!))),
      DataCell(Text(usersProd.ville!)),
            DataCell(Text(usersProd.contact!)),
      DataCell(Text(usersProd.categorie!)),
      DataCell(Text(usersProd.nbpro!)),
       DataCell(Text(usersProd.retro!)),
       DataCell(Text(usersProd.nbrec!)),
    ],
  );
}

