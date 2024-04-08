import 'package:chat_app/utils/constants/image_strings.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrls,
      required this.bio,
      required this.jobTitle});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    const User(
        id: 1,
        name: "Adedeji Adetayo",
        age: 21,
        imageUrls: [
          Cimages.userOneFirstImage,
          Cimages.userOneSecondImage,
          Cimages.userOneThirdImage,
          Cimages.userOneFourthImage,
          Cimages.userOneFourthImage
        ],
        bio: "My bio",
        jobTitle: "Software developer"),
    const User(
        id: 2,
        name: "Adedeji Adetola",
        age: 21,
        imageUrls: [
          Cimages.userTwoFirstImage,
          Cimages.userTwoSecondImage,
          Cimages.userTwoThirdImage,
          Cimages.userTwoFourthImage,
          Cimages.userTwoFourthImage
        ],
        bio: "My bio",
        jobTitle: "Software developer"),
  ];
}
