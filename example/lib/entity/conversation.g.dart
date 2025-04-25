// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWKConversationCollection on Isar {
  IsarCollection<WKConversation> get wKConversations => this.collection();
}

const WKConversationSchema = CollectionSchema(
  name: r'conversation',
  id: 407682453440200747,
  properties: {
    r'channelId': PropertySchema(
      id: 0,
      name: r'channelId',
      type: IsarType.string,
    ),
    r'channelType': PropertySchema(
      id: 1,
      name: r'channelType',
      type: IsarType.long,
    ),
    r'lastClientMsgNo': PropertySchema(
      id: 2,
      name: r'lastClientMsgNo',
      type: IsarType.string,
    ),
    r'lastMsgSeq': PropertySchema(
      id: 3,
      name: r'lastMsgSeq',
      type: IsarType.long,
    ),
    r'lastMsgTimestamp': PropertySchema(
      id: 4,
      name: r'lastMsgTimestamp',
      type: IsarType.long,
    ),
    r'offsetMsgSeq': PropertySchema(
      id: 5,
      name: r'offsetMsgSeq',
      type: IsarType.long,
    ),
    r'parentChannelID': PropertySchema(
      id: 6,
      name: r'parentChannelID',
      type: IsarType.string,
    ),
    r'parentChannelType': PropertySchema(
      id: 7,
      name: r'parentChannelType',
      type: IsarType.long,
    ),
    r'unreadCount': PropertySchema(
      id: 8,
      name: r'unreadCount',
      type: IsarType.long,
    ),
    r'version': PropertySchema(
      id: 9,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _wKConversationEstimateSize,
  serialize: _wKConversationSerialize,
  deserialize: _wKConversationDeserialize,
  deserializeProp: _wKConversationDeserializeProp,
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
    r'lastMsgTimestamp': IndexSchema(
      id: -6094358390143291475,
      name: r'lastMsgTimestamp',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastMsgTimestamp',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'lastMsgSeq': IndexSchema(
      id: 1227900708246993167,
      name: r'lastMsgSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastMsgSeq',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'lastClientMsgNo': IndexSchema(
      id: -8272817060673063195,
      name: r'lastClientMsgNo',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastClientMsgNo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'offsetMsgSeq': IndexSchema(
      id: 3084034609428050954,
      name: r'offsetMsgSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'offsetMsgSeq',
          type: IndexType.value,
          caseSensitive: false,
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
    r'unreadCount': IndexSchema(
      id: 1929747360533418796,
      name: r'unreadCount',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'unreadCount',
          type: IndexType.value,
          caseSensitive: false,
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
    r'channel': LinkSchema(
      id: -6773055309078653135,
      name: r'channel',
      target: r'channel',
      single: true,
    ),
    r'messages': LinkSchema(
      id: 7544469550978047506,
      name: r'messages',
      target: r'message',
      single: false,
      linkName: r'conversation',
    )
  },
  embeddedSchemas: {},
  getId: _wKConversationGetId,
  getLinks: _wKConversationGetLinks,
  attach: _wKConversationAttach,
  version: '3.1.0+1',
);

int _wKConversationEstimateSize(
  WKConversation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.channelId.length * 3;
  bytesCount += 3 + object.lastClientMsgNo.length * 3;
  bytesCount += 3 + object.parentChannelID.length * 3;
  return bytesCount;
}

void _wKConversationSerialize(
  WKConversation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.channelId);
  writer.writeLong(offsets[1], object.channelType);
  writer.writeString(offsets[2], object.lastClientMsgNo);
  writer.writeLong(offsets[3], object.lastMsgSeq);
  writer.writeLong(offsets[4], object.lastMsgTimestamp);
  writer.writeLong(offsets[5], object.offsetMsgSeq);
  writer.writeString(offsets[6], object.parentChannelID);
  writer.writeLong(offsets[7], object.parentChannelType);
  writer.writeLong(offsets[8], object.unreadCount);
  writer.writeLong(offsets[9], object.version);
}

WKConversation _wKConversationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WKConversation(
    reader.readString(offsets[0]),
    reader.readLong(offsets[1]),
  );
  object.id = id;
  object.lastClientMsgNo = reader.readString(offsets[2]);
  object.lastMsgSeq = reader.readLong(offsets[3]);
  object.lastMsgTimestamp = reader.readLong(offsets[4]);
  object.offsetMsgSeq = reader.readLong(offsets[5]);
  object.parentChannelID = reader.readString(offsets[6]);
  object.parentChannelType = reader.readLong(offsets[7]);
  object.unreadCount = reader.readLong(offsets[8]);
  object.version = reader.readLong(offsets[9]);
  return object;
}

P _wKConversationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wKConversationGetId(WKConversation object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _wKConversationGetLinks(WKConversation object) {
  return [object.channel, object.messages];
}

void _wKConversationAttach(
    IsarCollection<dynamic> col, Id id, WKConversation object) {
  object.id = id;
  object.channel.attach(col, col.isar.collection<WKChannel>(), r'channel', id);
  object.messages
      .attach(col, col.isar.collection<WKMessage>(), r'messages', id);
}

extension WKConversationByIndex on IsarCollection<WKConversation> {
  Future<WKConversation?> getByChannelIdChannelType(
      String channelId, int channelType) {
    return getByIndex(r'channelId_channelType', [channelId, channelType]);
  }

  WKConversation? getByChannelIdChannelTypeSync(
      String channelId, int channelType) {
    return getByIndexSync(r'channelId_channelType', [channelId, channelType]);
  }

  Future<bool> deleteByChannelIdChannelType(String channelId, int channelType) {
    return deleteByIndex(r'channelId_channelType', [channelId, channelType]);
  }

  bool deleteByChannelIdChannelTypeSync(String channelId, int channelType) {
    return deleteByIndexSync(
        r'channelId_channelType', [channelId, channelType]);
  }

  Future<List<WKConversation?>> getAllByChannelIdChannelType(
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

  List<WKConversation?> getAllByChannelIdChannelTypeSync(
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

  Future<Id> putByChannelIdChannelType(WKConversation object) {
    return putByIndex(r'channelId_channelType', object);
  }

  Id putByChannelIdChannelTypeSync(WKConversation object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'channelId_channelType', object,
        saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByChannelIdChannelType(List<WKConversation> objects) {
    return putAllByIndex(r'channelId_channelType', objects);
  }

  List<Id> putAllByChannelIdChannelTypeSync(List<WKConversation> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'channelId_channelType', objects,
        saveLinks: saveLinks);
  }
}

extension WKConversationQueryWhereSort
    on QueryBuilder<WKConversation, WKConversation, QWhere> {
  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'channelType'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere>
      anyLastMsgTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastMsgTimestamp'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyLastMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastMsgSeq'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyOffsetMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'offsetMsgSeq'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'version'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere> anyUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'unreadCount'),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhere>
      anyParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'parentChannelType'),
      );
    });
  }
}

