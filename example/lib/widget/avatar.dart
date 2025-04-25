import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl; // 头像的网络地址
  final double size; // 头像的显示尺寸
  final double borderRadius; // 圆角半径
  final int fold; // 倍图

  const AvatarWidget(
    this.imageUrl, {
    super.key,
    this.size = 40,
    this.borderRadius = 20,
    this.fold = 2,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: size,
        height: size,
        fit: BoxFit.cover, // 图片填充方式
        cacheKey: imageUrl, // 使用 URL 作为缓存键
        memCacheWidth: size.toInt() * fold, // 限制内存缓存的分辨率
        memCacheHeight: size.toInt() * fold,
        placeholder: (context, url) => Container(
          width: size,
          height: size,
          color: Colors.grey[300], // 加载中的占位图
          child: const Icon(Icons.person, color: Colors.white),
        ),
        errorWidget: (context, url, error) => Container(
          width: size,
          height: size,
          color: Colors.grey[300], // 加载失败的占位图
          child: const Icon(Icons.error, color: Colors.white),
        ),
      ),
    );
  }
}
