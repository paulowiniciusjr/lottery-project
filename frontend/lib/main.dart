import 'package:grpc/grpc.dart';
import 'generated/lottery.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = LotteryServiceClient(channel);

  try {
    final response = await client.generateGame(
      GameRequest()
        ..type = GameType.LOTOFACIL
        ..quantity = 2,
    );

    for (var game in response.games) {
      print(game.numbers);
    }
  } catch (e) {
    print('Erro: $e');
  }

  await channel.shutdown();
}