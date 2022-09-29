import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:untitled/web_ui/blog/blog_ui.dart';
import 'package:untitled/web_ui/blog/one_blog.dart';
import 'package:untitled/web_ui/froms/form.dart';
import 'package:untitled/web_ui/shop/shop_ui.dart';

import '../auth/log_in_chick.dart';
import 'card_ui/card_ui.dart';
class WebLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/shop',"/","/cart","/blog/:blogs","/community"];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('/'),
        child: login_check(),
      ),
      if (state.uri.pathSegments.contains('shop'))
        const BeamPage(
          key: ValueKey('shop'),
          child: ShopUi(),
        ),
      if (state.uri.pathSegments.contains('cart'))
        const BeamPage(
          key: ValueKey('cart'),
          child: CardLis(),
        ),
      if (state.uri.pathSegments.contains('blog'))
        const BeamPage(
          key: ValueKey('blog'),
          child: MainBlog(),
        ),
      if (state.uri.pathSegments.contains('community'))
        const BeamPage(
          key: ValueKey('community'),
          child: FromUi(),
        ),
    ];
    final String? blogid = state.pathParameters['blogs'];
    if (blogid != null) {
      pages.add(
         BeamPage(
          key: ValueKey('blog/$blogid'),
          child: OneBlog(blogida:blogid),
        ),
      );
    }
    return pages;
  }
}
