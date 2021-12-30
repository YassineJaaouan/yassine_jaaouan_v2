import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique_stacked/utilities/constant.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder:()=> HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, model, child) {
        return AnnotatedRegion(
          value:const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          child: DefaultTabController(
            length: 5,
            child: Scaffold(
              body:
              const TabBarView(
                children: [
                  HomeTabBarSection(),
                  HomeTabBarSection(),
                  HomeTabBarSection(),
                  HomeTabBarSection(),
                  HomeTabBarSection(),
                ],
              ),

              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: TabBar(
                  // controller: _tabController,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(color: Color(0xff134147),width: 3),
                    insets: EdgeInsets.only(bottom: 50 ),
                  ),
                  indicatorPadding:const EdgeInsets.symmetric(horizontal: 10),
                  tabs: [
                    Tab( icon: Image.asset('assets/images/home.png')),
                    // I use the block.png instead of block.svg because of
                    Tab( icon: Image.asset('assets/images/block.png')),
                    const Tab( icon: Icon(Icons.add_circle_outlined,color: Color(0xff134147),size:  50,),),
                    Tab( icon: Image.asset('assets/images/block.png')),
                    Tab( icon: Image.asset('assets/images/block.png')),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class HomeTabBarSection extends ViewModelWidget<HomeViewModel> {
  const HomeTabBarSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 150,
          width: deviceSize.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.only(
                bottomLeft:  Radius.circular(40.0),
                bottomRight:  Radius.circular(40.0),
              )
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                // padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white.withOpacity(0.05),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Color(0xff256168), spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset('assets/images/user.png')),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Daniela Fernàdez Ramos',
                              style: homeTextStyle,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet',
                              style: subtitleTextStyle,
                            ),
                          ],
                        ),
                      ),
                      // SvgPicture.asset('assets/icons/search.svg',),
                      Align(alignment: Alignment.centerRight,child: Image.asset('assets/images/search.png')),
                    ]),
              ),
            ),
          ]),
        ),
        Container(
          height: deviceSize.height - 220,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const[
             Text('Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet '),
          ]),
        ),
      ]),
    );
  }
}