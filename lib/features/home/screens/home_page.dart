part of '../home_part.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PhotosBloc(
            photosRepository: instance(),
          )..add(
              const LoadPhotosEvent(
                isNew: true,
                isSwitch: false,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => PhotoCubit(
            filesRepository: instance(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: CustomSearchBar(
              onChanged: (text) => context.readPhotosBloc
                ..add(
                  LoadPhotosEvent(
                    isNew: context.tabController.index.isEven,
                    isSwitch: true,
                    name: text,
                  ),
                ),
            ),
            bottom: CustomTabBar(
              titles: [
                context.localization.newText,
                context.localization.popular,
              ],
              onTap: (index) => context.readPhotosBloc
                ..add(
                  LoadPhotosEvent(
                    isNew: index.isEven,
                    isSwitch: true,
                  ),
                ),
            ),
          ),
          body: PhotosWidget(
            isNew: context.tabController.index.isEven,
          ),
        );
      }),
    );
  }
}
