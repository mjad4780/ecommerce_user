import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/animation/open_container_wrapper.dart';
import '../../../core/networking/api_constants.dart';
import '../data/models/response_home/datum.dart';
import 'product_detail_screen.dart';

class ListItemsSearch extends StatelessWidget {
  final List<Datum> listdatamodel;
  const ListItemsSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listdatamodel.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return OpenContainerWrapper(
              nextScresan: ProductDetailScreen(listdatamodel[index]),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Card(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: CachedNetworkImage(
                              imageUrl:
                                  "${ApiConstants.imageItem}/${listdatamodel[index].itemImage}")),
                      Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Text(listdatamodel[index].itemName!),
                            subtitle:
                                Text(listdatamodel[index].categoriesName!),
                          )),
                    ],
                  ),
                )),
              ));
        });
  }
}
