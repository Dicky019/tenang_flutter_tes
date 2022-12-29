import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_mapper.dart';
import '../data/home_repository.dart';
import '../domain/doctor.dart';
import '../../../services/remote/api/config/api_result.dart';

class HomeService {
  final HomeRepository _homeRepository;

  HomeService(this._homeRepository);

  Future<ApiResult<List<Doctor>>> getDoctors() async {
    final resultDoctor = await _homeRepository.getDoctors();
    return HomeMapper.mapToDoctor(resultDoctor );
  }
}

final homeServiceProvider = Provider<HomeService>((ref) {
  final homeRepository = ref.read(homeRepositoryProvider);
  return HomeService(homeRepository);
});
