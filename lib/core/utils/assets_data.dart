import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
enum AssetsData {
  profileAvatar('images/profile_avatar.jpg'),
  imageTile1('images/image_tile1.jpg'),
  imageTile2('images/image_tile2.jpeg'),
  imageTile3('images/image_tile3.jpeg'),
  imageTile4('images/image_tile4.jpg'),
  searchIcon('icons/search_icon.svg'),
  searchIconFilled('icons/search_icon_filled.svg'),
  chatIcon('icons/chat_icon.svg'),
  homeIcon('icons/home_icon.svg'),
  favoriteIcon('icons/favorite_icon.svg'),
  userIcon('icons/user_icon.svg'),
  eyeOff('icons/eye-off.svg'),
  eye('icons/eye.svg');

  final String path;

  const AssetsData(this.path);

  String get absolutePath => 'assets/$path';

  Widget svgPicture({
    double? height,
    double? width,
    Color? color,
  }) =>
      SvgPicture.asset(
        absolutePath,
        height: height ?? 25,
        width: width ?? 25,
        colorFilter: color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
      );

  Widget get pngPicture => Image.asset(absolutePath);

  Widget jpgPicture({BoxFit? fit}) {
    return Image.asset(absolutePath, fit: fit);
  }

}
