import 'package:flutter/material.dart';
import 'service_provider.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String selectedType = "Any";
  String selectedProfession = "Plumber";
  String? selectedProviderName;

  List<ServiceProvider> getFilteredProviders() {
    return providers.where((provider) {
      bool typeMatch = selectedType == "Any" ||
          (selectedType == "Individual" && provider.individual) ||
          (selectedType == "Company" && !provider.individual);
      return typeMatch && provider.profession == selectedProfession;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<ServiceProvider> filteredProviders = getFilteredProviders();

    return Scaffold(
      appBar: AppBar(title: Text("Service Providers")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Individual"),
              Radio(
                  value: "Individual",
                  groupValue: selectedType,
                  onChanged: (value) => setState(() => selectedType = value!)),
              Text("Company"),
              Radio(
                  value: "Company",
                  groupValue: selectedType,
                  onChanged: (value) => setState(() => selectedType = value!)),
              Text("Any"),
              Radio(
                  value: "Any",
                  groupValue: selectedType,
                  onChanged: (value) => setState(() => selectedType = value!)),
            ],
          ),
          DropdownButton<String>(
            value: selectedProfession,
            items: ["Plumber", "Electrician", "Carpenter"]
                .map((profession) => DropdownMenuItem(
                      child: Text(profession),
                      value: profession,
                    ))
                .toList(),
            onChanged: (value) => setState(() => selectedProfession = value!),
          ),
          DropdownButton<String>(
            hint: Text("Select Provider"),
            value: selectedProviderName,
            items: filteredProviders
                .map((provider) => DropdownMenuItem(
                      child: Text(provider.name),
                      value: provider.name,
                    ))
                .toList(),
            onChanged: (value) => setState(() => selectedProviderName = value!),
          ),
          if (selectedProviderName != null)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                filteredProviders
                    .firstWhere((p) => p.name == selectedProviderName)
                    .toString(),
                style: TextStyle(fontSize: 16),
              ),
            ),
        ],
      ),
    );
  }
}
