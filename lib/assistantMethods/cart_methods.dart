import '../global/global.dart';

class CartMethods {
  //2367121:5 ==> 2367121
  seperateItemIDsFromUserCartList() {
    // ignore: unused_local_variable
    List<String>? userCartList = sharedPreferences!.getStringList("userCart");

    List<String> itemsIDsList = [];
    for (int i = 1; i < userCartList!.length; i++) {
      //2367121:5
      String item = userCartList[i].toString();
      var lastCharacterPositionOfItemBeforeColon = item.lastIndexOf(":");

      //2367121
      String getItemID =
          item.substring(0, lastCharacterPositionOfItemBeforeColon);
      itemsIDsList.add(getItemID);
    }

    return itemsIDsList;
  }

  //2367121:5 ==> 5
  seperateItemQuantitiesFromUserCartList() {
    // ignore: unused_local_variable
    List<String>? userCartList = sharedPreferences!.getStringList("userCart");
    print("userCartList = ");
    print(userCartList);

    List<int> itemsQuantitiesList = [];
    for (int i = 1; i < userCartList!.length; i++) {
      //2367121:5
      String item = userCartList[i].toString();

      // 0=[:] 1=[5]
      var colonAndAfterCharacterList = item.split(":").toList(); // 0=[:]

      //5
      var quantityNumber = int.parse(colonAndAfterCharacterList[1].toString());

      itemsQuantitiesList.add(quantityNumber);
    }

    print("itemsQuantitiesList = ");
    print(itemsQuantitiesList);
    return itemsQuantitiesList;
  }

  seperateOrderItemIDs(productIDs) {
    // ignore: unused_local_variable
    List<String>? userCartList = List<String>.from(productIDs);

    List<String> itemsIDsList = [];
    for (int i = 1; i < userCartList.length; i++) {
      //2367121:5
      String item = userCartList[i].toString();
      var lastCharacterPositionOfItemBeforeColon = item.lastIndexOf(":");

      //2367121
      String getItemID =
          item.substring(0, lastCharacterPositionOfItemBeforeColon);
      itemsIDsList.add(getItemID);
    }

    return itemsIDsList;
  }

  seperateOrderItemQuantities(productIDs) {
    // ignore: unused_local_variable
    List<String>? userCartList = List<String>.from(productIDs);
    print("userCartList = ");
    print(userCartList);

    List<String> itemsQuantitiesList = [];
    for (int i = 1; i < userCartList.length; i++) {
      //2367121:5
      String item = userCartList[i].toString();

      // 0=[:] 1=[5]
      var colonAndAfterCharacterList = item.split(":").toList(); // 0=[:]

      //5
      var quantityNumber = int.parse(colonAndAfterCharacterList[1].toString());

      itemsQuantitiesList.add(quantityNumber.toString());
    }

    print("itemsQuantitiesList = ");
    print(itemsQuantitiesList);
    return itemsQuantitiesList;
  }
}
