import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_book_app/bloc/events/home_page_event.dart';
import 'package:flutter_book_app/bloc/state/home_page_state.dart';
import 'package:flutter_book_app/repository/book_repository.dart';
import 'package:meta/meta.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final BookRepository repository;

  HomePageBloc({@required this.repository});

  @override
  HomePageState get initialState => HomePageStateLoading();

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is HomePageEventSearch) {
      yield HomePageStateLoading();

      var query = event.query;
      var state = await repository.getBooks(query);

      yield state;
    }
  }
}
