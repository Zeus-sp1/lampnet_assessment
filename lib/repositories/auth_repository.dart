// import 'dart:convert';

// import 'package:veegilbankapp/model/loginmodel.dart';
// import 'package:veegilbankapp/model/signupmodel.dart';

// import '../../services/api_service.dart';
// import '../model/accountwithdrawal.dart';
// import '../model/postaccount.dart';

// class AuthRepository {
//   Future<RegisterModel?> registerUserAccount() async {
//     Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Accept": "application/json",
//     };
//     Map<String, String> payload = {
//       "phoneNumber": "07039332005",
//       "password": "pass"
//     };
//     var response = await ApiService()
//         .post('https://bank.veegil.com/auth/signup', payload, headers);
//     return registerModelFromJson(response.body);
//   }

//   Future<UserAccountsModel?> userAccountsModel() async {
//     Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Accept": "application/json",
//     };
//     Map<String, String> payload = {
//       "phoneNumber": "07039332005",
//       "password": "pass"
//     };
//     var response = await ApiService()
//         .post('https://bank.veegil.com/auth/signup', payload, headers);
//     return userAccountsModelFromJson(response.body);
//   }

//   Future<TransferModel?> transferModel() async {
//     Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Accept": "application/json",
//     };
//     Map<String, String> payload = {
//       "phoneNumber": "07039332005",
//       "password": "pass"
//     };
//     var response = await ApiService()
//         .post('https://bank.veegil.com/accounts/transfer', payload, headers);
//     return transferModelFromJson(response.body);
//   }

//   Future<WithdrawalModel?> withdrawalModel() async {
//     Map<String, String> headers = {
//       "Content-Type": "application/json",
//       "Accept": "application/json",
//     };
//     Map<String, String> payload = {
//       "phoneNumber": "07039332005",
//       "password": "pass"
//     };
//     var response = await ApiService()
//         .post('https://bank.veegil.com/accounts/withdraw', payload, headers);
//     return withdrawalModelFromJson(response.body);
//   }

//   Future<UserAccountsModel?> getAccounts() async {
//     var response =
//         await ApiService().get('https://bank.veegil.com/accounts/list');

//     return userAccountsModelFromJson(response.body);
//   }
// }
