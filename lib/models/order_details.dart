import 'dart:convert';

OrderDetails orderDetailsFromJson(String str) =>
    OrderDetails.fromJson(json.decode(str));

String orderDetailsToJson(OrderDetails data) => json.encode(data.toJson());

class OrderDetails {
  OrderDetails({
    this.data,
  });

  OrderDetailsData? data;

  factory OrderDetails.fromJson(Map<String, dynamic> json) => OrderDetails(
        data: OrderDetailsData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
      };
}

class OrderDetailsData {
  OrderDetailsData({
    this.status,
    this.data,
  });

  int? status;
  DataData? data;

  factory OrderDetailsData.fromJson(Map<String, dynamic> json) =>
      OrderDetailsData(
        status: json["status"],
        data: DataData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data!.toJson(),
      };
}

class DataData {
  DataData({
    this.id,
    this.orderCode,
    this.userId,
    this.total,
    this.subTotal,
    this.deliveryCharge,
    this.platform,
    this.deviceId,
    this.ip,
    this.status,
    this.statusName,
    this.paymentStatus,
    this.paymentMethod,
    this.paidAmount,
    this.address,
    this.invoiceId,
    this.deliverBoyId,
    this.deliveryBoyId,
    this.restaurantId,
    this.productReceived,
    this.mobile,
    this.lat,
    this.long,
    this.misc,
    this.createdAt,
    this.updatedAt,
    this.items,
    this.customer,
    this.restaurant,
    this.deliveryBoy,
  });

