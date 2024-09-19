import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteraiwebtest/Blocs/registration_bloc.dart';
import 'package:flutteraiwebtest/Events/registration_event.dart';
import 'package:flutteraiwebtest/States/registration_state.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (_) => RegistrationBloc(),
          child: BlocListener<RegistrationBloc, RegistrationState>(
            listener: (context, state) {
              if (state is RegistrationFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              } else if (state is RegistrationSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Registered: ${state.email}')),
                );
              }
            },
            child: BlocBuilder<RegistrationBloc, RegistrationState>(
              builder: (context, state) {
                if (state is RegistrationLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        context.read<RegistrationBloc>().add(RegisterUser(
                            email: _emailController.text,
                            password: _passwordController.text));
                      },
                      child: const Text('Register'),
                    ),
                    if (state is RegistrationFailure)
                      Text(
                        state.error,
                        style: const TextStyle(color: Colors.red),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
