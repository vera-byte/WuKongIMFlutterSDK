// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWKChannelCollection on Isar {
  IsarCollection<WKChannel> get wKChannels => this.collection();
}

const WKChannelSchema = CollectionSchema(
  name: r'channel',
  id: 8853698245235537269,
  properties: {
    r'avatar': PropertySchema(
      id: 0,
      name: r'avatar',
      type: IsarType.string,
    ),
    r'avatarCacheKey': PropertySchema(
      id: 1,
      name: r'avatarCacheKey',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 2,
      name: r'category',
      type: IsarType.string,
    ),
    r'channelId': PropertySchema(
      id: 3,
      name: r'channelId',
      type: IsarType.string,
    ),
    r'channelName': PropertySchema(
      id: 4,
      name: r'channelName',
      type: IsarType.string,
    ),
    r'channelRemark': PropertySchema(
      id: 5,
      name: r'channelRemark',
      type: IsarType.string,
    ),
    r'channelType': PropertySchema(
      id: 6,
      name: r'channelType',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 7,
      name: r'createdAt',
      type: IsarType.string,
    ),
    r'deviceFlag': PropertySchema(
      id: 8,
      name: r'deviceFlag',
      type: IsarType.long,
    ),
    r'follow': PropertySchema(
      id: 9,
      name: r'follow',
      type: IsarType.long,
    ),
    r'forbidden': PropertySchema(
      id: 10,
      name: r'forbidden',
      type: IsarType.long,
    ),
    r'invite': PropertySchema(
      id: 11,
      name: r'invite',
      type: IsarType.long,
    ),
    r'isDeleted': PropertySchema(
      id: 12,
      name: r'isDeleted',
      type: IsarType.long,
    ),
    r'lastOffline': PropertySchema(
      id: 13,
      name: r'lastOffline',
      type: IsarType.long,
    ),
    r'localExtra': PropertySchema(
      id: 14,
      name: r'localExtra',
      type: IsarType.string,
    ),
    r'mute': PropertySchema(
      id: 15,
      name: r'mute',
      type: IsarType.long,
    ),
    r'online': PropertySchema(
      id: 16,
      name: r'online',
      type: IsarType.long,
    ),
    r'parentChannelID': PropertySchema(
      id: 17,
      name: r'parentChannelID',
      type: IsarType.string,
    ),
    r'parentChannelType': PropertySchema(
      id: 18,
      name: r'parentChannelType',
      type: IsarType.long,
    ),
    r'receipt': PropertySchema(
      id: 19,
      name: r'receipt',
      type: IsarType.long,
    ),
    r'remoteExtraMap': PropertySchema(
      id: 20,
      name: r'remoteExtraMap',
      type: IsarType.string,
    ),
    r'robot': PropertySchema(
      id: 21,
      name: r'robot',
      type: IsarType.long,
    ),
    r'save': PropertySchema(
      id: 22,
      name: r'save',
      type: IsarType.long,
    ),
    r'showNick': PropertySchema(
      id: 23,
      name: r'showNick',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 24,
      name: r'status',
      type: IsarType.long,
    ),
    r'top': PropertySchema(
      id: 25,
      name: r'top',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 26,
      name: r'updatedAt',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 27,
      name: r'username',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 28,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _wKChannelEstimateSize,
  serialize: _wKChannelSerialize,
  deserialize: _wKChannelDeserialize,
  deserializeProp: _wKChannelDeserializeProp,
  idName: r'id',
  indexes: {
    r'channelId_channelType': IndexSchema(
      id: 9006229877964570691,
      name: r'channelId_channelType',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'channelId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'channelType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'channelType': IndexSchema(
      id: -4309454401379329782,
      name: r'channelType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'channelType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'channelName': IndexSchema(
      id: 1722217242319557722,
      name: r'channelName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'channelName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'channelRemark': IndexSchema(
      id: -2122262807425705466,
      name: r'channelRemark',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'channelRemark',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'showNick': IndexSchema(
      id: 5465402352536461240,
      name: r'showNick',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'showNick',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'top': IndexSchema(
      id: 8651838581517557807,
      name: r'top',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'top',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'save': IndexSchema(
      id: 3571977518549062150,
      name: r'save',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'save',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'mute': IndexSchema(
      id: 980053453057014911,
      name: r'mute',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'mute',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'forbidden': IndexSchema(
      id: -2811254556996586255,
      name: r'forbidden',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'forbidden',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'invite': IndexSchema(
      id: 4480223869223287023,
      name: r'invite',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'invite',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'status': IndexSchema(
      id: -107785170620420283,
      name: r'status',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'status',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'follow': IndexSchema(
      id: -6022719189966030500,
      name: r'follow',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'follow',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'isDeleted': IndexSchema(
      id: -786475870904832312,
      name: r'isDeleted',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isDeleted',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'createdAt': IndexSchema(
      id: -3433535483987302584,
      name: r'createdAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'createdAt',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'avatar': IndexSchema(
      id: -309829539244830577,
      name: r'avatar',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'avatar',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'version': IndexSchema(
      id: -3425991338577364869,
      name: r'version',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'version',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'localExtra': IndexSchema(
      id: 7380047823296854056,
      name: r'localExtra',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'localExtra',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'online': IndexSchema(
      id: -782381139344389594,
      name: r'online',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'online',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'lastOffline': IndexSchema(
      id: 3179412751927255917,
      name: r'lastOffline',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastOffline',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'deviceFlag': IndexSchema(
      id: -3302588140408474338,
      name: r'deviceFlag',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'deviceFlag',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'receipt': IndexSchema(
      id: -4406484422801050229,
      name: r'receipt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'receipt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'robot': IndexSchema(
      id: -3895360214519187776,
      name: r'robot',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'robot',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'category': IndexSchema(
      id: -7560358558326323820,
      name: r'category',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'category',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'username': IndexSchema(
      id: -2899563114555695793,
      name: r'username',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'username',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'avatarCacheKey': IndexSchema(
      id: 8487391017871904254,
      name: r'avatarCacheKey',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'avatarCacheKey',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'remoteExtraMap': IndexSchema(
      id: -6327154808839191699,
      name: r'remoteExtraMap',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'remoteExtraMap',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'parentChannelID': IndexSchema(
      id: 546484191802904773,
      name: r'parentChannelID',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'parentChannelID',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'parentChannelType': IndexSchema(
      id: 2321453519218237388,
      name: r'parentChannelType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'parentChannelType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'messages': LinkSchema(
      id: 4555001299379030963,
      name: r'messages',
      target: r'message',
      single: false,
      linkName: r'channel',
    ),
    r'conversations': LinkSchema(
      id: -4037827097534579358,
      name: r'conversations',
      target: r'conversation',
      single: false,
      linkName: r'channel',
    )
  },
  embeddedSchemas: {},
  getId: _wKChannelGetId,
  getLinks: _wKChannelGetLinks,
  attach: _wKChannelAttach,
  version: '3.1.0+1',
);

int _wKChannelEstimateSize(
  WKChannel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatar.length * 3;
  bytesCount += 3 + object.avatarCacheKey.length * 3;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.channelId.length * 3;
  bytesCount += 3 + object.channelName.length * 3;
  bytesCount += 3 + object.channelRemark.length * 3;
  bytesCount += 3 + object.createdAt.length * 3;
  bytesCount += 3 + object.localExtra.length * 3;
  bytesCount += 3 + object.parentChannelID.length * 3;
  bytesCount += 3 + object.remoteExtraMap.length * 3;
  bytesCount += 3 + object.updatedAt.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _wKChannelSerialize(
  WKChannel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatar);
  writer.writeString(offsets[1], object.avatarCacheKey);
  writer.writeString(offsets[2], object.category);
  writer.writeString(offsets[3], object.channelId);
  writer.writeString(offsets[4], object.channelName);
  writer.writeString(offsets[5], object.channelRemark);
  writer.writeLong(offsets[6], object.channelType);
  writer.writeString(offsets[7], object.createdAt);
  writer.writeLong(offsets[8], object.deviceFlag);
  writer.writeLong(offsets[9], object.follow);
  writer.writeLong(offsets[10], object.forbidden);
  writer.writeLong(offsets[11], object.invite);
  writer.writeLong(offsets[12], object.isDeleted);
  writer.writeLong(offsets[13], object.lastOffline);
  writer.writeString(offsets[14], object.localExtra);
  writer.writeLong(offsets[15], object.mute);
  writer.writeLong(offsets[16], object.online);
  writer.writeString(offsets[17], object.parentChannelID);
  writer.writeLong(offsets[18], object.parentChannelType);
  writer.writeLong(offsets[19], object.receipt);
  writer.writeString(offsets[20], object.remoteExtraMap);
  writer.writeLong(offsets[21], object.robot);
  writer.writeLong(offsets[22], object.save);
  writer.writeLong(offsets[23], object.showNick);
  writer.writeLong(offsets[24], object.status);
  writer.writeLong(offsets[25], object.top);
  writer.writeString(offsets[26], object.updatedAt);
  writer.writeString(offsets[27], object.username);
  writer.writeLong(offsets[28], object.version);
}

WKChannel _wKChannelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WKChannel(
    reader.readString(offsets[3]),
    reader.readLong(offsets[6]),
  );
  object.avatar = reader.readString(offsets[0]);
  object.avatarCacheKey = reader.readString(offsets[1]);
  object.category = reader.readString(offsets[2]);
  object.channelName = reader.readString(offsets[4]);
  object.channelRemark = reader.readString(offsets[5]);
  object.createdAt = reader.readString(offsets[7]);
  object.deviceFlag = reader.readLong(offsets[8]);
  object.follow = reader.readLong(offsets[9]);
  object.forbidden = reader.readLong(offsets[10]);
  object.id = id;
  object.invite = reader.readLong(offsets[11]);
  object.isDeleted = reader.readLong(offsets[12]);
  object.lastOffline = reader.readLong(offsets[13]);
  object.localExtra = reader.readString(offsets[14]);
  object.mute = reader.readLong(offsets[15]);
  object.online = reader.readLong(offsets[16]);
  object.parentChannelID = reader.readString(offsets[17]);
  object.parentChannelType = reader.readLong(offsets[18]);
  object.receipt = reader.readLong(offsets[19]);
  object.remoteExtraMap = reader.readString(offsets[20]);
  object.robot = reader.readLong(offsets[21]);
  object.save = reader.readLong(offsets[22]);
  object.showNick = reader.readLong(offsets[23]);
  object.status = reader.readLong(offsets[24]);
  object.top = reader.readLong(offsets[25]);
  object.updatedAt = reader.readString(offsets[26]);
  object.username = reader.readString(offsets[27]);
  object.version = reader.readLong(offsets[28]);
  return object;
}

P _wKChannelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readLong(offset)) as P;
    case 23:
      return (reader.readLong(offset)) as P;
    case 24:
      return (reader.readLong(offset)) as P;
    case 25:
      return (reader.readLong(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wKChannelGetId(WKChannel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _wKChannelGetLinks(WKChannel object) {
  return [object.messages, object.conversations];
}

void _wKChannelAttach(IsarCollection<dynamic> col, Id id, WKChannel object) {
  object.id = id;
  object.messages
      .attach(col, col.isar.collection<WKMessage>(), r'messages', id);
  object.conversations
      .attach(col, col.isar.collection<WKConversation>(), r'conversations', id);
}

extension WKChannelByIndex on IsarCollection<WKChannel> {
  Future<WKChannel?> getByChannelIdChannelType(
      String channelId, int channelType) {
    return getByIndex(r'channelId_channelType', [channelId, channelType]);
  }

  WKChannel? getByChannelIdChannelTypeSync(String channelId, int channelType) {
    return getByIndexSync(r'channelId_channelType', [channelId, channelType]);
  }

  Future<bool> deleteByChannelIdChannelType(String channelId, int channelType) {
    return deleteByIndex(r'channelId_channelType', [channelId, channelType]);
  }

  bool deleteByChannelIdChannelTypeSync(String channelId, int channelType) {
    return deleteByIndexSync(
        r'channelId_channelType', [channelId, channelType]);
  }

  Future<List<WKChannel?>> getAllByChannelIdChannelType(
      List<String> channelIdValues, List<int> channelTypeValues) {
    final len = channelIdValues.length;
    assert(channelTypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([channelIdValues[i], channelTypeValues[i]]);
    }

    return getAllByIndex(r'channelId_channelType', values);
  }

  List<WKChannel?> getAllByChannelIdChannelTypeSync(
      List<String> channelIdValues, List<int> channelTypeValues) {
    final len = channelIdValues.length;
    assert(channelTypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([channelIdValues[i], channelTypeValues[i]]);
    }

    return getAllByIndexSync(r'channelId_channelType', values);
  }

  Future<int> deleteAllByChannelIdChannelType(
      List<String> channelIdValues, List<int> channelTypeValues) {
    final len = channelIdValues.length;
    assert(channelTypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([channelIdValues[i], channelTypeValues[i]]);
    }

    return deleteAllByIndex(r'channelId_channelType', values);
  }

  int deleteAllByChannelIdChannelTypeSync(
      List<String> channelIdValues, List<int> channelTypeValues) {
    final len = channelIdValues.length;
    assert(channelTypeValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([channelIdValues[i], channelTypeValues[i]]);
    }

    return deleteAllByIndexSync(r'channelId_channelType', values);
  }

  Future<Id> putByChannelIdChannelType(WKChannel object) {
    return putByIndex(r'channelId_channelType', object);
  }

  Id putByChannelIdChannelTypeSync(WKChannel object, {bool saveLinks = true}) {
    return putByIndexSync(r'channelId_channelType', object,
        saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByChannelIdChannelType(List<WKChannel> objects) {
    return putAllByIndex(r'channelId_channelType', objects);
  }

  List<Id> putAllByChannelIdChannelTypeSync(List<WKChannel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'channelId_channelType', objects,
        saveLinks: saveLinks);
  }
}

extension WKChannelQueryWhereSort
    on QueryBuilder<WKChannel, WKChannel, QWhere> {
  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'channelType'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyShowNick() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'showNick'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyTop() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'top'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anySave() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'save'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyMute() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'mute'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyForbidden() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'forbidden'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyInvite() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'invite'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'status'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyFollow() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'follow'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDeleted'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'version'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'online'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyLastOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastOffline'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyDeviceFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'deviceFlag'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyReceipt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'receipt'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'robot'),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhere> anyParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'parentChannelType'),
      );
    });
  }
}

extension WKChannelQueryWhere
    on QueryBuilder<WKChannel, WKChannel, QWhereClause> {
  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdEqualToAnyChannelType(String channelId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId_channelType',
        value: [channelId],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdNotEqualToAnyChannelType(String channelId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [],
              upper: [channelId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [],
              upper: [channelId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdChannelTypeEqualTo(String channelId, int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId_channelType',
        value: [channelId, channelType],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdEqualToChannelTypeNotEqualTo(String channelId, int channelType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId],
              upper: [channelId, channelType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId, channelType],
              includeLower: false,
              upper: [channelId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId, channelType],
              includeLower: false,
              upper: [channelId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId_channelType',
              lower: [channelId],
              upper: [channelId, channelType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdEqualToChannelTypeGreaterThan(
    String channelId,
    int channelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelId_channelType',
        lower: [channelId, channelType],
        includeLower: include,
        upper: [channelId],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdEqualToChannelTypeLessThan(
    String channelId,
    int channelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelId_channelType',
        lower: [channelId],
        upper: [channelId, channelType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      channelIdEqualToChannelTypeBetween(
    String channelId,
    int lowerChannelType,
    int upperChannelType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelId_channelType',
        lower: [channelId, lowerChannelType],
        includeLower: includeLower,
        upper: [channelId, upperChannelType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelTypeEqualTo(
      int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelType',
        value: [channelType],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelTypeNotEqualTo(
      int channelType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelType',
              lower: [],
              upper: [channelType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelType',
              lower: [channelType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelType',
              lower: [channelType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelType',
              lower: [],
              upper: [channelType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelTypeGreaterThan(
    int channelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelType',
        lower: [channelType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelTypeLessThan(
    int channelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelType',
        lower: [],
        upper: [channelType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelTypeBetween(
    int lowerChannelType,
    int upperChannelType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'channelType',
        lower: [lowerChannelType],
        includeLower: includeLower,
        upper: [upperChannelType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelNameEqualTo(
      String channelName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelName',
        value: [channelName],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelNameNotEqualTo(
      String channelName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelName',
              lower: [],
              upper: [channelName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelName',
              lower: [channelName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelName',
              lower: [channelName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelName',
              lower: [],
              upper: [channelName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelRemarkEqualTo(
      String channelRemark) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelRemark',
        value: [channelRemark],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> channelRemarkNotEqualTo(
      String channelRemark) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelRemark',
              lower: [],
              upper: [channelRemark],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelRemark',
              lower: [channelRemark],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelRemark',
              lower: [channelRemark],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelRemark',
              lower: [],
              upper: [channelRemark],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> showNickEqualTo(
      int showNick) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'showNick',
        value: [showNick],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> showNickNotEqualTo(
      int showNick) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'showNick',
              lower: [],
              upper: [showNick],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'showNick',
              lower: [showNick],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'showNick',
              lower: [showNick],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'showNick',
              lower: [],
              upper: [showNick],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> showNickGreaterThan(
    int showNick, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'showNick',
        lower: [showNick],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> showNickLessThan(
    int showNick, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'showNick',
        lower: [],
        upper: [showNick],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> showNickBetween(
    int lowerShowNick,
    int upperShowNick, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'showNick',
        lower: [lowerShowNick],
        includeLower: includeLower,
        upper: [upperShowNick],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> topEqualTo(int top) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'top',
        value: [top],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> topNotEqualTo(int top) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'top',
              lower: [],
              upper: [top],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'top',
              lower: [top],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'top',
              lower: [top],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'top',
              lower: [],
              upper: [top],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> topGreaterThan(
    int top, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'top',
        lower: [top],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> topLessThan(
    int top, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'top',
        lower: [],
        upper: [top],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> topBetween(
    int lowerTop,
    int upperTop, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'top',
        lower: [lowerTop],
        includeLower: includeLower,
        upper: [upperTop],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> saveEqualTo(int save) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'save',
        value: [save],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> saveNotEqualTo(
      int save) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'save',
              lower: [],
              upper: [save],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'save',
              lower: [save],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'save',
              lower: [save],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'save',
              lower: [],
              upper: [save],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> saveGreaterThan(
    int save, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'save',
        lower: [save],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> saveLessThan(
    int save, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'save',
        lower: [],
        upper: [save],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> saveBetween(
    int lowerSave,
    int upperSave, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'save',
        lower: [lowerSave],
        includeLower: includeLower,
        upper: [upperSave],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> muteEqualTo(int mute) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mute',
        value: [mute],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> muteNotEqualTo(
      int mute) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mute',
              lower: [],
              upper: [mute],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mute',
              lower: [mute],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mute',
              lower: [mute],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mute',
              lower: [],
              upper: [mute],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> muteGreaterThan(
    int mute, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mute',
        lower: [mute],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> muteLessThan(
    int mute, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mute',
        lower: [],
        upper: [mute],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> muteBetween(
    int lowerMute,
    int upperMute, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mute',
        lower: [lowerMute],
        includeLower: includeLower,
        upper: [upperMute],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> forbiddenEqualTo(
      int forbidden) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'forbidden',
        value: [forbidden],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> forbiddenNotEqualTo(
      int forbidden) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbidden',
              lower: [],
              upper: [forbidden],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbidden',
              lower: [forbidden],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbidden',
              lower: [forbidden],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbidden',
              lower: [],
              upper: [forbidden],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> forbiddenGreaterThan(
    int forbidden, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbidden',
        lower: [forbidden],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> forbiddenLessThan(
    int forbidden, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbidden',
        lower: [],
        upper: [forbidden],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> forbiddenBetween(
    int lowerForbidden,
    int upperForbidden, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbidden',
        lower: [lowerForbidden],
        includeLower: includeLower,
        upper: [upperForbidden],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> inviteEqualTo(
      int invite) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'invite',
        value: [invite],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> inviteNotEqualTo(
      int invite) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invite',
              lower: [],
              upper: [invite],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invite',
              lower: [invite],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invite',
              lower: [invite],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invite',
              lower: [],
              upper: [invite],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> inviteGreaterThan(
    int invite, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invite',
        lower: [invite],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> inviteLessThan(
    int invite, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invite',
        lower: [],
        upper: [invite],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> inviteBetween(
    int lowerInvite,
    int upperInvite, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invite',
        lower: [lowerInvite],
        includeLower: includeLower,
        upper: [upperInvite],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> statusEqualTo(
      int status) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'status',
        value: [status],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> statusNotEqualTo(
      int status) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [],
              upper: [status],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [status],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [status],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [],
              upper: [status],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> statusGreaterThan(
    int status, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'status',
        lower: [status],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> statusLessThan(
    int status, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'status',
        lower: [],
        upper: [status],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> statusBetween(
    int lowerStatus,
    int upperStatus, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'status',
        lower: [lowerStatus],
        includeLower: includeLower,
        upper: [upperStatus],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> followEqualTo(
      int follow) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'follow',
        value: [follow],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> followNotEqualTo(
      int follow) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'follow',
              lower: [],
              upper: [follow],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'follow',
              lower: [follow],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'follow',
              lower: [follow],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'follow',
              lower: [],
              upper: [follow],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> followGreaterThan(
    int follow, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'follow',
        lower: [follow],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> followLessThan(
    int follow, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'follow',
        lower: [],
        upper: [follow],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> followBetween(
    int lowerFollow,
    int upperFollow, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'follow',
        lower: [lowerFollow],
        includeLower: includeLower,
        upper: [upperFollow],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> isDeletedEqualTo(
      int isDeleted) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDeleted',
        value: [isDeleted],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> isDeletedNotEqualTo(
      int isDeleted) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDeleted',
              lower: [],
              upper: [isDeleted],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDeleted',
              lower: [isDeleted],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDeleted',
              lower: [isDeleted],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isDeleted',
              lower: [],
              upper: [isDeleted],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> isDeletedGreaterThan(
    int isDeleted, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDeleted',
        lower: [isDeleted],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> isDeletedLessThan(
    int isDeleted, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDeleted',
        lower: [],
        upper: [isDeleted],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> isDeletedBetween(
    int lowerIsDeleted,
    int upperIsDeleted, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'isDeleted',
        lower: [lowerIsDeleted],
        includeLower: includeLower,
        upper: [upperIsDeleted],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> createdAtEqualTo(
      String createdAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'createdAt',
        value: [createdAt],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> createdAtNotEqualTo(
      String createdAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [],
              upper: [createdAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [createdAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [createdAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [],
              upper: [createdAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> avatarEqualTo(
      String avatar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'avatar',
        value: [avatar],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> avatarNotEqualTo(
      String avatar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatar',
              lower: [],
              upper: [avatar],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatar',
              lower: [avatar],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatar',
              lower: [avatar],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatar',
              lower: [],
              upper: [avatar],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> versionEqualTo(
      int version) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'version',
        value: [version],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> versionNotEqualTo(
      int version) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'version',
              lower: [],
              upper: [version],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'version',
              lower: [version],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'version',
              lower: [version],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'version',
              lower: [],
              upper: [version],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> versionGreaterThan(
    int version, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'version',
        lower: [version],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> versionLessThan(
    int version, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'version',
        lower: [],
        upper: [version],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> versionBetween(
    int lowerVersion,
    int upperVersion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'version',
        lower: [lowerVersion],
        includeLower: includeLower,
        upper: [upperVersion],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> localExtraEqualTo(
      String localExtra) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'localExtra',
        value: [localExtra],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> localExtraNotEqualTo(
      String localExtra) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localExtra',
              lower: [],
              upper: [localExtra],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localExtra',
              lower: [localExtra],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localExtra',
              lower: [localExtra],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'localExtra',
              lower: [],
              upper: [localExtra],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> onlineEqualTo(
      int online) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'online',
        value: [online],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> onlineNotEqualTo(
      int online) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'online',
              lower: [],
              upper: [online],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'online',
              lower: [online],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'online',
              lower: [online],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'online',
              lower: [],
              upper: [online],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> onlineGreaterThan(
    int online, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'online',
        lower: [online],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> onlineLessThan(
    int online, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'online',
        lower: [],
        upper: [online],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> onlineBetween(
    int lowerOnline,
    int upperOnline, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'online',
        lower: [lowerOnline],
        includeLower: includeLower,
        upper: [upperOnline],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> lastOfflineEqualTo(
      int lastOffline) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastOffline',
        value: [lastOffline],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> lastOfflineNotEqualTo(
      int lastOffline) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastOffline',
              lower: [],
              upper: [lastOffline],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastOffline',
              lower: [lastOffline],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastOffline',
              lower: [lastOffline],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastOffline',
              lower: [],
              upper: [lastOffline],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> lastOfflineGreaterThan(
    int lastOffline, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastOffline',
        lower: [lastOffline],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> lastOfflineLessThan(
    int lastOffline, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastOffline',
        lower: [],
        upper: [lastOffline],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> lastOfflineBetween(
    int lowerLastOffline,
    int upperLastOffline, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastOffline',
        lower: [lowerLastOffline],
        includeLower: includeLower,
        upper: [upperLastOffline],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> deviceFlagEqualTo(
      int deviceFlag) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'deviceFlag',
        value: [deviceFlag],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> deviceFlagNotEqualTo(
      int deviceFlag) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deviceFlag',
              lower: [],
              upper: [deviceFlag],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deviceFlag',
              lower: [deviceFlag],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deviceFlag',
              lower: [deviceFlag],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'deviceFlag',
              lower: [],
              upper: [deviceFlag],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> deviceFlagGreaterThan(
    int deviceFlag, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deviceFlag',
        lower: [deviceFlag],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> deviceFlagLessThan(
    int deviceFlag, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deviceFlag',
        lower: [],
        upper: [deviceFlag],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> deviceFlagBetween(
    int lowerDeviceFlag,
    int upperDeviceFlag, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'deviceFlag',
        lower: [lowerDeviceFlag],
        includeLower: includeLower,
        upper: [upperDeviceFlag],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> receiptEqualTo(
      int receipt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'receipt',
        value: [receipt],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> receiptNotEqualTo(
      int receipt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'receipt',
              lower: [],
              upper: [receipt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'receipt',
              lower: [receipt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'receipt',
              lower: [receipt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'receipt',
              lower: [],
              upper: [receipt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> receiptGreaterThan(
    int receipt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'receipt',
        lower: [receipt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> receiptLessThan(
    int receipt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'receipt',
        lower: [],
        upper: [receipt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> receiptBetween(
    int lowerReceipt,
    int upperReceipt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'receipt',
        lower: [lowerReceipt],
        includeLower: includeLower,
        upper: [upperReceipt],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> robotEqualTo(
      int robot) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'robot',
        value: [robot],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> robotNotEqualTo(
      int robot) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'robot',
              lower: [],
              upper: [robot],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'robot',
              lower: [robot],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'robot',
              lower: [robot],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'robot',
              lower: [],
              upper: [robot],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> robotGreaterThan(
    int robot, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'robot',
        lower: [robot],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> robotLessThan(
    int robot, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'robot',
        lower: [],
        upper: [robot],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> robotBetween(
    int lowerRobot,
    int upperRobot, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'robot',
        lower: [lowerRobot],
        includeLower: includeLower,
        upper: [upperRobot],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> categoryEqualTo(
      String category) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'category',
        value: [category],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> categoryNotEqualTo(
      String category) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'category',
              lower: [],
              upper: [category],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'category',
              lower: [category],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'category',
              lower: [category],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'category',
              lower: [],
              upper: [category],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> usernameEqualTo(
      String username) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'username',
        value: [username],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> usernameNotEqualTo(
      String username) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [],
              upper: [username],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [username],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [username],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [],
              upper: [username],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> avatarCacheKeyEqualTo(
      String avatarCacheKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'avatarCacheKey',
        value: [avatarCacheKey],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      avatarCacheKeyNotEqualTo(String avatarCacheKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatarCacheKey',
              lower: [],
              upper: [avatarCacheKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatarCacheKey',
              lower: [avatarCacheKey],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatarCacheKey',
              lower: [avatarCacheKey],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'avatarCacheKey',
              lower: [],
              upper: [avatarCacheKey],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> remoteExtraMapEqualTo(
      String remoteExtraMap) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'remoteExtraMap',
        value: [remoteExtraMap],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      remoteExtraMapNotEqualTo(String remoteExtraMap) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remoteExtraMap',
              lower: [],
              upper: [remoteExtraMap],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remoteExtraMap',
              lower: [remoteExtraMap],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remoteExtraMap',
              lower: [remoteExtraMap],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remoteExtraMap',
              lower: [],
              upper: [remoteExtraMap],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause> parentChannelIDEqualTo(
      String parentChannelID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'parentChannelID',
        value: [parentChannelID],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelIDNotEqualTo(String parentChannelID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelID',
              lower: [],
              upper: [parentChannelID],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelID',
              lower: [parentChannelID],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelID',
              lower: [parentChannelID],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelID',
              lower: [],
              upper: [parentChannelID],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelTypeEqualTo(int parentChannelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'parentChannelType',
        value: [parentChannelType],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelTypeNotEqualTo(int parentChannelType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelType',
              lower: [],
              upper: [parentChannelType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelType',
              lower: [parentChannelType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelType',
              lower: [parentChannelType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'parentChannelType',
              lower: [],
              upper: [parentChannelType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelTypeGreaterThan(
    int parentChannelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'parentChannelType',
        lower: [parentChannelType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelTypeLessThan(
    int parentChannelType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'parentChannelType',
        lower: [],
        upper: [parentChannelType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterWhereClause>
      parentChannelTypeBetween(
    int lowerParentChannelType,
    int upperParentChannelType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'parentChannelType',
        lower: [lowerParentChannelType],
        includeLower: includeLower,
        upper: [upperParentChannelType],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WKChannelQueryFilter
    on QueryBuilder<WKChannel, WKChannel, QFilterCondition> {
  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatar',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> avatarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatar',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarCacheKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarCacheKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarCacheKey',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      avatarCacheKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarCacheKey',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelName',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelName',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelRemark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelRemark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelRemark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelRemarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelRemark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelTypeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      channelTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> channelTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'channelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      createdAtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> createdAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      createdAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> deviceFlagEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      deviceFlagGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deviceFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> deviceFlagLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deviceFlag',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> deviceFlagBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deviceFlag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> followEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'follow',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> followGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'follow',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> followLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'follow',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> followBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'follow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> forbiddenEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'forbidden',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      forbiddenGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'forbidden',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> forbiddenLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'forbidden',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> forbiddenBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'forbidden',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> inviteEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invite',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> inviteGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invite',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> inviteLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invite',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> inviteBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> isDeletedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      isDeletedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> isDeletedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> isDeletedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isDeleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> lastOfflineEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastOffline',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      lastOfflineGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastOffline',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> lastOfflineLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastOffline',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> lastOfflineBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastOffline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      localExtraGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localExtra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      localExtraStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localExtra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> localExtraMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localExtra',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      localExtraIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localExtra',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      localExtraIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localExtra',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> muteEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mute',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> muteGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mute',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> muteLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mute',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> muteBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> onlineEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'online',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> onlineGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'online',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> onlineLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'online',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> onlineBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'online',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentChannelID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parentChannelID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentChannelID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parentChannelID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentChannelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentChannelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentChannelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      parentChannelTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentChannelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> receiptEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'receipt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> receiptGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'receipt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> receiptLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'receipt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> receiptBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'receipt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remoteExtraMap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remoteExtraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remoteExtraMap',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteExtraMap',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      remoteExtraMapIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remoteExtraMap',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> robotEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'robot',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> robotGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'robot',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> robotLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'robot',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> robotBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'robot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> saveEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'save',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> saveGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'save',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> saveLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'save',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> saveBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'save',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> showNickEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showNick',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> showNickGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'showNick',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> showNickLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'showNick',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> showNickBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'showNick',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> statusEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> statusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> statusLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> statusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> topEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'top',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> topGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'top',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> topLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'top',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> topBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'top',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      updatedAtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> updatedAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      updatedAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> versionEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WKChannelQueryObject
    on QueryBuilder<WKChannel, WKChannel, QFilterCondition> {}

extension WKChannelQueryLinks
    on QueryBuilder<WKChannel, WKChannel, QFilterCondition> {
  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> messages(
      FilterQuery<WKMessage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'messages');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      messagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, true, length, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> messagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, 0, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      messagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, false, 999999, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      messagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, length, include);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      messagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, include, 999999, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      messagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'messages', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition> conversations(
      FilterQuery<WKConversation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'conversations');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversations', length, true, length, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversations', 0, true, 0, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversations', 0, false, 999999, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversations', 0, true, length, include);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversations', length, include, 999999, true);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterFilterCondition>
      conversationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'conversations', lower, includeLower, upper, includeUpper);
    });
  }
}

extension WKChannelQuerySortBy on QueryBuilder<WKChannel, WKChannel, QSortBy> {
  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByAvatarCacheKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarCacheKey', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByAvatarCacheKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarCacheKey', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelName', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelName', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelRemark', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelRemark', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByDeviceFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceFlag', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByDeviceFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceFlag', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByFollow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'follow', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByFollowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'follow', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByForbidden() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbidden', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByForbiddenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbidden', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByInvite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invite', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByInviteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invite', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByLastOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOffline', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByLastOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOffline', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByLocalExtra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localExtra', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByLocalExtraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localExtra', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByMute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mute', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByMuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mute', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByParentChannelID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByParentChannelIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy>
      sortByParentChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByReceipt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receipt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByReceiptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receipt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByRemoteExtraMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteExtraMap', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByRemoteExtraMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteExtraMap', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByRobotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortBySave() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'save', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortBySaveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'save', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByShowNick() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showNick', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByShowNickDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showNick', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByTop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'top', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByTopDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'top', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKChannelQuerySortThenBy
    on QueryBuilder<WKChannel, WKChannel, QSortThenBy> {
  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatar', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByAvatarCacheKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarCacheKey', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByAvatarCacheKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarCacheKey', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelName', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelName', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelRemark', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelRemark', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByDeviceFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceFlag', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByDeviceFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceFlag', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByFollow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'follow', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByFollowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'follow', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByForbidden() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbidden', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByForbiddenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbidden', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByInvite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invite', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByInviteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invite', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByLastOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOffline', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByLastOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOffline', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByLocalExtra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localExtra', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByLocalExtraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localExtra', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByMute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mute', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByMuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mute', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByParentChannelID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByParentChannelIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy>
      thenByParentChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByReceipt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receipt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByReceiptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receipt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByRemoteExtraMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteExtraMap', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByRemoteExtraMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteExtraMap', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByRobotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenBySave() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'save', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenBySaveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'save', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByShowNick() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showNick', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByShowNickDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showNick', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByTop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'top', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByTopDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'top', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QAfterSortBy> thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKChannelQueryWhereDistinct
    on QueryBuilder<WKChannel, WKChannel, QDistinct> {
  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByAvatar(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatar', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByAvatarCacheKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarCacheKey',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByChannelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByChannelName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByChannelRemark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelRemark',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelType');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByDeviceFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceFlag');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByFollow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'follow');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByForbidden() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forbidden');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByInvite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invite');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByLastOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastOffline');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByLocalExtra(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localExtra', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByMute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mute');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'online');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByParentChannelID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentChannelID',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentChannelType');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByReceipt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'receipt');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByRemoteExtraMap(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remoteExtraMap',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'robot');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctBySave() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'save');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByShowNick() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showNick');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByTop() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'top');
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByUpdatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannel, WKChannel, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension WKChannelQueryProperty
    on QueryBuilder<WKChannel, WKChannel, QQueryProperty> {
  QueryBuilder<WKChannel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> avatarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatar');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> avatarCacheKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarCacheKey');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> channelNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelName');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> channelRemarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelRemark');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> channelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelType');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> deviceFlagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceFlag');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> followProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'follow');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> forbiddenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forbidden');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> inviteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invite');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> lastOfflineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastOffline');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> localExtraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localExtra');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> muteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mute');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> onlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'online');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> parentChannelIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentChannelID');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> parentChannelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentChannelType');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> receiptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'receipt');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> remoteExtraMapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remoteExtraMap');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> robotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'robot');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> saveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'save');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> showNickProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showNick');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> topProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'top');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<WKChannel, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }

  QueryBuilder<WKChannel, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
