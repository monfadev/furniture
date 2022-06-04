import 'package:flutter/material.dart';
import 'package:furniture/ui/components/custom_responsive.dart';
import 'package:furniture/ui/constant/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              _desktop(context),
            ],
          ),
          Container(height: MediaQuery.of(context).padding.top, color: Colors.white),
          _appBar(context),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: CustomResponsive.isDesktop(context) ? 100 : 40, vertical: 20),
      child: Row(
        children: [
          if (CustomResponsive.isDesktop(context)) ...[
            Text("furniture.", style: GoogleFonts.montserrat(color: blackColor, fontWeight: bold)),
            const SizedBox(width: 100),
            Text("Shop", style: GoogleFonts.montserrat(color: blackColor)),
            const SizedBox(width: 50),
            Text("Sale", style: GoogleFonts.montserrat(color: blackColor)),
            const SizedBox(width: 50),
            Text("About", style: GoogleFonts.montserrat(color: blackColor)),
            const SizedBox(width: 50),
            Text("Contact", style: GoogleFonts.montserrat(color: blackColor)),
            const Spacer(),
            const Icon(Icons.search, size: 20, color: blackColor),
            const SizedBox(width: 10),
            const Text("Search..."),
            const SizedBox(width: 15),
            const Icon(Icons.person_outline_rounded, color: blackColor),
            const SizedBox(width: 10),
            const Icon(Icons.shopping_bag_outlined, color: blackColor),
          ] else ...[
            Text("furniture.", style: GoogleFonts.montserrat(color: blackColor, fontWeight: bold)),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: blackColor),
            ),
          ],
        ],
      ),
    );
  }

  Widget _desktop(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: bg,
          image: DecorationImage(
            alignment: Alignment.bottomRight,
            image: AssetImage('assets/bg.png'),
            scale: 3,
          ),
        ),
        child: IntrinsicHeight(
          child: _items(context),
        ),
      ),
    );
  }

  Widget _items(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: (!CustomResponsive.isMobile(context)) ? 150 : 130, left: CustomResponsive.isDesktop(context) ? 100 : 40, bottom: 170),
      child: Align(
        alignment: Alignment.centerLeft,
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomResponsive.isDesktop(context) ? const SizedBox(height: 150) : const SizedBox.shrink(),
              Text("New interior collection", style: GoogleFonts.montserrat(color: blackColor, fontSize: 32, fontWeight: bold)),
              const SizedBox(height: 20),
              Text("A competent interior design will squeeze a rich", style: GoogleFonts.montserrat(color: blackColor)),
              const SizedBox(height: 5),
              Text("inner world into even the most limited room size", style: GoogleFonts.montserrat(color: blackColor)),
              const SizedBox(height: 40),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: blackColor),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Shop", style: GoogleFonts.montserrat(color: whiteColor)),
                  ),
                ),
              ),
              const SizedBox(height: 110),
            ],
          ),
        ),
      ),
    );
  }
}
