import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/drawer/custom_drawer.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/ui/widgets/favorite_pair.dart';
import 'package:cryptocurrency_app/ui/widgets/pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsProvider);
    final favoritePair = ref.watch(favoritePairProvider);
    return Scaffold(
        key: Keys.HOME_SCREEN,
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: false,
          title: Text(
            LocaleKeys.homeTitle.tr(),
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      child: favoritePair.when(
                        data: (data) {
                          return FavoritePairWidget(data);
                        },
                        loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        ),
                      ),
                    ),
                    Expanded(
                      child: pairs.when(
                        data: (data) {
                          return Container(
                            child: ListView.builder(
                              padding: EdgeInsets.only(top: 0.0),
                              itemCount: data.length,
                              itemBuilder: (ctx, int idx) => ProviderScope(
                                overrides: [
                                  currentPair.overrideWithValue(data[idx]),
                                ],
                                child: const PairTile(),
                              ),
                            ),
                          );
                        },
                        loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
