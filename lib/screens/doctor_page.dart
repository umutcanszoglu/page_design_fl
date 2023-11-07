import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:page_design/widgets/doctor_card.dart';
import 'package:page_design/widgets/info_card.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var w = AppLocalizations.of(context);
    return Scaffold(
      body: Stack(
        children: [
          const DoctorCard(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(24),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        w!.mainInfo,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        w.viewMore,
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoCard(
                          num: "346", percent: "+4 %", name: w.totalPatients, color: Colors.green),
                      InfoCard(
                          num: "89%", percent: "-5 %", name: w.resolvedIssues, color: Colors.red),
                      InfoCard(
                          num: "93%", percent: "+8 %", name: w.goodReviews, color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading:
                          const Icon(Icons.local_hospital_outlined, size: 40, color: Colors.blue),
                      title: Text(w.bethany),
                      subtitle: const Text("80 Maiden Ln, New York 5.6km"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading:
                          const Icon(Icons.local_hospital_outlined, size: 40, color: Colors.blue),
                      title: Text(w.central),
                      subtitle: const Text("80 Maiden Ln, New York 5.6km"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                        backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(w.button),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
