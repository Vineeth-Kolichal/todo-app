// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTodos,
    required TResult Function() addTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String id) updateTodoStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTodos,
    TResult? Function()? addTodo,
    TResult? Function(String id)? deleteTodo,
    TResult? Function(String id)? updateTodoStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTodos,
    TResult Function()? addTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String id)? updateTodoStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(UpdateTodoStatus value) updateTodoStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(UpdateTodoStatus value)? updateTodoStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(UpdateTodoStatus value)? updateTodoStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllTodosImplCopyWith<$Res> {
  factory _$$GetAllTodosImplCopyWith(
          _$GetAllTodosImpl value, $Res Function(_$GetAllTodosImpl) then) =
      __$$GetAllTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetAllTodosImpl>
    implements _$$GetAllTodosImplCopyWith<$Res> {
  __$$GetAllTodosImplCopyWithImpl(
      _$GetAllTodosImpl _value, $Res Function(_$GetAllTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTodosImpl implements GetAllTodos {
  const _$GetAllTodosImpl();

  @override
  String toString() {
    return 'TodoEvent.getAllTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTodos,
    required TResult Function() addTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String id) updateTodoStatus,
  }) {
    return getAllTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTodos,
    TResult? Function()? addTodo,
    TResult? Function(String id)? deleteTodo,
    TResult? Function(String id)? updateTodoStatus,
  }) {
    return getAllTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTodos,
    TResult Function()? addTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String id)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (getAllTodos != null) {
      return getAllTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(UpdateTodoStatus value) updateTodoStatus,
  }) {
    return getAllTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(UpdateTodoStatus value)? updateTodoStatus,
  }) {
    return getAllTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(UpdateTodoStatus value)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (getAllTodos != null) {
      return getAllTodos(this);
    }
    return orElse();
  }
}