extension WKConversationQueryWhere
    on QueryBuilder<WKConversation, WKConversation, QWhereClause> {
  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause> idBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelIdEqualToAnyChannelType(String channelId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId_channelType',
        value: [channelId],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelIdChannelTypeEqualTo(String channelId, int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId_channelType',
        value: [channelId, channelType],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelTypeEqualTo(int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelType',
        value: [channelType],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelTypeNotEqualTo(int channelType) {
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelTypeGreaterThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelTypeLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      channelTypeBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgTimestampEqualTo(int lastMsgTimestamp) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastMsgTimestamp',
        value: [lastMsgTimestamp],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgTimestampNotEqualTo(int lastMsgTimestamp) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgTimestamp',
              lower: [],
              upper: [lastMsgTimestamp],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgTimestamp',
              lower: [lastMsgTimestamp],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgTimestamp',
              lower: [lastMsgTimestamp],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgTimestamp',
              lower: [],
              upper: [lastMsgTimestamp],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgTimestampGreaterThan(
    int lastMsgTimestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgTimestamp',
        lower: [lastMsgTimestamp],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgTimestampLessThan(
    int lastMsgTimestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgTimestamp',
        lower: [],
        upper: [lastMsgTimestamp],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgTimestampBetween(
    int lowerLastMsgTimestamp,
    int upperLastMsgTimestamp, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgTimestamp',
        lower: [lowerLastMsgTimestamp],
        includeLower: includeLower,
        upper: [upperLastMsgTimestamp],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgSeqEqualTo(int lastMsgSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastMsgSeq',
        value: [lastMsgSeq],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgSeqNotEqualTo(int lastMsgSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgSeq',
              lower: [],
              upper: [lastMsgSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgSeq',
              lower: [lastMsgSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgSeq',
              lower: [lastMsgSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastMsgSeq',
              lower: [],
              upper: [lastMsgSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgSeqGreaterThan(
    int lastMsgSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgSeq',
        lower: [lastMsgSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgSeqLessThan(
    int lastMsgSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgSeq',
        lower: [],
        upper: [lastMsgSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastMsgSeqBetween(
    int lowerLastMsgSeq,
    int upperLastMsgSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastMsgSeq',
        lower: [lowerLastMsgSeq],
        includeLower: includeLower,
        upper: [upperLastMsgSeq],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastClientMsgNoEqualTo(String lastClientMsgNo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastClientMsgNo',
        value: [lastClientMsgNo],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      lastClientMsgNoNotEqualTo(String lastClientMsgNo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastClientMsgNo',
              lower: [],
              upper: [lastClientMsgNo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastClientMsgNo',
              lower: [lastClientMsgNo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastClientMsgNo',
              lower: [lastClientMsgNo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastClientMsgNo',
              lower: [],
              upper: [lastClientMsgNo],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      offsetMsgSeqEqualTo(int offsetMsgSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'offsetMsgSeq',
        value: [offsetMsgSeq],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      offsetMsgSeqNotEqualTo(int offsetMsgSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'offsetMsgSeq',
              lower: [],
              upper: [offsetMsgSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'offsetMsgSeq',
              lower: [offsetMsgSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'offsetMsgSeq',
              lower: [offsetMsgSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'offsetMsgSeq',
              lower: [],
              upper: [offsetMsgSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      offsetMsgSeqGreaterThan(
    int offsetMsgSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'offsetMsgSeq',
        lower: [offsetMsgSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      offsetMsgSeqLessThan(
    int offsetMsgSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'offsetMsgSeq',
        lower: [],
        upper: [offsetMsgSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      offsetMsgSeqBetween(
    int lowerOffsetMsgSeq,
    int upperOffsetMsgSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'offsetMsgSeq',
        lower: [lowerOffsetMsgSeq],
        includeLower: includeLower,
        upper: [upperOffsetMsgSeq],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      versionEqualTo(int version) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'version',
        value: [version],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      versionNotEqualTo(int version) {
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      versionGreaterThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      versionLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      versionBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      unreadCountEqualTo(int unreadCount) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'unreadCount',
        value: [unreadCount],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      unreadCountNotEqualTo(int unreadCount) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'unreadCount',
              lower: [],
              upper: [unreadCount],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'unreadCount',
              lower: [unreadCount],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'unreadCount',
              lower: [unreadCount],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'unreadCount',
              lower: [],
              upper: [unreadCount],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      unreadCountGreaterThan(
    int unreadCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'unreadCount',
        lower: [unreadCount],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      unreadCountLessThan(
    int unreadCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'unreadCount',
        lower: [],
        upper: [unreadCount],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      unreadCountBetween(
    int lowerUnreadCount,
    int upperUnreadCount, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'unreadCount',
        lower: [lowerUnreadCount],
        includeLower: includeLower,
        upper: [upperUnreadCount],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      parentChannelIDEqualTo(String parentChannelID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'parentChannelID',
        value: [parentChannelID],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
      parentChannelTypeEqualTo(int parentChannelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'parentChannelType',
        value: [parentChannelType],
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

  QueryBuilder<WKConversation, WKConversation, QAfterWhereClause>
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

extension WKConversationQueryFilter
    on QueryBuilder<WKConversation, WKConversation, QFilterCondition> {
  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdEqualTo(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdStartsWith(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdEndsWith(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelTypeLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelTypeBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastClientMsgNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastClientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastClientMsgNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastClientMsgNo',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastClientMsgNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastClientMsgNo',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgSeqEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastMsgSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgTimestampEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastMsgTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgTimestampGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastMsgTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgTimestampLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastMsgTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      lastMsgTimestampBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastMsgTimestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      offsetMsgSeqEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offsetMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      offsetMsgSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'offsetMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      offsetMsgSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'offsetMsgSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      offsetMsgSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'offsetMsgSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      parentChannelIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parentChannelID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      parentChannelIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parentChannelID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      parentChannelIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentChannelID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      parentChannelIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parentChannelID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      parentChannelTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentChannelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      unreadCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      unreadCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      unreadCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unreadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      unreadCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unreadCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      versionGreaterThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      versionLessThan(
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

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      versionBetween(
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

extension WKConversationQueryObject
    on QueryBuilder<WKConversation, WKConversation, QFilterCondition> {}

extension WKConversationQueryLinks
    on QueryBuilder<WKConversation, WKConversation, QFilterCondition> {
  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition> channel(
      FilterQuery<WKChannel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'channel');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      channelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'channel', 0, true, 0, true);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition> messages(
      FilterQuery<WKMessage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'messages');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      messagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, true, length, true);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      messagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, 0, true);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      messagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, false, 999999, true);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      messagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, length, include);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
      messagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, include, 999999, true);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterFilterCondition>
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
}

extension WKConversationQuerySortBy
    on QueryBuilder<WKConversation, WKConversation, QSortBy> {
  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> sortByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastClientMsgNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClientMsgNo', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastClientMsgNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClientMsgNo', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgSeq', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastMsgSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgSeq', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastMsgTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgTimestamp', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByLastMsgTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgTimestamp', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByOffsetMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offsetMsgSeq', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByOffsetMsgSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offsetMsgSeq', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByParentChannelID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByParentChannelIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByParentChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByUnreadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKConversationQuerySortThenBy
    on QueryBuilder<WKConversation, WKConversation, QSortThenBy> {
  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> thenByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastClientMsgNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClientMsgNo', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastClientMsgNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastClientMsgNo', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgSeq', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastMsgSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgSeq', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastMsgTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgTimestamp', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByLastMsgTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMsgTimestamp', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByOffsetMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offsetMsgSeq', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByOffsetMsgSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offsetMsgSeq', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByParentChannelID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByParentChannelIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelID', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByParentChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentChannelType', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByUnreadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadCount', Sort.desc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKConversationQueryWhereDistinct
    on QueryBuilder<WKConversation, WKConversation, QDistinct> {
  QueryBuilder<WKConversation, WKConversation, QDistinct> distinctByChannelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelType');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByLastClientMsgNo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastClientMsgNo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByLastMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastMsgSeq');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByLastMsgTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastMsgTimestamp');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByOffsetMsgSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'offsetMsgSeq');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByParentChannelID({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentChannelID',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByParentChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentChannelType');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct>
      distinctByUnreadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unreadCount');
    });
  }

  QueryBuilder<WKConversation, WKConversation, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension WKConversationQueryProperty
    on QueryBuilder<WKConversation, WKConversation, QQueryProperty> {
  QueryBuilder<WKConversation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WKConversation, String, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations> channelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelType');
    });
  }

  QueryBuilder<WKConversation, String, QQueryOperations>
      lastClientMsgNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastClientMsgNo');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations> lastMsgSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastMsgSeq');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations>
      lastMsgTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastMsgTimestamp');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations> offsetMsgSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'offsetMsgSeq');
    });
  }

  QueryBuilder<WKConversation, String, QQueryOperations>
      parentChannelIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentChannelID');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations>
      parentChannelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentChannelType');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations> unreadCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unreadCount');
    });
  }

  QueryBuilder<WKConversation, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
