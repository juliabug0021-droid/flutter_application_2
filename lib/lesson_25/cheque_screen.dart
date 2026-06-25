import 'package:flutter/material.dart';
import 'package:flutter_lab/lesson_25/cheque_entity.dart';
import 'package:flutter_lab/lesson_25/cheque_repository.dart';

class ChequeScreen extends StatefulWidget {
  const ChequeScreen({super.key});

  @override
  State<ChequeScreen> createState() => _ChequeScreenState();
}

class _ChequeScreenState extends State<ChequeScreen> {
  final ChequeRepository _repository = ChequeRepository();

  ChequeEntity? _cheque;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadCheque();
  }

  Future<void> _loadCheque() async {
    final chequeEntity = await _repository.fetchCheque();

    setState(() {
      _cheque = chequeEntity;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Silpo Cheque')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Номер чеку: ${_cheque!.chequeId}'),
            Text('Вартість: ${_cheque!.totalAmount}'),
            const SizedBox(height: 16),
            const Text('Список покупок:'),
            Expanded(
              child: ListView.builder(
                itemCount: _cheque!.items.length,
                itemBuilder: (context, index) {
                  return Text(_cheque!.items[index]);
                },
              ),
            ),
            const SizedBox(height: 16),
            Text('Передбачення: ${_cheque!.prediction}'),
          ],
        ),
      ),
    );
  }
}
