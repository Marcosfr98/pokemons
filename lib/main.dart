import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemons/controllers/pokemon_controller.dart';
import 'package:pokemons/models/pokemon.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _colors = [
    Colors.blue,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.deepPurple,
    Colors.deepPurpleAccent,
  ];

  late final Future<List<Pokemon>> _pokemonFuture;

  @override
  void initState() {
    super.initState();
    _pokemonFuture = PokemonController.instance.getPokemons(20);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SafeArea(
                child: FutureBuilder<List<Pokemon>>(
                  future: _pokemonFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text("Error: ${snapshot.error}"));
                    }
                    final pokemons = snapshot.data!;
                    return CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Pokémon",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.aBeeZee(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          sliver: SliverGrid.builder(
                            itemCount: pokemons.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 0.8,
                                ),
                            itemBuilder: (context, index) {
                              final pokemon = pokemons[index];
                              final color = _colors[index % _colors.length];

                              return InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder:
                                        (context) => Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(32),
                                              topRight: Radius.circular(32),
                                            ),
                                          ),
                                          height:
                                              MediaQuery.of(
                                                context,
                                              ).size.height *
                                              .7,
                                          width: double.infinity,
                                          child: Center(
                                            child: ListView(
                                              shrinkWrap: true,
                                              padding: EdgeInsets.all(24),
                                              children: [
                                                Image.network(
                                                  height: 150,
                                                  width: 150,
                                                  fit: BoxFit.fill,
                                                  "${snapshot.data![index].sprites!.frontDefault}",
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  "${snapshot.data![index].name}",
                                                ),
                                                Text(
                                                  "Abilities",
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 24,
                                                  ),
                                                ),
                                                ...List.generate(
                                                  snapshot
                                                      .data![index]
                                                      .abilities!
                                                      .length,
                                                  (current) => ListTile(
                                                    leading: Icon(
                                                      Icons.query_stats,
                                                    ),
                                                    title: Text(
                                                      snapshot
                                                              .data![index]
                                                              .abilities![current]
                                                              .ability!
                                                              .name ??
                                                          "Unknown",
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Moves",
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 24,
                                                  ),
                                                ),
                                                ...List.generate(
                                                  snapshot
                                                      .data![index]
                                                      .moves!
                                                      .length,
                                                  (current) => ListTile(
                                                    leading: Icon(
                                                      Icons.sports_cricket,
                                                    ),
                                                    title: Text(
                                                      snapshot
                                                              .data![index]
                                                              .moves![current]
                                                              .move!
                                                              .name ??
                                                          "Unknown",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                  );
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                                top: Radius.circular(16),
                                              ),
                                          child: Image.network(
                                            pokemon.sprites?.frontDefault ??
                                                "https://via.placeholder.com/150",
                                            fit: BoxFit.cover,
                                            errorBuilder: (
                                              context,
                                              error,
                                              stackTrace,
                                            ) {
                                              return const Icon(
                                                Icons.error,
                                                size: 50,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          pokemon.name ?? "Unknown",
                                          style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.forward_rounded),
        ),
      ),
    );
  }
}