  int? id;
  int? userId;
  String? orderCode;
  String? total;
  String? subTotal;
  String? deliveryCharge;
  dynamic platform;
  dynamic deviceId;
  dynamic ip;
  int? status;
  String? statusName;
  int? paymentStatus;
  int? paymentMethod;
  String? paidAmount;
  String? address;
  String? invoiceId;
  dynamic deliverBoyId;
  int? deliveryBoyId;
  int? restaurantId;
  int? productReceived;
  String? mobile;
  String? lat;
  String? long;
  String? misc;
  String? createdAt;
  String? updatedAt;
  List<Item>? items;
  Customer? customer;
  Restaurant? restaurant;
  Customer? deliveryBoy;

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        id: json["id"],
        userId: json["user_id"],
        orderCode: json["order_code"],
        total: json["total"],
        subTotal: json["sub_total"],
        deliveryCharge: json["delivery_charge"],
        platform: json["platform"],
        deviceId: json["device_id"],
        ip: json["ip"],
        status: json["status"],
        statusName: json["status_name"],
        paymentStatus: json["payment_status"],
        paymentMethod: json["payment_method"],
        paidAmount: json["paid_amount"],
        address: json["address"],
        invoiceId: json["invoice_id"],
        deliverBoyId: json["deliver_boy_id"],
        deliveryBoyId: json["delivery_boy_id"],
        restaurantId: json["restaurant_id"],
        productReceived: json["product_received"],
        mobile: json["mobile"],
        lat: json["lat"],
        long: json["long"],
        misc: json["misc"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        customer: Customer.fromJson(json["customer"]),
        deliveryBoy: json["deliveryBoy"] == null
            ? Customer(
                id: null,
                name: null,
                email: null,
                phone: null,
                image: null,
              )
            : Customer.fromJson(json["deliveryBoy"]),
        restaurant: Restaurant.fromJson(json["restaurant"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "order_code": orderCode,
        "total": total,
        "sub_total": subTotal,
        "delivery_charge": deliveryCharge,
        "platform": platform,
        "device_id": deviceId,
        "ip": ip,
        "status": status,
        "status_name": statusName,
        "payment_status": paymentStatus,
        "payment_method": paymentMethod,
        "paid_amount": paidAmount,
        "address": address,
        "invoice_id": invoiceId,
        "deliver_boy_id": deliverBoyId,
        "delivery_boy_id": deliveryBoyId,
        "restaurant_id": restaurantId,
        "product_received": productReceived,
        "mobile": mobile,
        "lat": lat,
        "long": long,
        "misc": misc,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "customer": customer!.toJson(),
        "deliveryBoy": deliveryBoy!.toJson(),
        "restaurant": restaurant!.toJson(),
      };
}

class Customer {
  Customer({
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.roles,
    this.address,
    this.username,
    this.balance,
    this.status,
    this.applied,
    this.image,
  });

  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  List<Role>? roles;
  String? address;
  String? username;
  String? balance;
  int? status;
  int? applied;
  dynamic image;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        address: json["address"],
        username: json["username"],
        balance: json["balance"],
        status: json["status"],
        applied: json["applied"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "roles": List<dynamic>.from(roles!.map((x) => x.toJson())),
        "address": address,
        "username": username,
        "balance": balance,
        "status": status,
        "applied": applied,
        "image": image,
      };
}

class Role {
  Role({
    this.id,
    this.name,
    this.guardName,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  int? id;
  String? name;
  String? guardName;
  DateTime? createdAt;
  DateTime? updatedAt;
  Pivot? pivot;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
        guardName: json["guard_name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: Pivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "guard_name": guardName,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "pivot": pivot!.toJson(),
      };
}

class Pivot {
  Pivot({
    this.modelId,
    this.roleId,
    this.modelType,
  });

  dynamic modelId;
  dynamic roleId;
  String? modelType;

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        modelId: json["model_id"],
        roleId: json["role_id"],
        modelType: json["model_type"],
      );

  Map<String, dynamic> toJson() => {
        "model_id": modelId,
        "role_id": roleId,
        "model_type": modelType,
      };
}

class Item {
  Item({
    this.id,
    this.orderId,
    this.restaurantId,
    this.menuItemId,
    this.quantity,
    this.unitPrice,
    this.discountedPrice,
    this.itemTotal,
    this.createdAt,
    this.updatedAt,
    this.menuItem,
    this.menuItemVariation,
    this.options,
    this.optionTotal,
  });

  int? id;
  int? orderId;
  int? restaurantId;
  int? menuItemId;
  int? quantity;
  String? unitPrice;
  String? discountedPrice;
  String? itemTotal;
  String? createdAt;
  String? updatedAt;
  MenuItem? menuItem;
  dynamic menuItemVariation;
  List<Tion>? options;
  int? optionTotal;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        orderId: json["order_id"],
        restaurantId: json["restaurant_id"],
        menuItemId: json["menu_item_id"],
        quantity: json["quantity"],
        unitPrice: json["unit_price"],
        discountedPrice: json["discounted_price"],
        itemTotal: json["item_total"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        menuItem: MenuItem.fromJson(json["menu_item"]),
        menuItemVariation: json["menu_item_variation"],
        options: List<Tion>.from(json["options"].map((x) => Tion.fromJson(x))),
        optionTotal: json["option_total"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "restaurant_id": restaurantId,
        "menu_item_id": menuItemId,
        "quantity": quantity,
        "unit_price": unitPrice,
        "discounted_price": discountedPrice,
        "item_total": itemTotal,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "menu_item": menuItem!.toJson(),
        "menu_item_variation": menuItemVariation,
        "options": List<dynamic>.from(options!.map((x) => x)),
        "option_total": optionTotal,
      };
}

class MenuItem {
  MenuItem({
    this.id,
    this.name,
    this.slug,
    this.unitPrice,
    this.discountPrice,
    this.currencyCode,
    this.image,
    this.description,
    this.options,
  });

  int? id;
  String? name;
  String? slug;
  String? unitPrice;
  String? discountPrice;
  String? currencyCode;
  String? image;
  String? description;
  List<Tion>? options;

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        unitPrice: json["unit_price"],
        discountPrice: json["discount_price"],
        currencyCode: json["currency_code"],
        image: json["image"],
        description: json["description"],
        options: List<Tion>.from(json["options"].map((x) => Tion.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "unit_price": unitPrice,
        "discount_price": discountPrice,
        "currency_code": currencyCode,
        "image": image,
        "description": description,
        "options": List<dynamic>.from(options!.map((x) => x.toJson())),
      };
}

class Tion {
  Tion({
    this.id,
    this.name,
    this.unitPrice,
    this.currencyCode,
    this.discountPrice,
  });

  int? id;
  String? name;
  String? unitPrice;
  String? currencyCode;
  String? discountPrice;

  factory Tion.fromJson(Map<String, dynamic> json) => Tion(
        id: json["id"],
        name: json["name"],
        unitPrice: json["unit_price"],
        currencyCode: json["currency_code"],
        discountPrice:
            json["discount_price"] == null ? null : json["discount_price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "unit_price": unitPrice,
        "currency_code": currencyCode,
        "discount_price": discountPrice == null ? null : discountPrice,
      };
}

class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.userId,
    this.description,
    this.deliveryCharge,
    this.lat,
    this.long,
    this.openingTime,
    this.closingTime,
    this.address,
    this.status,
    this.currentStatus,
    this.createdAt,
    this.updatedAt,
    this.image,
    this.cuisines,
  });

  int? id;
  String? name;
  int? userId;
  String? description;
  String? deliveryCharge;
  String? lat;
  String? long;
  String? openingTime;
  String? closingTime;
  String? address;
  String? status;
  String? currentStatus;
  String? createdAt;
  String? updatedAt;
  String? image;
  List<dynamic>? cuisines;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        userId: json["user_id"],
        description: json["description"],
        deliveryCharge: json["delivery_charge"],
        lat: json["lat"],
        long: json["long"],
        openingTime: json["opening_time"],
        closingTime: json["closing_time"],
        address: json["address"],
        status: json["status"],
        currentStatus: json["current_status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        image: json["image"],
        cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "user_id": userId,
        "description": description,
        "delivery_charge": deliveryCharge,
        "lat": lat,
        "long": long,
        "opening_time": openingTime,
        "closing_time": closingTime,
        "address": address,
        "status": status,
        "current_status": currentStatus,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "image": image,
        "cuisines": List<dynamic>.from(cuisines!.map((x) => x)),
      };
}
