import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  Map<String, dynamic> productData = {};

  getFormData(
      {String? productName,
      String? productPrice,
      String? quantity,
      String? category,
      String? description,
      DateTime? scheduleDate,
      List<String>? imageUrlList,
      bool? chargeShipping,
      String? shippingCharge,
      String? brandName,
      List<String>? sizeList}) {
    if (productName != null) {
      productData['productName'] = productName;
    }

    if (productPrice != null) {
      productData['productPrice'] = productPrice;
    }

    if (quantity != null) {
      productData['quantity'] = quantity;
    }

    if (category != null) {
      productData['category'] = category;
    }

    if (description != null) {
      productData['description'] = description;
    }

    if (scheduleDate != null) {
      productData['scheduleDate'] = scheduleDate;
    }
    if (imageUrlList != null) {
      productData['imageUrlList'] = imageUrlList;
    }
    if (chargeShipping != null) {
      productData['chargeShipping'] = chargeShipping;
    }
    if (shippingCharge != null) {
      productData['shippingCharge'] = shippingCharge;
    }
    if (brandName != null) {
      productData['brandName'] = brandName;
    }
    if (sizeList != null) {
      productData['sizeList'] = sizeList;
    }

    notifyListeners();
  }

  clearData() {
    productData.clear();
    notifyListeners();
  }
}
