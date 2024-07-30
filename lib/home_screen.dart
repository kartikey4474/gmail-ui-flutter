import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.edit),
          label: const Text('Compose'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.video_call_outlined),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  autofocus: false,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  onTap: () {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:
                        Theme.of(context).colorScheme.onSurface.withOpacity(.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(16),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/drawer_image.png',
                        width: 12,
                        height: 12,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(21004),
                        child: Image.asset(
                          'assets/images/profile_image.png',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                    hintText: "Search in mail",
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Primary',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //build a card with prefix image as png and title and descritpion
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 4),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         width: 40,
              //         height: 40,
              //         child: Image.asset(
              //           'assets/images/dummy_profile1.png',
              //           width: 40,
              //           height: 40,
              //         ),
              //       ),
              //       const SizedBox(width: 16),
              //       const Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Chris Coyier',
              //             style: TextStyle(
              //                 fontSize: 16, fontWeight: FontWeight.w600),
              //           ),
              //           Text(
              //             'Lune budgeting app bets- its ',
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         width: 60,
              //       ),
              //       Column(
              //         children: [
              //           const Text(
              //             '10:00 AM',
              //             style: TextStyle(
              //                 fontSize: 12, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(
              //             height: 8,
              //           ),
              //           SvgPicture.asset(
              //             'assets/icons/star_logo.svg',
              //             width: 16,
              //             height: 16,
              //           ),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    final item = dummyData[index];
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  item['image']!,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['name']!,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    item['description']!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Add some spacing between the image and the text
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item['time']!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 8),
                                  SvgPicture.asset(
                                    item['icon']!,
                                    width: 16,
                                    height: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> dummyData = [
  {
    'name': 'Chris Coyier',
    'description': 'Lune budgeting app bets- its ',
    'time': '10:00 AM',
    'image': 'assets/images/dummy_profile1.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Sarah Drasner',
    'description': 'Vue.js expert and speaker',
    'time': '11:00 AM',
    'image': 'assets/images/dummy_profile2.png',
    'icon': 'assets/icons/star_logo_active.svg'
  },
  {
    'name': 'Dan Abramov',
    'description': 'React core team member',
    'time': '12:00 PM',
    'image': 'assets/images/dummy_profile3.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Addy Osmani',
    'description': 'Google Chrome engineer',
    'time': '01:00 PM',
    'image': 'assets/images/dummy_profile1.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Kent C. Dodds',
    'description': 'JavaScript educator',
    'time': '02:00 PM',
    'image': 'assets/images/dummy_profile3.png',
    'icon': 'assets/icons/star_logo_active.svg'
  },
  {
    'name': 'Evan You',
    'description': 'Creator of Vue.js',
    'time': '03:00 PM',
    'image': 'assets/images/dummy_profile2.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Sophie Alpert',
    'description': 'React core team member',
    'time': '04:00 PM',
    'image': 'assets/images/dummy_profile1.png',
    'icon': 'assets/icons/star_logo_active.svg'
  },
  {
    'name': 'Guillermo Rauch',
    'description': 'CEO of Vercel',
    'time': '05:00 PM',
    'image': 'assets/images/dummy_profile3.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Lea Verou',
    'description': 'CSS expert and speaker',
    'time': '06:00 PM',
    'image': 'assets/images/dummy_profile1.png',
    'icon': 'assets/icons/star_logo.svg'
  },
  {
    'name': 'Paul Irish',
    'description': 'Google Chrome developer',
    'time': '07:00 PM',
    'image': 'assets/images/dummy_profile2.png',
    'icon': 'assets/icons/star_logo_active.svg'
  },
];
