import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient supabase;
  SupabaseService(this.supabase);

//:get home data
  // Future<ResponseService<ResponseHome>> getHomeData() async {
  //   try {
  //     final responses = await Future.wait([
  //       supabase.from('categories').select(),
  //       supabase.from('mentors').select(),
  //       supabase.from('courses').select(),
  //     ]);
  //     return ResponseService(
  //         true,
  //         '',
  //         ResponseHome.fromMap({
  //           'categories': responses[0],
  //           'mentors': responses[1],
  //           'courses': responses[2],
  //         }));
  //   } catch (e) {
  //     log("runtimeType${e.toString()}");
  //     return ResponseService(false, ErrorHandlerSupabase.getErrorMessage(e));
  //   }
  // }
}
