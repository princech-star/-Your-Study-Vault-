const SubjectUnitsScreen({
    super.key,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    final units = [
      'Unit 1',
      'Unit 2',
      'Unit 3',
      'Unit 4',
      'Unit 5',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$subject Units',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: units.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.menu_book),
                      title: Text(
                        units[index],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SubjectUnitsScreen(
        subject: subjects[index],
      ),
    ),
  );},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}