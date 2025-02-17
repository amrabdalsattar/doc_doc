import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_list_view_item.dart';

import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctor>? doctors;
  const DoctorsListView({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctors?.length ?? 0,
        itemBuilder: (context, index) => DoctorsListViewItem(
          doctor: doctors?[index],
        ),
      ),
    );
  }
}
