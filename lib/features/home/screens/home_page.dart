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
    return Builder(
      builder: (context) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Builder(
                builder: (context) {
                  return CustomSearchBar(
                    onChanged: (text) => context.readPhotosBloc
                      ..add(
                        LoadPhotosEvent(
                          isNew: context.tabController.index.isEven,
                          isSwitch: true,
                          name: text,
                        ),
                      ),
                  );
                },
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
            body: Builder(
              builder: (context) {
                return PhotosWidget(
                  isNew: context.tabController.index.isEven,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
