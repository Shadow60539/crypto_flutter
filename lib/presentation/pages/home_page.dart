import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_flutter/application/bloc/coins_bloc.dart';
import 'package:crypto_flutter/domain/entity/coin_meta.dart';
import 'package:crypto_flutter/presentation/widgets/fade_animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formatCurrency = new NumberFormat.simpleCurrency(name: "INR");
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<CoinMeta> _coinsList = <CoinMeta>[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              "Coinbase",
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                ),
              )
            ],
          ),
          backgroundColor: Colors.black,
          body: BlocConsumer<CoinsBloc, CoinsState>(
            listener: (context, state) {
              state.coinsOption.map(
                (a) => a.fold(
                  (l) => null,
                  (r) {
                    // _coinsList.clear();
                    SchedulerBinding.instance?.addPostFrameCallback((_) {
                      Future f = Future(() {});
                      state.coins.forEach((element) {
                        f = f.then((value) => Future.delayed(
                                const Duration(milliseconds: 200), () {
                              _coinsList.add(element);
                              _listKey.currentState
                                  ?.insertItem(_coinsList.length - 1);
                            }));
                      });
                    });
                  },
                ),
              );
            },
            builder: (context, state) {
              final List<CoinMeta> coins = state.coins;
              return AnimatedList(
                key: _listKey,
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(bottom: 50),
                initialItemCount: _coinsList.length,
                itemBuilder: (context, index, animation) {
                  final CoinMeta coin = coins[index];
                  return FadeFromUpAnimation(
                    drop: 0.5,
                    end: 1.0,
                    begin: 0.0,
                    child: ListTile(
                      dense: true,
                      leading: CachedNetworkImage(
                        imageUrl: coin.icon,
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        coin.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        coin.symbol.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            formatCurrency.format(coin.price),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${coin.priceChange.sign == -1 ? "" : "+"}${coin.priceChange}%",
                            style: TextStyle(
                              color: coin.priceChange.sign == -1
                                  ? Colors.redAccent
                                  : Colors.greenAccent,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}
