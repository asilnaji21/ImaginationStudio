import 'package:project_app/presentaion/views/serviceprovider/domain/model/service_provider_model.dart';

import '../presentaion/views/main/domain/model/categories_model.dart';
import '../presentaion/views/main/domain/model/product_model.dart';

class Constant {
  static List<ServiceProviderModel> serviceProvider = [
    ServiceProviderModel(
      about:
          "I will help you choose the best furniture for your home, and I will be available for any consultation.",
      address: "123 Main Street",
      image:
          "https://creazilla-store.fra1.digitaloceanspaces.com/icons/7914838/woman-icon-md.png",
      name: "Sara Ali",
      phone: "+1234567890",
      projects: [
        Project(
          projectName: "Living Room Redesign",
          image:
              "https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
          name: "John Doe",
          projectDetails:
              "Redesigned the living room space with modern furniture and a cozy atmosphere.",
          projectImages: [
            "https://images.unsplash.com/photo-1523575708161-ad0fc2a9b951?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1457&q=80",
            "https://images.unsplash.com/photo-1505691938895-1758d7feb511?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          ],
        ),
        Project(
          projectName: "Kitchen Makeover",
          image:
              "https://images.unsplash.com/photo-1649083048198-f57bd8fb7a3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
          name: "Jane Smith",
          projectDetails:
              "Transformed a bedroom into a serene oasis with stylish decor and functional furniture.",
          projectImages: [
            "https://images.unsplash.com/photo-1649083048391-1c9e82472f65?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
            "https://images.unsplash.com/photo-1649083048428-3d8ed23a3ce0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
            "https://images.unsplash.com/photo-1649083048198-f57bd8fb7a3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
          ],
        ),
      ],
      rating: 3.5,
      website: "https://www.exampleprovider1.com",
    ),
    ServiceProviderModel(
      about:
          "Let me help you create a stylish and comfortable living space with custom-made furniture.",
      address: "456 Elm Street",
      image:
          "https://static.vecteezy.com/system/resources/previews/011/675/374/original/man-avatar-image-for-profile-png.png",
      name: "Ahmed Samir",
      phone: "+9876543210",
      projects: [
        Project(
          projectName: "House hall ",
          image:
              "https://images.unsplash.com/photo-1648475237029-7f853809ca14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
          name: "Samantha Johnson",
          projectDetails:
              "Revamped the kitchen area with custom cabinets and contemporary design.",
          projectImages: [
            "https://images.unsplash.com/photo-1649083048337-4aeb6dda80bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
            "https://plus.unsplash.com/premium_photo-1661905571170-94e0c54d8e6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1496&q=80",
            "https://images.unsplash.com/photo-1648475236583-2e25a6cbf3bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
          ],
        ),
        Project(
          projectName: "Office Space Upgrade",
          image:
              "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          name: "Michael Williams",
          projectDetails:
              "Transformed a home office into a productive and stylish workspace with custom-made furniture.",
          projectImages: [
            "https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1400&q=80",
            "https://images.unsplash.com/photo-1617103996702-96ff29b1c467?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80",
            "https://images.unsplash.com/photo-1618221381711-42ca8ab6e908?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80",
          ],
        ),
      ],
      rating: 4.8,
      website: "https://www.exampleprovider2.com",
    ),
    ServiceProviderModel(
      about:
          "I specialize in creating elegant and functional interior designs tailored to your style and needs.",
      address: "789 Oak Avenue",
      image: "https://cdn-icons-png.flaticon.com/512/4128/4128253.png",
      name: "Mariam Hassan",
      phone: "+1122334455",
      projects: [
        Project(
          projectName: "Luxury Villa Renovation",
          image:
              "https://images.unsplash.com/photo-1416331108676-a22ccb276e35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1467&q=80",
          name: "Sarah Anderson",
          projectDetails:
              "Transformed a luxury villa into a modern masterpiece with high-end furniture and decor.",
          projectImages: [
            "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1465&q=80",
            "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1475&q=80",
          ],
        ),
        Project(
          projectName: "Cozy Apartment Decor",
          image:
              "https://images.unsplash.com/photo-1533327325824-76bc4e62d560?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
          name: "David Wilson",
          projectDetails:
              "Turned a small apartment into a cozy and stylish living space with space-saving furniture.",
          projectImages: [
            "https://images.unsplash.com/photo-1518277980269-c1eb88ad9693?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
            "https://images.unsplash.com/photo-1582087152266-3fbaf83bc952?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1585066437548-1507f3f7aa97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
          ],
        ),
      ],
      rating: 4.1,
      website: "https://www.exampleprovider3.com",
    ),
    ServiceProviderModel(
      about:
          "Creating beautiful spaces is my passion. Let's work together to make your dream home a reality.",
      address: "101 Pine Street",
      image:
          "https://www.shareicon.net/data/512x512/2015/09/18/103160_man_512x512.png",
      name: "Kareem Hany",
      phone: "+9988776655",
      projects: [
        Project(
          projectName: "Sitting Room Makeover",
          image:
              "https://images.unsplash.com/photo-1531410691118-74e9fbc0f57f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
          name: "Emily Miller",
          projectDetails:
              "Gave a rustic cottage a modern twist with unique decor and furniture pieces.",
          projectImages: [
            "https://images.unsplash.com/photo-1575909699392-49857a8e854e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1452639608291-23cd58f6864d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80",
            "https://images.unsplash.com/photo-1528100111051-2abf86d8bb6c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
          ],
        ),
        Project(
          projectName: "Wood decor",
          image:
              "https://images.unsplash.com/photo-1572048572872-2394404cf1f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
          name: "Thomas Jackson",
          projectDetails:
              "Revamped an office space with a contemporary design and comfortable office furniture.",
          projectImages: [
            "https://images.unsplash.com/photo-1560185009-5bf9f2849488?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1560448205-17d3a46c84de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1560448204-61dc36dc98c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          ],
        ),
      ],
      rating: 3.9,
      website: "https://www.exampleprovider4.com",
    ),
    ServiceProviderModel(
      about:
          "With a passion for creativity, I design and furnish spaces that inspire and delight.",
      address: "555 Maple Lane",
      image:
          "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-No-Background.png",
      name: "Ali Kamal",
      phone: "+8877665544",
      projects: [
        Project(
          projectName: "Ceiling decoration",
          image:
              "https://plus.unsplash.com/premium_photo-1682125916388-2a005de0d6b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1406&q=80",
          name: "Olivia Taylor",
          projectDetails:
              "Transformed a studio into an artistic haven with unique furniture and decor.",
          projectImages: [
            "https://images.unsplash.com/photo-1618219740975-d40978bb7378?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1400&q=80",
            "https://images.unsplash.com/photo-1618219908412-a29a1bb7b86e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80",
            "https://images.unsplash.com/photo-1618219740975-d40978bb7378?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1400&q=80",
          ],
        ),
        Project(
          projectName: "Artistic Studio Space",
          image:
              "https://images.unsplash.com/photo-1514064019862-23e2a332a6a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1428&q=80",
          name: "Robert Davis",
          projectDetails:
              "Designed an elegant dining room with luxury dining furniture and tasteful decorations.",
          projectImages: [
            "https://images.unsplash.com/photo-1512389098783-66b81f86e199?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1514&q=80",
            "https://images.unsplash.com/photo-1512389142860-9c449e58a543?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
            "https://images.unsplash.com/photo-1512389098783-66b81f86e199?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1514&q=80",
          ],
        ),
      ],
      rating: 4.0,
      website: "https://www.exampleprovider5.com",
    ),
    ServiceProviderModel(
      about:
          "Creating beautiful and functional living spaces is my expertise. Let's make your home a masterpiece.",
      address: "222 Cherry Avenue",
      image:
          "https://cdn.icon-icons.com/icons2/3708/PNG/512/girl_female_woman_person_people_avatar_icon_230018.png",
      name: "Noura Adel",
      phone: "+6655443322",
      projects: [
        Project(
          projectName: "Contemporary Loft Design",
          image:
              "https://images.unsplash.com/photo-1534349762230-e0cadf78f5da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          name: "Ella Adams",
          projectDetails:
              "Designed a contemporary loft space with sleek furniture and minimalist decor.",
          projectImages: [
            "https://images.unsplash.com/photo-1513519245088-0e12902e5a38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1514371879740-2e7d2068f502?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
            "https://images.unsplash.com/photo-1534103704502-96e3a4ed093b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1477&q=80",
          ],
        ),
        Project(
          projectName: "Outdoor Patio Oasis",
          image:
              "https://plus.unsplash.com/premium_photo-1683134599520-773666454183?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1412&q=80",
          name: "William Wilson",
          projectDetails:
              "Turned an outdoor patio into a relaxing oasis with comfortable outdoor furniture and greenery.",
          projectImages: [
            "https://images.unsplash.com/photo-1481277542470-605612bd2d61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1406&q=80",
            "https://images.unsplash.com/photo-1628744876657-abd5086695dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1628744448840-55bdb2497bd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          ],
        ),
      ],
      rating: 4.1,
      website: "https://www.exampleprovider6.com",
    ),
    /*ServiceProviderModel(
      about: "I specialize in interior design and furniture selection.",
      address: "123 Main St",
      image:
          "https://static.vecteezy.com/system/resources/previews/011/675/365/original/man-avatar-image-for-profile-png.png",
      name: "Omar Mahmoud",
      phone: "+1234567890",
      projects: [
        Project(
          projectName: "Living Room Redesign",
          image:
              "https://images.unsplash.com/photo-1534349762230-e0cadf78f5da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          name: "Ella Adams",
          projectDetails:
              "Designed a contemporary loft space with sleek furniture and minimalist decor.",
          projectImages: [
            "https://images.unsplash.com/photo-1513519245088-0e12902e5a38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1514371879740-2e7d2068f502?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
            "https://images.unsplash.com/photo-1534103704502-96e3a4ed093b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1477&q=80",
          ],
        ),
        Project(
          projectName: "SittingRoom  Makeover",
          image:
              "https://plus.unsplash.com/premium_photo-1683134599520-773666454183?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1412&q=80",
          name: "William Wilson",
          projectDetails:
              "Turned an outdoor patio into a relaxing oasis with comfortable outdoor furniture and greenery.",
          projectImages: [
            "https://images.unsplash.com/photo-1481277542470-605612bd2d61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1406&q=80",
            "https://images.unsplash.com/photo-1628744876657-abd5086695dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1628744448840-55bdb2497bd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
          ],
        ),
      ],
      rating: 4.5,
      website: "https://www.exampleprovider6.com",
    ),
 */
  ];

  static List<ProductModel> furniture = [
    ////Sofas
    ProductModel(
      productId: 'sofa-001',
      productTitle: "Modern Leather Sofa",
      productPrice: "899.99",
      productCategory: "Sofas",
      productDescription:
          "Add a touch of modern elegance to your living room with this luxurious leather sofa. Crafted with top-grain leather upholstery and a sturdy wooden frame. Available in various colors.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1676320514018-ec119b57dbce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'sofa-002',
      productTitle: "Comfortable Fabric Sofa",
      productPrice: "799.99",
      productCategory: "Sofas",
      productDescription:
          "Sink into the comfort of this cozy fabric sofa. It's perfect for long evenings of relaxation. Available in multiple fabric options.",
      productImage:
          "https://images.unsplash.com/photo-1550581190-9c1c48d21d6c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productId: 'sofa-003',
      productTitle: "Classic Leather Sofa",
      productPrice: "999.99",
      productCategory: "Sofas",
      productDescription:
          "Bring timeless elegance to your home with this classic leather sofa. Featuring premium leather upholstery and a durable hardwood frame.",
      productImage:
          "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'sofa-004',
      productTitle: "Modern Sectional Sofa",
      productPrice: "1099.99",
      productCategory: "Sofas",
      productDescription:
          "Create a stylish and flexible seating arrangement with this modern sectional sofa. Its modular design allows for customization to fit your space.",
      productImage:
          "https://images.unsplash.com/photo-1630585308572-f53438fc684f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "9",
    ),
    ProductModel(
      productId: 'sofa-005',
      productTitle: "Velvet Tufted Sofa",
      productPrice: "849.99",
      productCategory: "Sofas",
      productDescription:
          "Enhance your living room with the luxurious feel of this velvet tufted sofa. It combines comfort and sophistication.",
      productImage:
          "https://images.unsplash.com/photo-1611967164521-abae8fba4668?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "7",
    ),
    ProductModel(
      productId: 'sofa-006',
      productTitle: "Linen Upholstered Sofa",
      productPrice: "749.99",
      productCategory: "Sofas",
      productDescription:
          "Add a touch of elegance to your home with this linen upholstered sofa. Its neutral color complements any decor.",
      productImage:
          "https://images.unsplash.com/photo-1519961655809-34fa156820ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8U29mYXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "11",
    ),
    ProductModel(
      productId: 'sofa-007',
      productTitle: "Convertible Sleeper Sofa",
      productPrice: "949.99",
      productCategory: "Sofas",
      productDescription:
          "Maximize your space with this versatile convertible sleeper sofa. It easily converts from a sofa to a comfortable bed.",
      productImage:
          "https://images.unsplash.com/photo-1615800002234-05c4d488696c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fFNvZmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "6",
    ),
    ProductModel(
      productId: 'sofa-008',
      productTitle: "Rustic Leather Sofa",
      productPrice: "1199.99",
      productCategory: "Sofas",
      productDescription:
          "Bring warmth and character to your home with this rustic leather sofa. Crafted with distressed leather for a vintage look.",
      productImage:
          "https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fFNvZmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'sofa-009',
      productTitle: "Mid-Century Modern Sofa",
      productPrice: "899.99",
      productCategory: "Sofas",
      productDescription:
          "Capture the essence of mid-century modern design with this stylish sofa. Its clean lines and tapered legs are sure to impress.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1674567529895-c89b6bb1b9e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fFNvZmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "14",
    ),
    ProductModel(
      productId: 'sofa-010',
      productTitle: "Contemporary Leather Sofa",
      productPrice: "999.99",
      productCategory: "Sofas",
      productDescription:
          "Upgrade your living room with this contemporary leather sofa. It features sleek lines and chrome accents for a modern touch.",
      productImage:
          "https://images.unsplash.com/photo-1567016432779-094069958ea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fFNvZmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ////Tables
    ProductModel(
      productId: 'table-001',
      productTitle: "Rustic Wood Dining Table",
      productPrice: "599.99",
      productCategory: "Tables",
      productDescription:
          "Enhance your dining area with this rustic wood dining table. It's perfect for family gatherings and features a distressed finish for a vintage look.",
      productImage:
          "https://images.unsplash.com/photo-1601740468950-00fc402e926e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGFibGVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'table-002',
      productTitle: "Glass-Top Coffee Table",
      productPrice: "349.99",
      productCategory: "Tables",
      productDescription:
          "Add a touch of sophistication to your living room with this glass-top coffee table. The modern design and glass surface create an elegant look.",
      productImage:
          "https://images.unsplash.com/photo-1523658783928-e8287dea21cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "9",
    ),
    ProductModel(
      productId: 'table-003',
      productTitle: "Marble Dining Table",
      productPrice: "799.99",
      productCategory: "Tables",
      productDescription:
          "Elevate your dining space with this luxurious marble dining table. It's both elegant and durable, perfect for hosting special occasions.",
      productImage:
          "https://images.unsplash.com/photo-1587823172314-0dc50d65a707?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dGFibGVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "7",
    ),
/////////Bedrooms
    ProductModel(
      productId: 'Bedrooms-004',
      productTitle: "King Size Canopy Bed",
      productPrice: "999.99",
      productCategory: "Bedrooms",
      productDescription:
          "Create a luxurious bedroom with this king-size canopy bed. It features an elegant canopy frame and is perfect for a regal atmosphere.",
      productImage:
          "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QmVkc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'Bedrooms-005',
      productTitle: "Twin Upholstered Bed",
      productPrice: "449.99",
      productCategory: "Bedrooms",
      productDescription:
          "Upgrade your child's bedroom with this twin-size upholstered bed. It's both comfortable and stylish, perfect for a growing child.",
      productImage:
          "https://images.unsplash.com/photo-1592229505678-cf99a9908e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8QmVkc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "6",
    ),
    ProductModel(
      productId: 'Bedrooms-006',
      productTitle: "Platform Bed with Storage",
      productPrice: "799.99",
      productCategory: "Bedrooms",
      productDescription:
          "Maximize storage space in your bedroom with this platform bed. It features built-in storage drawers for added convenience.",
      productImage:
          "https://images.unsplash.com/photo-1584132905271-512c958d674a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEJlZHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "9",
    ),
    ProductModel(
      productId: 'Bedrooms-007',
      productTitle: "Sleigh Bed",
      productPrice: "699.99",
      productCategory: "Bedrooms",
      productDescription:
          "Add a touch of elegance to your bedroom with this sleigh bed. It features a curved headboard and footboard for a classic look.",
      productImage:
          "https://images.unsplash.com/photo-1560067174-c5a3a8f37060?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fEJlZHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
///////Chairs
    ProductModel(
      productId: 'chair-001',
      productTitle: "Ergonomic Office Chair",
      productPrice: "249.99",
      productCategory: "Chairs",
      productDescription:
          "Stay comfortable during long work hours with this ergonomic office chair. It features adjustable lumbar support and armrests.",
      productImage:
          "https://images.unsplash.com/photo-1506898667547-42e22a46e125?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hhcmlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'chair-002',
      productTitle: "Accent Armchair",
      productPrice: "299.99",
      productCategory: "Chairs",
      productDescription:
          "Add a pop of color to your living room with this stylish accent armchair. It's both comfortable and eye-catching.",
      productImage:
          "https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'chair-003',
      productTitle: "Swivel Desk Chair",
      productPrice: "199.99",
      productCategory: "Chairs",
      productDescription:
          "Upgrade your workspace with this swivel desk chair. It features a modern design and 360-degree swivel for added convenience.",
      productImage:
          "https://images.unsplash.com/photo-1519947486511-46149fa0a254?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productId: 'chair-004',
      productTitle: "Barcelona Chair",
      productPrice: "499.99",
      productCategory: "Chairs",
      productDescription:
          "Experience timeless design with the Barcelona chair. It's an iconic piece of furniture that adds sophistication to any room.",
      productImage:
          "https://images.unsplash.com/photo-1541558869434-2840d308329a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productId: 'chair-005',
      productTitle: "Rattan Dining Chair",
      productPrice: "119.99",
      productCategory: "Chairs",
      productDescription:
          "Upgrade your dining area with these rattan dining chairs. They bring a touch of nature to your indoor space.",
      productImage:
          "https://images.unsplash.com/photo-1617364852223-75f57e78dc96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "11",
    ),
    ProductModel(
      productId: 'chair-006',
      productTitle: "Rocking Chair",
      productPrice: "179.99",
      productCategory: "Chairs",
      productDescription:
          "Relax in this classic rocking chair. It's perfect for soothing moments and comes with comfortable cushions.",
      productImage:
          "https://images.unsplash.com/photo-1551298698-66b830a4f11c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "14",
    ),
//////Desks
    ProductModel(
      productId: 'desk-006',
      productTitle: "Minimalist Desk",
      productPrice: "199.99",
      productCategory: "Desks",
      productDescription:
          "Keep it simple with this minimalist desk. It's perfect for small spaces and provides a clean, uncluttered workspace.",
      productImage:
          "https://images.unsplash.com/photo-1571826945830-5423b80a986c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8RGVza3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productId: 'desk-007',
      productTitle: "Adjustable Height Desk",
      productPrice: "399.99",
      productCategory: "Desks",
      productDescription:
          "Customize your workspace with this adjustable height desk. It allows you to find the perfect ergonomic position.",
      productImage:
          "https://images.unsplash.com/photo-1589884629038-b631346a23c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8RGVza3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "13",
    ),
    ProductModel(
      productId: 'desk-008',
      productTitle: "Rustic Writing Desk",
      productPrice: "329.99",
      productCategory: "Desks",
      productDescription:
          "Add rustic charm to your home office with this writing desk. It features a distressed finish for a vintage look.",
      productImage:
          "https://images.unsplash.com/photo-1588084580191-db8604397b3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fERlc2tzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "9",
    ),
    ProductModel(
      productId: 'desk-009',
      productTitle: "Floating Wall Desk",
      productPrice: "179.99",
      productCategory: "Desks",
      productDescription:
          "Save space with this floating wall desk. It's perfect for small apartments and can be folded up when not in use.",
      productImage:
          "https://images.unsplash.com/photo-1622127800587-1ce716f1981e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8RGVza3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "17",
    ),
    ProductModel(
      productId: 'desk-010',
      productTitle: "Industrial Writing Desk",
      productPrice: "449.99",
      productCategory: "Desks",
      productDescription:
          "Create an industrial-inspired workspace with this writing desk. It features a metal frame and a reclaimed wood top.",
      productImage:
          "https://images.unsplash.com/photo-1594235048794-fae8583a5af5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8RGVza3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-008',
      productTitle: "L-Shaped Corner Desk",
      productPrice: "299.99",
      productCategory: "Desks",
      productDescription:
          "Maximize your workspace with this L-shaped corner desk. It provides ample surface area for productivity and organization.",
      productImage:
          "https://images.unsplash.com/photo-1611269154421-4e27233ac5c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1530&q=80",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-009',
      productTitle: "Rustic Wooden Desk",
      productPrice: "249.99",
      productCategory: "Desks",
      productDescription:
          "Add a touch of rustic charm to your office with this wooden desk. It's sturdy and visually appealing.",
      productImage:
          "https://images.unsplash.com/photo-1501045661006-fcebe0257c3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-010',
      productTitle: "Glass Top Writing Desk",
      productPrice: "169.99",
      productCategory: "Desks",
      productDescription:
          "Enhance your workspace with this sleek glass top writing desk. It's modern and functional.",
      productImage:
          "https://images.unsplash.com/photo-1618506469810-282bef2b30b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RGVza3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-011',
      productTitle: "Standing Desk Converter",
      productPrice: "149.99",
      productCategory: "Desks",
      productDescription:
          "Transform your existing desk into a standing desk with this converter. It promotes a healthier work style.",
      productImage:
          "https://images.unsplash.com/photo-1626551039948-ddd7e595fe06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-012',
      productTitle: "Executive Office Desk",
      productPrice: "599.99",
      productCategory: "Desks",
      productDescription:
          "Upgrade your office with this executive desk. It offers ample storage and a professional look.",
      productImage:
          "https://images.unsplash.com/photo-1529031748770-4b25f079ee22?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "6",
      productId: 'desk-008',
      productTitle: "L-Shaped Corner Desk",
      productPrice: "299.99",
      productCategory: "Desks",
      productDescription:
          "Maximize your workspace with this L-shaped corner desk. It provides ample surface area for productivity and organization.",
      productImage:
          "https://images.unsplash.com/photo-1646003607550-4b1b62e3a2d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),

    ///Living Rooms
    ProductModel(
      productId: 'living-room-001',
      productTitle: "Modern Sofa Set",
      productPrice: "799.99",
      productCategory: "Living Rooms",
      productDescription:
          "Upgrade your living room with this sleek and modern sofa set. It includes a sofa, loveseat, and chair.",
      productImage:
          "https://images.unsplash.com/photo-1591079406666-38cfb185472c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fExpdmluZyUyMFJvb21zfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "5",
    ),
    ProductModel(
      productId: 'living-room-002',
      productTitle: "Coffee Table",
      productPrice: "149.99",
      productCategory: "Living Rooms",
      productDescription:
          "Add a stylish touch to your living room with this elegant coffee table made of solid wood.",
      productImage:
          "https://images.unsplash.com/photo-1608235343318-342ad5227ce9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8TGl2aW5nJTIwUm9vbXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'living-room-003',
      productTitle: "Sectional Sofa",
      productPrice: "899.99",
      productCategory: "Living Rooms",
      productDescription:
          "Create a cozy seating area with this comfortable sectional sofa. Perfect for movie nights!",
      productImage:
          "https://plus.unsplash.com/premium_photo-1676823571650-bae964e7010f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fExpdmluZyUyMFJvb21zfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "3",
    ),
    ProductModel(
      productId: 'living-room-004',
      productTitle: "TV Stand",
      productPrice: "249.99",
      productCategory: "Living Rooms",
      productDescription:
          "Organize your entertainment center with this spacious TV stand. It features ample storage space.",
      productImage:
          "https://images.unsplash.com/photo-1591825729269-caeb344f6df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fExpdmluZyUyMFJvb21zfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productId: 'living-room-005',
      productTitle: "Accent Chair",
      productPrice: "179.99",
      productCategory: "Living Rooms",
      productDescription:
          "Add a pop of color to your living room with this stylish accent chair. Available in multiple colors.",
      productImage:
          "https://images.unsplash.com/photo-1612366272533-cb0cc3074fc7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fExpdmluZyUyMFJvb21zfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-002',
      productTitle: "Sectional Sofa with Ottoman",
      productPrice: "899.99",
      productCategory: "Living Rooms",
      productDescription:
          "Create a comfortable and spacious seating area with this sectional sofa set. It comes with an ottoman for added versatility.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1676823547752-1d24e8597047?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-003',
      productTitle: "Coffee Table with Storage",
      productPrice: "199.99",
      productCategory: "Living Rooms",
      productDescription:
          "Complete your living room with this coffee table featuring ample storage space. It's both functional and stylish.",
      productImage:
          "https://images.unsplash.com/photo-1560185127-6ed189bf02f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-004',
      productTitle: "Reclining Armchair",
      productPrice: "349.99",
      productCategory: "Living Rooms",
      productDescription:
          "Relax in style with this comfortable reclining armchair. It's perfect for unwinding after a long day.",
      productImage:
          "https://images.unsplash.com/photo-1613545325278-f24b0cae1224?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8TGl2aW5nJTIwUm9vbXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-005',
      productTitle: "TV Entertainment Center",
      productPrice: "499.99",
      productCategory: "Living Rooms",
      productDescription:
          "Organize your entertainment area with this TV entertainment center. It offers plenty of storage for media and decor.",
      productImage:
          "https://images.unsplash.com/photo-1560184897-67f4a3f9a7fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-006',
      productTitle: "Rug with Geometric Pattern",
      productPrice: "79.99",
      productCategory: "Living Rooms",
      productDescription:
          "Add warmth and style to your living room with this rug featuring a chic geometric pattern.",
      productImage:
          "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-002',
      productTitle: "Sectional Sofa with Ottoman",
      productPrice: "899.99",
      productCategory: "Living Rooms",
      productDescription:
          "Create a comfortable and spacious seating area with this sectional sofa set. It comes with an ottoman for added versatility.",
      productImage:
          "https://images.unsplash.com/photo-1560184897-ae75f418493e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productId: 'living-room-003',
      productTitle: "Coffee Table with Storage",
      productPrice: "199.99",
      productCategory: "Living Rooms",
      productDescription:
          "Complete your living room with this coffee table featuring ample storage space. It's both functional and stylish.",
      productImage:
          "hhttps://images.unsplash.com/photo-1606074280798-2dabb75ce10c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8TGl2aW5nJTIwUm9vbXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-004',
      productTitle: "Reclining Armchair",
      productPrice: "349.99",
      productCategory: "Living Rooms",
      productDescription:
          "Relax in style with this comfortable reclining armchair. It's perfect for unwinding after a long day.",
      productImage:
          "https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-005',
      productTitle: "TV Entertainment Center",
      productPrice: "499.99",
      productCategory: "Living Rooms",
      productDescription:
          "Organize your entertainment area with this TV entertainment center. It offers plenty of storage for media and decor.",
      productImage:
          "https://images.unsplash.com/photo-1531971589569-0d9370cbe1e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1481&q=80",
    ),
    ProductModel(
      productQuantity: "3",
      productId: 'living-room-006',
      productTitle: "Rug with Geometric Pattern",
      productPrice: "79.99",
      productCategory: "Living Rooms",
      productDescription:
          "Add warmth and style to your living room with this rug featuring a chic geometric pattern.",
      productImage:
          "https://images.unsplash.com/photo-1615873968403-89e068629265?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80",
    ),
    ////Kitchen
    ProductModel(
      productId: 'kitchen-001',
      productTitle: "Stainless Steel Cookware Set",
      productPrice: "299.99",
      productCategory: "Kitchen",
      productDescription:
          "Upgrade your kitchen with this high-quality stainless steel cookware set. It includes pots, pans, and utensils.",
      productImage:
          "https://images.unsplash.com/photo-1565538810643-b5bdb714032a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8S2l0Y2hlbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "5",
    ),
    ProductModel(
      productId: 'kitchen-002',
      productTitle: "Coffee Maker",
      productPrice: "69.99",
      productCategory: "Kitchen",
      productDescription:
          "Start your day with a fresh cup of coffee brewed with this reliable coffee maker. It's easy to use and clean.",
      productImage:
          "https://images.unsplash.com/photo-1588854337221-4cf9fa96059c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fEtpdGNoZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'kitchen-003',
      productTitle: "Blender",
      productPrice: "49.99",
      productCategory: "Kitchen",
      productDescription:
          "Create delicious smoothies and shakes with this powerful blender. It's a must-have for any kitchen.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1661962720375-ce9097fb4d69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fEtpdGNoZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-002',
      productTitle: "Non-Stick Cookware Set",
      productPrice: "199.99",
      productCategory: "Kitchen",
      productDescription:
          "Make cooking a breeze with this non-stick cookware set. It's perfect for everyday use and easy to clean.",
      productImage:
          "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1568&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-003',
      productTitle: "Chef's Knife Set",
      productPrice: "59.99",
      productCategory: "Kitchen",
      productDescription:
          "Elevate your culinary skills with this chef's knife set. It includes a variety of knives for all your chopping needs.",
      productImage:
          "https://images.unsplash.com/photo-1565183928294-7063f23ce0f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-004',
      productTitle: "Blender with Multiple Speeds",
      productPrice: "89.99",
      productCategory: "Kitchen",
      productDescription:
          "Blend, puree, and crush with ease using this versatile blender with multiple speed settings. It's a kitchen essential.",
      productImage:
          "https://images.unsplash.com/photo-1571843439991-dd2b8e051966?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-005',
      productTitle: "Dinnerware Set",
      productPrice: "49.99",
      productCategory: "Kitchen",
      productDescription:
          "Upgrade your dining experience with this elegant dinnerware set. It includes plates, bowls, and mugs.",
      productImage:
          "https://images.unsplash.com/photo-1543503103-f94a0036ed9d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-006',
      productTitle: "Digital Food Scale",
      productPrice: "29.99",
      productCategory: "Kitchen",
      productDescription:
          "Achieve precision in your recipes with this digital food scale. It's a must-have for any home cook.",
      productImage:
          "https://images.unsplash.com/photo-1630699144310-980c8ed310e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-002',
      productTitle: "Non-Stick Cookware Set",
      productPrice: "199.99",
      productCategory: "Kitchen",
      productDescription:
          "Make cooking a breeze with this non-stick cookware set. It's perfect for everyday use and easy to clean.",
      productImage:
          "https://images.unsplash.com/photo-1588854337115-1c67d9247e4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productId: 'kitchen-003',
      productTitle: "Chef's Knife Set",
      productPrice: "59.99",
      productCategory: "Kitchen",
      productDescription:
          "Elevate your culinary skills with this chef's knife set. It includes a variety of knives for all your chopping needs.",
      productImage:
          "https://images.unsplash.com/photo-1600489000022-c2086d79f9d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8S2l0Y2hlbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-004',
      productTitle: "Blender with Multiple Speeds",
      productPrice: "89.99",
      productCategory: "Kitchen",
      productDescription:
          "Blend, puree, and crush with ease using this versatile blender with multiple speed settings. It's a kitchen essential.",
      productImage:
          "https://images.unsplash.com/photo-1588854337221-4cf9fa96059c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-005',
      productTitle: "Dinnerware Set",
      productPrice: "49.99",
      productCategory: "Kitchen",
      productDescription:
          "Upgrade your dining experience with this elegant dinnerware set. It includes plates, bowls, and mugs.",
      productImage:
          "https://images.unsplash.com/photo-1556912173-3bb406ef7e77?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'kitchen-006',
      productTitle: "Digital Food Scale",
      productPrice: "29.99",
      productCategory: "Kitchen",
      productDescription:
          "Achieve precision in your recipes with this digital food scale. It's a must-have for any home cook.",
      productImage:
          "https://images.unsplash.com/photo-1495433324511-bf8e92934d90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ////Gardens

    ProductModel(
      productId: 'garden-001',
      productTitle: "Outdoor Patio Furniture Set",
      productPrice: "799.99",
      productCategory: "Gardens",
      productDescription:
          "Enhance your outdoor space with this stylish patio furniture set. It includes comfortable seating and a coffee table.",
      productImage:
          "https://images.unsplash.com/photo-1602168915394-1d8202a26080?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fEdhcmRlbnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "6",
    ),
    ProductModel(
      productId: 'garden-002',
      productTitle: "Garden Tools Kit",
      productPrice: "49.99",
      productCategory: "Gardens",
      productDescription:
          "Keep your garden looking beautiful with this essential garden tools kit. It includes a variety of handy tools.",
      productImage:
          "https://images.unsplash.com/photo-1624523994693-a2353f8b69bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8R2FyZGVuc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "20",
    ),
    ProductModel(
      productId: 'garden-003',
      productTitle: "Outdoor Grill",
      productPrice: "299.99",
      productCategory: "Gardens",
      productDescription:
          "Host the perfect outdoor barbecue with this high-quality outdoor grill. It's easy to use and maintain.",
      productImage:
          "https://images.unsplash.com/photo-1563714193017-5a5fb60bc02b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8R2FyZGVuc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'garden-004',
      productTitle: "Hanging Planters Set",
      productPrice: "39.99",
      productCategory: "Gardens",
      productDescription:
          "Add a touch of greenery to your garden with this set of hanging planters. They're suitable for various plants.",
      productImage:
          "https://images.unsplash.com/photo-1624190011779-081f7cd23eae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8R2FyZGVuc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productQuantity: "10",
      productId: 'garden-003',
      productTitle: "Outdoor Lounge Chairs",
      productPrice: "249.99",
      productCategory: "Gardens",
      productDescription:
          "Relax and soak up the sun with these comfortable outdoor lounge chairs. They're perfect for your garden or patio.",
      productImage:
          "https://images.unsplash.com/photo-1624190011779-081f7cd23eae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1428&q=80",
    ),
    ProductModel(
      productQuantity: "10",
      productId: 'garden-004',
      productTitle: "Garden Gazebo",
      productPrice: "499.99",
      productCategory: "Gardens",
      productDescription:
          "Create a shaded retreat in your garden with this elegant garden gazebo. It's ideal for outdoor entertaining.",
      productImage:
          "https://images.unsplash.com/photo-1624190011800-210c04818c69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "10",
      productId: 'garden-005',
      productTitle: "Outdoor Fire Pit",
      productPrice: "349.99",
      productCategory: "Gardens",
      productDescription:
          "Stay warm on cool evenings with this outdoor fire pit. It's a great addition to your garden gatherings.",
      productImage:
          "https://images.unsplash.com/photo-1612387290123-34af734b5f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1372&q=80",
    ),
    ProductModel(
      productId: 'garden-006',
      productTitle: "Garden Planters Set",
      productPrice: "79.99",
      productCategory: "Gardens",
      productDescription:
          "Add greenery and style to your garden with this set of garden planters. They come in various sizes and designs.",
      productImage:
          "https://images.unsplash.com/photo-1602168915394-1d8202a26080?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'garden-007',
      productTitle: "Outdoor Solar Lights",
      productPrice: "29.99",
      productCategory: "Gardens",
      productDescription:
          "Illuminate your garden at night with these outdoor solar lights. They're energy-efficient and easy to install.",
      productImage:
          "https://images.unsplash.com/photo-1652712088191-fb23bc149248?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1582&q=80",
      productQuantity: "15",
    ),
    ProductModel(
      productId: 'garden-003',
      productTitle: "Outdoor Lounge Chairs",
      productPrice: "249.99",
      productCategory: "Gardens",
      productDescription:
          "Relax and soak up the sun with these comfortable outdoor lounge chairs. They're perfect for your garden or patio.",
      productImage:
          "https://images.unsplash.com/photo-1624524174203-5f680f46ffec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      productQuantity: "10",
    ),
    ////Balconies

    ProductModel(
      productId: 'balcony-005',
      productTitle: "Outdoor Bistro Set",
      productPrice: "199.99",
      productCategory: "Balconies",
      productDescription:
          "Transform your balcony into a cozy dining space with this bistro set. It includes a table and two chairs.",
      productImage:
          "https://images.unsplash.com/photo-1624204386084-dd8c05e32226?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8QmFsY29uaWVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productId: 'balcony-006',
      productTitle: "Hanging Hammock Chair",
      productPrice: "79.99",
      productCategory: "Balconies",
      productDescription:
          "Relax in style on your balcony with this comfortable hanging hammock chair. It's perfect for lounging.",
      productImage:
          "https://images.unsplash.com/photo-1574788929530-350a44df8a3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fEJhbGNvbmllc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-006',
      productTitle: "Hanging Hammock Chair",
      productPrice: "79.99",
      productCategory: "Balconies",
      productDescription:
          "Relax and enjoy your balcony with this comfortable hanging hammock chair. It's perfect for unwinding outdoors.",
      productImage:
          "https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-007',
      productTitle: "Folding Patio Table",
      productPrice: "59.99",
      productCategory: "Balconies",
      productDescription:
          "Maximize your balcony space with this folding patio table. It's compact and easy to store when not in use.",
      productImage:
          "https://images.unsplash.com/photo-1519380400109-9ef80d934359?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-008',
      productTitle: "Outdoor Rug",
      productPrice: "39.99",
      productCategory: "Balconies",
      productDescription:
          "Add style and comfort to your balcony with this outdoor rug. It's durable and resistant to weather conditions.",
      productImage:
          "https://images.unsplash.com/photo-1527512860543-cd6e99b74960?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1376&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-009',
      productTitle: "Solar-Powered String Lights",
      productPrice: "29.99",
      productCategory: "Balconies",
      productDescription:
          "Create a magical atmosphere on your balcony with these solar-powered string lights. They charge during the day and illuminate your evenings.",
      productImage:
          "https://images.unsplash.com/photo-1661196081255-bd23fcd93a0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-010',
      productTitle: "Folding Lounge Chair",
      productPrice: "89.99",
      productCategory: "Balconies",
      productDescription:
          "Sunbathe or read a book in comfort with this folding lounge chair for your balcony. It's adjustable and easy to store.",
      productImage:
          "https://images.unsplash.com/photo-1664964318731-d844043ea5f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'balcony-010',
      productTitle: "Folding Lounge Chair",
      productPrice: "89.99",
      productCategory: "Balconies",
      productDescription:
          "Sunbathe or read a book in comfort with this folding lounge chair for your balcony. It's adjustable and easy to store.",
      productImage:
          "https://images.unsplash.com/photo-1664964318768-9af3bb82e8e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ////Accessories
    ProductModel(
      productId: 'accessory-011',
      productTitle: "Decorative Throw Pillows",
      productPrice: "29.99",
      productCategory: "Accessories",
      productDescription:
          "Add a pop of color to your living room with these decorative throw pillows. They come in a set of two.",
      productImage:
          "https://images.unsplash.com/photo-1616432541912-fbc3dff3a9fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGhvbWUlMjBhY2Nlc3Nvcmllc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productId: 'accessory-012',
      productTitle: "Tabletop Succulent Plants",
      productPrice: "19.99",
      productCategory: "Accessories",
      productDescription:
          "Bring some greenery into your home with these tabletop succulent plants. They require minimal maintenance.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681748687587-a24f1be496aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aG9tZSUyMGFjY2Vzc29yaWVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "20",
    ),
    ProductModel(
      productId: 'accessory-013',
      productTitle: "Decorative Wall Clock",
      productPrice: "39.99",
      productCategory: "Accessories",
      productDescription:
          "Enhance your home decor with this stylish decorative wall clock. It adds a touch of elegance to any room.",
      productImage:
          "https://images.unsplash.com/photo-1545043565-b595adf80954?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhvbWUlMjBhY2Nlc3Nvcmllc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),

    ProductModel(
      productId: 'accessory-013',
      productTitle: "Candle Holders Set",
      productPrice: "39.99",
      productCategory: "Accessories",
      productDescription:
          "Create a cozy atmosphere with this set of candle holders. They come in various sizes and designs for versatile decorating.",
      productImage:
          "https://images.unsplash.com/photo-1606760227091-3dd870d97f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      productQuantity: "10",
    ),

    ProductModel(
      productId: 'accessory-014',
      productTitle: "Artificial Orchid Arrangement",
      productPrice: "49.99",
      productCategory: "Accessories",
      productDescription:
          "Add a touch of elegance with this artificial orchid arrangement. It looks fresh and lifelike without the need for maintenance.",
      productImage:
          "https://images.unsplash.com/photo-1603974372039-adc49044b6bd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1468&q=80",
      productQuantity: "8",
    ),

    ProductModel(
      productId: 'accessory-015',
      productTitle: "Decorative Wall Clock",
      productPrice: "34.99",
      productCategory: "Accessories",
      productDescription:
          "Keep track of time in style with this decorative wall clock. It features a unique design that complements any room.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681276169450-4504a2442173?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      productQuantity: "12",
    ),

    ProductModel(
      productId: 'accessory-016',
      productTitle: "Faux Fur Throw Blanket",
      productPrice: "29.99",
      productCategory: "Accessories",
      productDescription:
          "Stay warm and cozy with this luxurious faux fur throw blanket. It adds texture and comfort to your home decor.",
      productImage:
          "https://images.unsplash.com/photo-1685970735237-c8f8bfc5fab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      productQuantity: "15",
    ),

    ProductModel(
      productId: 'accessory-017',
      productTitle: "Decorative Vases Set",
      productPrice: "59.99",
      productCategory: "Accessories",
      productDescription:
          "Display your favorite flowers with this set of decorative vases. They come in various shapes and colors to suit your style.",
      productImage:
          "https://images.unsplash.com/photo-1515938541268-cb8a388444b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8QWNjZXNzb3JpZXMlMjBob21lfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "9",
    ),
    ProductModel(
      productId: 'accessory-013',
      productTitle: "Candle Holders Set",
      productPrice: "39.99",
      productCategory: "Accessories",
      productDescription:
          "Create a cozy atmosphere with this set of candle holders. They come in various sizes and designs for versatile decorating.",
      productImage:
          "https://images.unsplash.com/photo-1685970731571-72ede0cb26ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1376&q=80",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'accessory-013',
      productTitle: "Candle Holders Set",
      productPrice: "39.99",
      productCategory: "Accessories",
      productDescription:
          "Create a cozy atmosphere with this set of candle holders. They come in various sizes and designs for versatile decorating.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681276170538-092ed3578648?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'accessory-013',
      productTitle: "Candle Holders Set",
      productPrice: "39.99",
      productCategory: "Accessories",
      productDescription:
          "Create a cozy atmosphere with this set of candle holders. They come in various sizes and designs for versatile decorating.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681276170069-36fa70186f7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      productQuantity: "10",
    ),

    ////Mirrors
    ProductModel(
      productId: 'mirror-001',
      productTitle: "Wall-Mounted Vanity Mirror",
      productPrice: "49.99",
      productCategory: "Mirrors",
      productDescription:
          "Add a touch of elegance to your bedroom or bathroom with this wall-mounted vanity mirror. It features a sleek design and LED lighting for the perfect makeup application.",
      productImage:
          "https://images.unsplash.com/photo-1513716875652-59c99449ee70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fE1pcnJvcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "10",
    ),
    ProductModel(
      productId: 'mirror-002',
      productTitle: "Round Decorative Wall Mirror",
      productPrice: "39.99",
      productCategory: "Mirrors",
      productDescription:
          "Enhance the ambiance of your living room or hallway with this round decorative wall mirror. Its unique design and gold finish make it a stunning focal point.",
      productImage:
          "https://images.unsplash.com/photo-1595455967349-d254c74cf693?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fE1pcnJvcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-003',
      productTitle: "Full-Length Standing Mirror",
      productPrice: "79.99",
      productCategory: "Mirrors",
      productDescription:
          "Get a full view of your outfit with this elegant full-length standing mirror. It's a practical addition to your bedroom or dressing room.",
      productImage:
          "https://images.unsplash.com/photo-1513716875652-59c99449ee70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1572&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-004',
      productTitle: "Antique Wall Mirror",
      productPrice: "69.99",
      productCategory: "Mirrors",
      productDescription:
          "Add a touch of vintage charm to your home with this antique wall mirror. Its ornate frame adds character to any space.",
      productImage:
          "https://images.unsplash.com/photo-1487600849525-7d8eccadd679?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1464&q=80",
    ),
    ProductModel(
      productId: 'mirror-005',
      productTitle: "Bathroom Vanity Mirror",
      productPrice: "29.99",
      productCategory: "Mirrors",
      productDescription:
          "Upgrade your bathroom with this sleek and functional vanity mirror. It's perfect for grooming and makeup application.",
      productImage:
          "https://images.unsplash.com/photo-1520783077-5c05dd1fdc99?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWlycm9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-006',
      productTitle: "Oval Wall-Mounted Mirror",
      productPrice: "59.99",
      productCategory: "Mirrors",
      productDescription:
          "Create an artistic focal point in your home with this oval wall-mounted mirror. Its unique shape adds visual interest.",
      productImage:
          "https://images.unsplash.com/photo-1494949385013-8b57482a0e4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1502&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-007',
      productTitle: "LED Bathroom Mirror",
      productPrice: "129.99",
      productCategory: "Mirrors",
      productDescription:
          "Illuminate your bathroom and add a modern touch with this LED bathroom mirror. It features a built-in light for enhanced visibility.",
      productImage:
          "https://images.unsplash.com/photo-1595455967759-5f1356993e53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-008',
      productTitle: "Frameless Wall Mirror",
      productPrice: "49.99",
      productCategory: "Mirrors",
      productDescription:
          "Keep it simple and stylish with this frameless wall mirror. It's versatile and suits a variety of interior designs.",
      productImage:
          "https://images.unsplash.com/photo-1619378396304-7ef156537d7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-003',
      productTitle: "Full-Length Standing Mirror",
      productPrice: "79.99",
      productCategory: "Mirrors",
      productDescription:
          "Get a full view of your outfit with this elegant full-length standing mirror. It's a practical addition to your bedroom or dressing room.",
      productImage:
          "https://images.unsplash.com/photo-1620416264626-84e3c7dbe91f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-003',
      productTitle: "Full-Length Standing Mirror",
      productPrice: "79.99",
      productCategory: "Mirrors",
      productDescription:
          "Get a full view of your outfit with this elegant full-length standing mirror. It's a practical addition to your bedroom or dressing room.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681980020984-2700a72e56c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'mirror-004',
      productTitle: "Antique Wall Mirror",
      productPrice: "69.99",
      productCategory: "Mirrors",
      productDescription:
          "Add a touch of vintage charm to your home with this antique wall mirror. Its ornate frame adds character to any space.",
      productImage:
          "https://plus.unsplash.com/premium_photo-1681980018817-b36ab8848616?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
    ),
    //////////Doors
    ProductModel(
      productId: 'door-001',
      productTitle: "Solid Wood Front Door",
      productPrice: "249.99",
      productCategory: "Doors",
      productDescription:
          "Upgrade the entrance to your home with this solid wood front door. It's not only stylish but also provides security and insulation.",
      productImage:
          "https://images.unsplash.com/photo-1600873040273-48e6da19ed94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fERvb3JzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "5",
    ),
    ProductModel(
      productId: 'door-002',
      productTitle: "Sliding Glass Patio Door",
      productPrice: "349.99",
      productCategory: "Doors",
      productDescription:
          "Bring in natural light and create a seamless connection to your outdoor space with this sliding glass patio door. It's energy-efficient and visually appealing.",
      productImage:
          "https://images.unsplash.com/photo-1581613856477-f65208436a48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fERvb3JzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "8",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-003',
      productTitle: "Fiberglass Entry Door",
      productPrice: "199.99",
      productCategory: "Doors",
      productDescription:
          "Enhance your home's curb appeal and security with this durable fiberglass entry door. It's resistant to weather and easy to maintain.",
      productImage:
          "https://images.unsplash.com/photo-1493146165056-bb822d9422dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-004',
      productTitle: "French Patio Door",
      productPrice: "449.99",
      productCategory: "Doors",
      productDescription:
          "Add a touch of elegance to your home with this classic French patio door. It's designed for both beauty and functionality.",
      productImage:
          "https://images.unsplash.com/photo-1493895565436-93db25637518?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-005',
      productTitle: "Steel Security Door",
      productPrice: "299.99",
      productCategory: "Doors",
      productDescription:
          "Ensure the safety of your home with this heavy-duty steel security door. It's tough, reliable, and built to last.",
      productImage:
          "https://images.unsplash.com/photo-1558725177-79763c6e9014?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZG9vcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-006',
      productTitle: "Barn Style Sliding Door",
      productPrice: "279.99",
      productCategory: "Doors",
      productDescription:
          "Give your interior a rustic charm with this barn style sliding door. It's a unique addition to any home decor.",
      productImage:
          "https://images.unsplash.com/photo-1512541018786-6dd34b40f32b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-007',
      productTitle: "PVC Folding Patio Door",
      productPrice: "389.99",
      productCategory: "Doors",
      productDescription:
          "Maximize your space and enjoy outdoor views with this PVC folding patio door. It's versatile and stylish.",
      productImage:
          "https://images.unsplash.com/photo-1506636366880-b083d2cb2f34?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-003',
      productTitle: "Fiberglass Entry Door",
      productPrice: "199.99",
      productCategory: "Doors",
      productDescription:
          "Enhance your home's curb appeal and security with this durable fiberglass entry door. It's resistant to weather and easy to maintain.",
      productImage:
          "https://images.unsplash.com/photo-1532028358058-44741b59154a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1452&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-003',
      productTitle: "Fiberglass Entry Door",
      productPrice: "199.99",
      productCategory: "Doors",
      productDescription:
          "Enhance your home's curb appeal and security with this durable fiberglass entry door. It's resistant to weather and easy to maintain.",
      productImage:
          "https://images.unsplash.com/photo-1600873040273-48e6da19ed94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'door-003',
      productTitle: "Fiberglass Entry Door",
      productPrice: "199.99",
      productCategory: "Doors",
      productDescription:
          "Enhance your home's curb appeal and security with this durable fiberglass entry door. It's resistant to weather and easy to maintain.",
      productImage:
          "https://images.unsplash.com/photo-1503075131240-fe4b3a7fa473?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),

    ////Lighting
    ProductModel(
      productId: 'lighting-001',
      productTitle: "Crystal Chandelier",
      productPrice: "399.99",
      productCategory: "Lighting",
      productDescription:
          "Add a touch of elegance to your dining room or foyer with this exquisite crystal chandelier. It creates a stunning display of light and luxury.",
      productImage:
          "https://media.istockphoto.com/id/1287255369/photo/vintage-luxury-interior-lighting-lamp-cover-with-bronze-plate-and-transparent-glass-bulb-for.webp?b=1&s=170667a&w=0&k=20&c=Y502fQjkJJqRsswPu4vAHOBrLxlV_zLQbp73CqFukns=",
      productQuantity: "7",
    ),

    ProductModel(
      productId: 'lighting-002',
      productTitle: "Industrial Pendant Lamp",
      productPrice: "89.99",
      productCategory: "Lighting",
      productDescription:
          "Create a modern industrial look in your kitchen or living space with this stylish pendant lamp. It's perfect for illuminating your workspace.",
      productImage:
          "https://images.unsplash.com/photo-1516455590571-18256e5bb9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGhvbWUlMjBMaWd0aGluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      productQuantity: "12",
    ),

    ProductModel(
      productId: 'lighting-003',
      productTitle: "Wall Sconce Lighting Fixture",
      productPrice: "29.99",
      productCategory: "Lighting",
      productDescription:
          "Enhance the ambiance of your bedroom or hallway with this elegant wall sconce lighting fixture. It provides soft, warm lighting for a cozy atmosphere.",
      productImage:
          "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aG9tZSUyMExpZ3RoaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "15",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-002',
      productTitle: "Modern Pendant Light",
      productPrice: "149.99",
      productCategory: "Lighting",
      productDescription:
          "Illuminate your living space with this sleek and modern pendant light. It adds a contemporary touch to any room.",
      productImage:
          "https://images.unsplash.com/photo-1499510502518-8f294dac3f9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-003',
      productTitle: "Vintage Wall Sconce",
      productPrice: "79.99",
      productCategory: "Lighting",
      productDescription:
          "Create a nostalgic atmosphere with this vintage wall sconce. It's perfect for adding character to your home decor.",
      productImage:
          "https://images.unsplash.com/photo-1507494924047-60b8ee826ca9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1373&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-004',
      productTitle: "LED Floor Lamp",
      productPrice: "199.99",
      productCategory: "Lighting",
      productDescription:
          "Brighten up your room and save energy with this stylish LED floor lamp. It's adjustable and energy-efficient.",
      productImage:
          "https://images.unsplash.com/photo-1531079997448-485eb7235a2b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-005',
      productTitle: "Industrial Cage Pendant Light",
      productPrice: "119.99",
      productCategory: "Lighting",
      productDescription:
          "Bring an industrial vibe to your home with this cage pendant light. It's a unique addition to your lighting collection.",
      productImage:
          "https://images.unsplash.com/photo-1461710727236-2366afa21725?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-006',
      productTitle: "Smart LED Bulb",
      productPrice: "29.99",
      productCategory: "Lighting",
      productDescription:
          "Upgrade your lighting with this smart LED bulb. It's compatible with voice assistants and can be controlled remotely.",
      productImage:
          "https://images.unsplash.com/photo-1462041866295-e4af004a32ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1373&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-002',
      productTitle: "Modern Pendant Light",
      productPrice: "149.99",
      productCategory: "Lighting",
      productDescription:
          "Illuminate your living space with this sleek and modern pendant light. It adds a contemporary touch to any room.",
      productImage:
          "https://images.unsplash.com/photo-1523157729865-dc28491c220b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productQuantity: "8",
      productId: 'lighting-003',
      productTitle: "Vintage Wall Sconce",
      productPrice: "79.99",
      productCategory: "Lighting",
      productDescription:
          "Create a nostalgic atmosphere with this vintage wall sconce. It's perfect for adding character to your home decor.",
      productImage:
          "https://images.unsplash.com/photo-1581431911662-5398fffff10a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    ),
    ProductModel(
      productId: 'lighting-004',
      productTitle: "Smart LED Bulb",
      productPrice: "19.99",
      productCategory: "Lighting",
      productDescription:
          "Upgrade your home lighting with this smart LED bulb. Control the color and intensity from your smartphone for a personalized lighting experience.",
      productImage:
          "https://images.unsplash.com/photo-1504972090022-6edb81e4e534?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG9tZSUyMExpZ3RoaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      productQuantity: "20",
    ),
  ];

  static List<CategoryModel> categoriesList = [
    CategoryModel(
      id: "Living Rooms",
      image:
          "https://images.unsplash.com/photo-1615873968403-89e068629265?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80",
      name: "Living Rooms",
    ),
    CategoryModel(
      id: "Bedrooms",
      image:
          "https://images.unsplash.com/photo-1598928636135-d146006ff4be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      name: "Bedrooms",
    ),
    CategoryModel(
      id: "Kitchen",
      image:
          "https://images.unsplash.com/photo-1600585152220-90363fe7e115?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      name: "Kitchen",
    ),
    CategoryModel(
      id: "Gardens",
      image:
          "https://plus.unsplash.com/premium_photo-1682094772065-39e068f21deb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      name: "Gardens",
    ),
    CategoryModel(
      id: "Balconies",
      image:
          "https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=873&q=80",
      name: "Balconies",
    ),
    CategoryModel(
      id: "Accessories",
      image:
          "https://images.unsplash.com/photo-1551029118-d3c293a67c0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=961&q=80",
      name: "Accessories",
    ),
    CategoryModel(
      id: "Sofa",
      image:
          "https://plus.unsplash.com/premium_photo-1661407582641-9ce38a3c8402?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      name: "Sofa",
    ),
    CategoryModel(
      id: "Mirrors",
      image:
          "https://images.unsplash.com/photo-1595455967759-5f1356993e53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      name: "Mirrors",
    ),
    CategoryModel(
      id: "Chairs",
      image:
          "https://images.unsplash.com/photo-1519947486511-46149fa0a254?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      name: "Chairs",
    ),
    CategoryModel(
      id: "Doors",
      image:
          "https://images.unsplash.com/photo-1559871753-75a00941f6b2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      name: "Doors",
    ),
    CategoryModel(
      id: "Tables",
      image:
          "https://images.unsplash.com/photo-1611269154421-4e27233ac5c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=465&q=80",
      name: "Tables",
    ),
    CategoryModel(
      id: "Lighting",
      image:
          "https://media.istockphoto.com/id/1082558358/photo/different-modern-streamlined-mirror-copper-chandeliers-bubble-metal-copper-shade-pendant.webp?b=1&s=170667a&w=0&k=20&c=0PMiYGq2ruqKApGdT4EA-8YwrxGa5Rp5IsXuvh62uqQ=",
      name: "Lighting",
    ),
    CategoryModel(
      id: "Desks",
      image:
          "https://images.unsplash.com/photo-1506506200949-df8644f002d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      name: "Desks",
    ),
    CategoryModel(
      id: "Bathroom",
      image:
          "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      name: "Bathroom",
    ),
  ];
}
