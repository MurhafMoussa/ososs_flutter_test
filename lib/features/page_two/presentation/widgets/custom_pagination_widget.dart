import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomPaginationWidget extends StatefulWidget {
  const CustomPaginationWidget({
    super.key,
    this.onLoading,
    required this.listTobePaginated,
    required this.refreshController,
  });

  final VoidCallback? onLoading;
  final Widget listTobePaginated;

  final RefreshController refreshController;
  @override
  State<CustomPaginationWidget> createState() => _CustomPaginationWidgetState();
}

class _CustomPaginationWidgetState extends State<CustomPaginationWidget> {
  @override
  Widget build(BuildContext context) => SmartRefresher(
        controller: widget.refreshController,
        enablePullDown: false,
        enablePullUp: true,
        header: const WaterDropHeader(),
        onLoading: widget.onLoading,
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus? mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = Text(AppLocalizations.of(context).noMorePokemons);
            } else if (mode == LoadStatus.loading) {
              body = const CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = const Text('Load fiald :(');
            } else if (mode == LoadStatus.canLoading) {
              body = const Text('Release to load more');
            } else {
              body = Text(AppLocalizations.of(context).noMorePokemons);
            }
            return SizedBox(
              height: 55,
              child: Center(child: body),
            );
          },
        ),
        child: widget.listTobePaginated,
      );
}
