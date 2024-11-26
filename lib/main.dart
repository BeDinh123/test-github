import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyWidget(),
      ),
    ),
  ));
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedIndex = 0; // Chỉ mục của tab hiện tại
  double brightness = 0.5; // Giá trị mặc định cho thanh điều chỉnh
  bool isSwitchedOn = false; // Trạng thái của nút On/Off // Tình trạng đèn
  double volume = 0.5; // Âm lượng ban đầu
  int temperature = 25; // Nhiệt độ ban đầu

  // Các widget cho từng tab
  Widget _buildContent() {
    switch (selectedIndex) {
      case 0: // Profile
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Thông tin nhóm',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue, // Màu của AppBar
          ),
          backgroundColor: Colors.blue.shade50, // Màu nền của Scaffold
          body: Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade50, // Màu nền của Container
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo nhóm
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                        'assets/logo.png'), // Thay đường dẫn ảnh logo
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  // Danh sách thành viên
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Căn sát nhau hơn
                    children: [
                      // Cột tên thành viên
                      Flexible(
                        flex: 1, // Chia không gian, có thể điều chỉnh lại flex
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Căn trái
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 1: Ngô Đặng Bảo Châu',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 2: Nguyễn Văn Huy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 3: Nguyễn Thanh Huy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 4: Lê Thanh Lâm',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 5: Lương Ngọc Tài',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Text(
                                'Thành viên 6: Lê Trọng Nguyễn',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Cột MSSV
                      Flexible(
                        flex: 1, // Chia không gian với cột bên trái
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Căn trái
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221006',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221025',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221026',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221035',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221065',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 5),
                              child: Text(
                                'MSSV: 0306221257',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      case 1: // Thông tin
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Thông tin chức năng',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Cột 1
                      Expanded(
                        child: Container(
                          height:
                              220, // Đặt chiều cao cố định cho các Container
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.flash_on, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Chức năng 1: Tắt bật đèn',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '- Trong chức năng này người dùng có thể click vào Switch để chuyển chế độ sáng tắt của đèn.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Cột 2
                      Expanded(
                        child: Container(
                          height:
                              220, // Đặt chiều cao cố định cho các Container
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.volume_up, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Chức năng 2: Cài đặt âm thanh',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '- Ở chức năng này người dùng có thể tăng giảm âm lượng thông qua thanh kéo Slider.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Cột 3
                      Expanded(
                        child: Container(
                          height:
                              220, // Đặt chiều cao cố định cho các Container
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.brightness_6, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Chức năng 3: Điều chỉnh độ sáng',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '- Chức năng này giúp người dùng tăng hoặc giảm độ sáng của led theo mong muốn.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Cột 4
                      Expanded(
                        child: Container(
                          height:
                              220, // Đặt chiều cao cố định cho các Container
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.thermostat, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Chức năng 4: Tăng giảm nhiệt độ ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '- Chức năng này giúp người dùng tăng giảm nhiệt độ thông qua 2 Button "+" và "-" để giảm hoặc tăng nhiệt độ.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Cột 5
                      Expanded(
                        child: Container(
                          height:
                              220, // Đặt chiều cao cố định cho các Container
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.lightbulb, color: Colors.blue),
                              SizedBox(height: 8),
                              Text(
                                'Chức năng 5: Thay đổi chế độ đèn',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '- Trong chức năng này gồm 2 Button đại diện cho 2 chế độ đèn: đèn nhấp nháy, đèn sáng dần.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Colors.lightBlue[50], // Màu nền của trang
        );
      case 2: // Chức năng (Brightness Control)
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Chức năng',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Chức năng 1: Tắt bật đèn
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Điều chỉnh tắt bật đèn',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Icon(
                      isSwitchedOn ? Icons.flash_on : Icons.flash_off,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Switch(
                      value: isSwitchedOn,
                      onChanged: (value) {
                        setState(() {
                          isSwitchedOn = value;
                        });
                      },
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Chức năng 2: Cài đặt âm thanh
                Column(
                  children: [
                    Text(
                      'Điều chỉnh âm lượng',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Slider(
                      value: volume,
                      onChanged: (value) {
                        setState(() {
                          volume = value;
                        });
                      },
                      min: 0.0,
                      max: 1.0,
                      activeColor: Colors.green,
                      inactiveColor: Colors.green.withOpacity(0.3),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Chức năng 3: Điều chỉnh độ sáng
                Column(
                  children: [
                    Text(
                      'Điều chỉnh độ sáng đèn',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Slider(
                      value: brightness,
                      onChanged: (value) {
                        setState(() {
                          brightness = value;
                        });
                      },
                      min: 0.0,
                      max: 1.0,
                      activeColor: Colors.blue,
                      inactiveColor: Colors.blue.withOpacity(0.3),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Chức năng 4: Tăng giảm nhiệt độ
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Điều chỉnh nhiệt độ',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          temperature = temperature > 0 ? temperature - 1 : 0;
                        });
                      },
                    ),
                    Text(
                      '$temperature°C',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.green),
                      onPressed: () {
                        setState(() {
                          temperature =
                              temperature < 100 ? temperature + 1 : 100;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Chức năng 5: Thay đổi chế độ đèn
                Column(
                  children: [
                    Text(
                      'Điều chỉnh chế độ đèn',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Đèn nhấp nháy'),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Đèn sáng dần'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.lightBlue[50], // Màu nền của trang
        );

      case 3: // Thống kê
        return Expanded(
          flex: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Thống kê biểu đồ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blue,
            ),
            backgroundColor: Colors.lightBlue[50], // Thay đổi màu nền của trang
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tiêu đề Biểu đồ Cột
                  Text(
                    'Biểu Đồ Cột',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Biểu đồ Cột
                  Container(
                    height: 130, width: 700, // Đã giảm chiều cao để tránh tràn
                    child: BarChart(
                      BarChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(show: false),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          BarChartGroupData(x: 0, barRods: [
                            BarChartRodData(toY: 8, color: Colors.blue),
                          ]),
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(toY: 6, color: Colors.red),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(toY: 4, color: Colors.green),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Tiêu đề Biểu đồ Tròn
                  Text(
                    'Biểu Đồ Tròn',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Biểu đồ Tròn
                  Container(
                    height: 130, width: 700, // Đã giảm chiều cao để tránh tràn
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                              value: 40, color: Colors.blue, title: '40%'),
                          PieChartSectionData(
                              value: 30, color: Colors.red, title: '30%'),
                          PieChartSectionData(
                              value: 30, color: Colors.green, title: '30%'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Tiêu đề Biểu đồ Đường
                  Text(
                    'Biểu Đồ Đường',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Biểu đồ Đường
                  Container(
                    height: 130, width: 700, // Đã giảm chiều cao để tránh tràn
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(show: false),
                        borderData: FlBorderData(show: false),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 1),
                              FlSpot(1, 3),
                              FlSpot(2, 2),
                              FlSpot(3, 4),
                            ],
                            isCurved: true,
                            color: Colors.blue, // Đúng cách sử dụng màu
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              icon: Icon(
                Icons.person,
                color: selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              icon: Icon(
                Icons.info,
                color: selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              icon: Icon(
                Icons.settings,
                color: selectedIndex == 2 ? Colors.blue : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              icon: Icon(
                Icons.bar_chart,
                color: selectedIndex == 3 ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
