class ServiceProvider {
  String name;
  String profession;
  String description;
  String phone;
  bool individual;

  ServiceProvider({
    required this.name,
    required this.profession,
    required this.description,
    required this.phone,
    required this.individual,
  });

  @override
  String toString() {
    return "Name: $name\nProfession: $profession\nPhone: $phone\nDescription: $description";
  }
}

List<ServiceProvider> providers = [
  ServiceProvider(
 
 
      name: "joe badawi",
      profession: "Plumber",
      description: "Expert plumber for fixing leaks.",
      phone: "07712347",
      individual: true),
  ServiceProvider(
      name: "Power Electric Co.",
      profession: "Electrician",
      description: "Professional electrical services.",
      phone: "0789876543",
      individual: false),
  ServiceProvider(
      name: "Elite Carpentry",
      profession: "Carpenter",
      description: "Custom furniture and home decor.",
      phone: "0763344556",
      individual: false),
  ServiceProvider(
      name: "Adel kanj",
      profession: "Electrician",
      description: "Certified home electrician.",
      phone: "78945667",
      individual: true),
  ServiceProvider(
      name: "Rapid Fix Plumbing",
      profession: "Plumber",
      description: "Quick and reliable plumbing services.",
      phone: "0751122334",
      individual: false),
  ServiceProvider(
      name: "Marwan safady",
      profession: "Carpenter",
      description: "Experienced carpenter for woodwork projects.",
      phone: "03466778",
      individual: true),
  ServiceProvider(
      name: "Spark Tech Solutions",
      profession: "Electrician",
      description: "Industrial and residential electrical solutions.",
      phone: "70834556",
      individual: false),
  ServiceProvider(
      name: "Olivia Brown",
      profession: "Plumber",
      description: "Licensed plumber for residential work.",
      phone: "07322334",
      individual: true),
  ServiceProvider(
      name: "HomeStyle Carpentry",
      profession: "Carpenter",
      description: "Custom cabinetry and renovations.",
      phone: "80288776",
      individual: false),
  ServiceProvider(
      name: "fadi masri",
      profession: "Electrician",
      description: "Affordable and fast electrical repairs.",
      phone: "71977889",
      individual: true),
];


