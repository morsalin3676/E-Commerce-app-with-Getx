import 'package:e_commerce1/presentation/ui/screens/order_details_screen.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> orders = [

    {
      "orderNo": "1947034",
      "trackingNo": "IW3475453455",
      "quantity": 3,
      "total": 112,
      "status": "Delivered",
      "date": "05-12-2026",
    },

    {
      "orderNo": "1947035",
      "trackingNo": "IW3475453121",
      "quantity": 2,
      "total": 89,
      "status": "Delivered",
      "date": "10-12-2026",
    },

    {
      "orderNo": "1947036",
      "trackingNo": "IW3475456789",
      "quantity": 5,
      "total": 245,
      "status": "Delivered",
      "date": "15-12-2026",
    },

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF5F5F5),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text(
          "My Orders",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
      ),

      body: Column(

        children: [

          Container(
            color: Colors.white,
            child: TabBar(

              controller: _tabController,

              labelColor: Colors.black,

              unselectedLabelColor: Colors.grey,

              indicatorColor: Colors.red,

              indicatorWeight: 3,

              tabs: const [

                Tab(text: "Delivered"),

                Tab(text: "Processing"),

                Tab(text: "Cancelled"),

              ],
            ),
          ),

          Expanded(

            child: TabBarView(

              controller: _tabController,

              children: [

                _buildDelivered(),

                const Center(
                  child: Text("Processing Orders"),
                ),

                const Center(
                  child: Text("Cancelled Orders"),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }

  Widget _buildDelivered() {

    return ListView.separated(

      padding: EdgeInsets.all(16.w),

      itemCount: orders.length,

      separatorBuilder: (_, __) => SizedBox(height: 16.h),

      itemBuilder: (_, index) {

        final order = orders[index];

        return OrderCard(

          orderNumber: order["orderNo"],

          trackingNumber: order["trackingNo"],

          quantity: order["quantity"],

          totalAmount: order["total"],

          status: order["status"],

          date: order["date"],

          onDetails: () {

           Get.to(()=> OrderDetailsScreen());

          },

        );
      },
    );
  }
}