abstract class GetAllTodos implements TodoEvent {
  const factory GetAllTodos() = _$GetAllTodosImpl;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddTodoImpl implements AddTodo {
  const _$AddTodoImpl();

  @override
  String toString() {
    return 'TodoEvent.addTodo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddTodoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTodos,
    required TResult Function() addTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String id) updateTodoStatus,
  }) {
    return addTodo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTodos,
    TResult? Function()? addTodo,
    TResult? Function(String id)? deleteTodo,
    TResult? Function(String id)? updateTodoStatus,
  }) {
    return addTodo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTodos,
    TResult Function()? addTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String id)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(UpdateTodoStatus value) updateTodoStatus,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(UpdateTodoStatus value)? updateTodoStatus,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(UpdateTodoStatus value)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class AddTodo implements TodoEvent {
  const factory AddTodo() = _$AddTodoImpl;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTodoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements DeleteTodo {
  _$DeleteTodoImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTodos,
    required TResult Function() addTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String id) updateTodoStatus,
  }) {
    return deleteTodo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTodos,
    TResult? Function()? addTodo,
    TResult? Function(String id)? deleteTodo,
    TResult? Function(String id)? updateTodoStatus,
  }) {
    return deleteTodo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTodos,
    TResult Function()? addTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String id)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(UpdateTodoStatus value) updateTodoStatus,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(UpdateTodoStatus value)? updateTodoStatus,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(UpdateTodoStatus value)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class DeleteTodo implements TodoEvent {
  factory DeleteTodo(final String id) = _$DeleteTodoImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoStatusImplCopyWith<$Res> {
  factory _$$UpdateTodoStatusImplCopyWith(_$UpdateTodoStatusImpl value,
          $Res Function(_$UpdateTodoStatusImpl) then) =
      __$$UpdateTodoStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdateTodoStatusImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateTodoStatusImpl>
    implements _$$UpdateTodoStatusImplCopyWith<$Res> {
  __$$UpdateTodoStatusImplCopyWithImpl(_$UpdateTodoStatusImpl _value,
      $Res Function(_$UpdateTodoStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateTodoStatusImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTodoStatusImpl implements UpdateTodoStatus {
  _$UpdateTodoStatusImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.updateTodoStatus(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoStatusImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoStatusImplCopyWith<_$UpdateTodoStatusImpl> get copyWith =>
      __$$UpdateTodoStatusImplCopyWithImpl<_$UpdateTodoStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTodos,
    required TResult Function() addTodo,
    required TResult Function(String id) deleteTodo,
    required TResult Function(String id) updateTodoStatus,
  }) {
    return updateTodoStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTodos,
    TResult? Function()? addTodo,
    TResult? Function(String id)? deleteTodo,
    TResult? Function(String id)? updateTodoStatus,
  }) {
    return updateTodoStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTodos,
    TResult Function()? addTodo,
    TResult Function(String id)? deleteTodo,
    TResult Function(String id)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (updateTodoStatus != null) {
      return updateTodoStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(UpdateTodoStatus value) updateTodoStatus,
  }) {
    return updateTodoStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(UpdateTodoStatus value)? updateTodoStatus,
  }) {
    return updateTodoStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(UpdateTodoStatus value)? updateTodoStatus,
    required TResult orElse(),
  }) {
    if (updateTodoStatus != null) {
      return updateTodoStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateTodoStatus implements TodoEvent {
  factory UpdateTodoStatus(final String id) = _$UpdateTodoStatusImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UpdateTodoStatusImplCopyWith<_$UpdateTodoStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<Todo> get todoList => throw _privateConstructorUsedError;
  List<Todo> get completed => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  String? get addStatus => throw _privateConstructorUsedError;
  String? get deleteStatus => throw _privateConstructorUsedError;
  String? get updataStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<Todo> todoList,
      List<Todo> completed,
      String userName,
      String? errorMsg,
      String? addStatus,
      String? deleteStatus,
      String? updataStatus});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? todoList = null,
    Object? completed = null,
    Object? userName = null,
    Object? errorMsg = freezed,
    Object? addStatus = freezed,
    Object? deleteStatus = freezed,
    Object? updataStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      addStatus: freezed == addStatus
          ? _value.addStatus
          : addStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteStatus: freezed == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      updataStatus: freezed == updataStatus
          ? _value.updataStatus
          : updataStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<Todo> todoList,
      List<Todo> completed,
      String userName,
      String? errorMsg,
      String? addStatus,
      String? deleteStatus,
      String? updataStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? todoList = null,
    Object? completed = null,
    Object? userName = null,
    Object? errorMsg = freezed,
    Object? addStatus = freezed,
    Object? deleteStatus = freezed,
    Object? updataStatus = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      completed: null == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      addStatus: freezed == addStatus
          ? _value.addStatus
          : addStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteStatus: freezed == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      updataStatus: freezed == updataStatus
          ? _value.updataStatus
          : updataStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required final List<Todo> todoList,
      required final List<Todo> completed,
      required this.userName,
      this.errorMsg,
      required this.addStatus,
      required this.deleteStatus,
      required this.updataStatus})
      : _todoList = todoList,
        _completed = completed;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  final List<Todo> _completed;
  @override
  List<Todo> get completed {
    if (_completed is EqualUnmodifiableListView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completed);
  }

  @override
  final String userName;
  @override
  final String? errorMsg;
  @override
  final String? addStatus;
  @override
  final String? deleteStatus;
  @override
  final String? updataStatus;

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, hasError: $hasError, todoList: $todoList, completed: $completed, userName: $userName, errorMsg: $errorMsg, addStatus: $addStatus, deleteStatus: $deleteStatus, updataStatus: $updataStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.addStatus, addStatus) ||
                other.addStatus == addStatus) &&
            (identical(other.deleteStatus, deleteStatus) ||
                other.deleteStatus == deleteStatus) &&
            (identical(other.updataStatus, updataStatus) ||
                other.updataStatus == updataStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      const DeepCollectionEquality().hash(_todoList),
      const DeepCollectionEquality().hash(_completed),
      userName,
      errorMsg,
      addStatus,
      deleteStatus,
      updataStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TodoState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final List<Todo> todoList,
      required final List<Todo> completed,
      required final String userName,
      final String? errorMsg,
      required final String? addStatus,
      required final String? deleteStatus,
      required final String? updataStatus}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<Todo> get todoList;
  @override
  List<Todo> get completed;
  @override
  String get userName;
  @override
  String? get errorMsg;
  @override
  String? get addStatus;
  @override
  String? get deleteStatus;
  @override
  String? get updataStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
