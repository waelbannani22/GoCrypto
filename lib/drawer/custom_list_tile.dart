import 'package:cryptocurrency_app/ui/screens/classement.dart';
import 'package:cryptocurrency_app/ui/screens/home.dart';
import 'package:cryptocurrency_app/ui/screens/joblist.dart';
import 'package:cryptocurrency_app/ui/screens/news.dart';
import 'package:cryptocurrency_app/ui/screens/settings.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String title;
  final IconData? doHaveMoreOptions;
  final int infoCount;
  final String path;

  const CustomListTile({
    Key? key,
    required this.isCollapsed,
    required this.icon,
    required this.title,
    required this.path,
    this.doHaveMoreOptions,
    required this.infoCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (path == "NewsScreen") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.decelerate);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, a, b) => NewsScreen(),
            ),
          );
        } else if (path == "Leaderboard") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.decelerate);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, a, b) => Classement(),
            ),
          );
        } else if (path == "HomeScreen") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.decelerate);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, a, b) => HomeScreen(),
            ),
          );
        } else if (path == "SettingScreen") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.decelerate);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, a, b) => SettingScreen(),
            ),
          );
        } else if (path == "JobList") {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder: (context, animation, animationTime, child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.decelerate);
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, a, b) => JobList(),
            ),
          );
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: isCollapsed ? 300 : 80,
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    if (infoCount > 0)
                      Positioned(
                        right: -5,
                        top: -5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            if (isCollapsed) const SizedBox(width: 10),
            if (isCollapsed)
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    if (infoCount > 0)
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple[200],
                          ),
                          child: Center(
                            child: Text(
                              infoCount.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            if (isCollapsed) const Spacer(),
            if (isCollapsed)
              Expanded(
                flex: 1,
                child: doHaveMoreOptions != null
                    ? IconButton(
                        icon: Icon(
                          doHaveMoreOptions,
                          color: Colors.white,
                          size: 12,
                        ),
                        onPressed: () {},
                      )
                    : const Center(),
              ),
          ],
        ),
      ),
    );
  }
}
