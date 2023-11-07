import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:page_design/widgets/transparent_card.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    var w = AppLocalizations.of(context);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("assets/doctor.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TransparentCard(
                        widget: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TransparentCard(
                        widget: Icon(Icons.share_rounded, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  w!.doctorTitle,
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18),
                ),
                const Text(
                  "Prof. Dr. Bilal Biçen",
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TransparentCard(widget: Icon(Icons.info_sharp, color: Colors.white)),
                    TransparentCard(
                      widget: Row(
                        children: [
                          const Icon(
                            Icons.medical_services_rounded,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            w.services,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const TransparentCard(widget: Icon(Icons.message, color: Colors.white)),
                    const TransparentCard(
                      widget: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "4.6",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
