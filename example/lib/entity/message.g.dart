// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWKMessageCollection on Isar {
  IsarCollection<WKMessage> get wKMessages => this.collection();
}

const WKMessageSchema = CollectionSchema(
  name: r'message',
  id: 800701444045231354,
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
    r'clientMsgNo': PropertySchema(
      id: 2,
      name: r'clientMsgNo',
      type: IsarType.string,
    ),
    r'contentType': PropertySchema(
      id: 3,
      name: r'contentType',
      type: IsarType.long,
    ),
    r'expireTime': PropertySchema(
      id: 4,
      name: r'expireTime',
      type: IsarType.long,
    ),
    r'expireTimestamp': PropertySchema(
      id: 5,
      name: r'expireTimestamp',
      type: IsarType.long,
    ),
    r'extraVersion': PropertySchema(
      id: 6,
      name: r'extraVersion',
      type: IsarType.long,
    ),
    r'fromUid': PropertySchema(
      id: 7,
      name: r'fromUid',
      type: IsarType.string,
    ),
    r'header': PropertySchema(
      id: 8,
      name: r'header',
      type: IsarType.object,
      target: r'Header',
    ),
    r'isDeleted': PropertySchema(
      id: 9,
      name: r'isDeleted',
      type: IsarType.long,
    ),
    r'messageIdStr': PropertySchema(
      id: 10,
      name: r'messageIdStr',
      type: IsarType.string,
    ),
    r'messageSeq': PropertySchema(
      id: 11,
      name: r'messageSeq',
      type: IsarType.long,
    ),
    r'payload': PropertySchema(
      id: 12,
      name: r'payload',
      type: IsarType.object,
      target: r'Payload',
    ),
    r'readed': PropertySchema(
      id: 13,
      name: r'readed',
      type: IsarType.long,
    ),
    r'searchableWord': PropertySchema(
      id: 14,
      name: r'searchableWord',
      type: IsarType.string,
    ),
    r'setting': PropertySchema(
      id: 15,
      name: r'setting',
      type: IsarType.long,
    ),
    r'signalPayload': PropertySchema(
      id: 16,
      name: r'signalPayload',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 17,
      name: r'status',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 18,
      name: r'timestamp',
      type: IsarType.long,
    ),
    r'topicID': PropertySchema(
      id: 19,
      name: r'topicID',
      type: IsarType.string,
    ),
    r'viewed': PropertySchema(
      id: 20,
      name: r'viewed',
      type: IsarType.long,
    ),
    r'viewedAt': PropertySchema(
      id: 21,
      name: r'viewedAt',
      type: IsarType.long,
    )
  },
  estimateSize: _wKMessageEstimateSize,
  serialize: _wKMessageSerialize,
  deserialize: _wKMessageDeserialize,
  deserializeProp: _wKMessageDeserializeProp,
  idName: r'id',
  indexes: {
    r'messageIdStr': IndexSchema(
      id: -614139931376342656,
      name: r'messageIdStr',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'messageIdStr',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'messageSeq': IndexSchema(
      id: 5886150379064425645,
      name: r'messageSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'messageSeq',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'clientMsgNo': IndexSchema(
      id: -7188784646502828694,
      name: r'clientMsgNo',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'clientMsgNo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'contentType': IndexSchema(
      id: -4813096802902836239,
      name: r'contentType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'contentType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'channelId': IndexSchema(
      id: -8352446570702114471,
      name: r'channelId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'channelId',
          type: IndexType.hash,
          caseSensitive: true,
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
    r'timestamp': IndexSchema(
      id: 1852253767416892198,
      name: r'timestamp',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'timestamp',
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
    r'expireTime': IndexSchema(
      id: -401903803127150705,
      name: r'expireTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'expireTime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'expireTimestamp': IndexSchema(
      id: -466786555364543829,
      name: r'expireTimestamp',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'expireTimestamp',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'readed': IndexSchema(
      id: -8481024504554336928,
      name: r'readed',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'readed',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'extraVersion': IndexSchema(
      id: -6004553603398621741,
      name: r'extraVersion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'extraVersion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'searchableWord': IndexSchema(
      id: 1317451451294817944,
      name: r'searchableWord',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'searchableWord',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'topicID': IndexSchema(
      id: 6598393111855323669,
      name: r'topicID',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'topicID',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'viewed': IndexSchema(
      id: 3677605862619085293,
      name: r'viewed',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'viewed',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'viewedAt': IndexSchema(
      id: 1541624929386044767,
      name: r'viewedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'viewedAt',
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
    )
  },
  links: {
    r'fromChannel': LinkSchema(
      id: -1421433498180054103,
      name: r'fromChannel',
      target: r'channel',
      single: true,
    ),
    r'channel': LinkSchema(
      id: 8999326390606254800,
      name: r'channel',
      target: r'channel',
      single: true,
    ),
    r'conversation': LinkSchema(
      id: -7122923744924849834,
      name: r'conversation',
      target: r'conversation',
      single: true,
    )
  },
  embeddedSchemas: {r'Header': HeaderSchema, r'Payload': PayloadSchema},
  getId: _wKMessageGetId,
  getLinks: _wKMessageGetLinks,
  attach: _wKMessageAttach,
  version: '3.1.0+1',
);

int _wKMessageEstimateSize(
  WKMessage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.channelId.length * 3;
  bytesCount += 3 + object.clientMsgNo.length * 3;
  bytesCount += 3 + object.fromUid.length * 3;
  bytesCount += 3 +
      HeaderSchema.estimateSize(object.header, allOffsets[Header]!, allOffsets);
  bytesCount += 3 + object.messageIdStr.length * 3;
  bytesCount += 3 +
      PayloadSchema.estimateSize(
          object.payload, allOffsets[Payload]!, allOffsets);
  bytesCount += 3 + object.searchableWord.length * 3;
  bytesCount += 3 + object.signalPayload.length * 3;
  bytesCount += 3 + object.topicID.length * 3;
  return bytesCount;
}

void _wKMessageSerialize(
  WKMessage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.channelId);
  writer.writeLong(offsets[1], object.channelType);
  writer.writeString(offsets[2], object.clientMsgNo);
  writer.writeLong(offsets[3], object.contentType);
  writer.writeLong(offsets[4], object.expireTime);
  writer.writeLong(offsets[5], object.expireTimestamp);
  writer.writeLong(offsets[6], object.extraVersion);
  writer.writeString(offsets[7], object.fromUid);
  writer.writeObject<Header>(
    offsets[8],
    allOffsets,
    HeaderSchema.serialize,
    object.header,
  );
  writer.writeLong(offsets[9], object.isDeleted);
  writer.writeString(offsets[10], object.messageIdStr);
  writer.writeLong(offsets[11], object.messageSeq);
  writer.writeObject<Payload>(
    offsets[12],
    allOffsets,
    PayloadSchema.serialize,
    object.payload,
  );
  writer.writeLong(offsets[13], object.readed);
  writer.writeString(offsets[14], object.searchableWord);
  writer.writeLong(offsets[15], object.setting);
  writer.writeString(offsets[16], object.signalPayload);
  writer.writeLong(offsets[17], object.status);
  writer.writeLong(offsets[18], object.timestamp);
  writer.writeString(offsets[19], object.topicID);
  writer.writeLong(offsets[20], object.viewed);
  writer.writeLong(offsets[21], object.viewedAt);
}

WKMessage _wKMessageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WKMessage();
  object.channelId = reader.readString(offsets[0]);
  object.channelType = reader.readLong(offsets[1]);
  object.clientMsgNo = reader.readString(offsets[2]);
  object.contentType = reader.readLong(offsets[3]);
  object.expireTime = reader.readLong(offsets[4]);
  object.expireTimestamp = reader.readLong(offsets[5]);
  object.extraVersion = reader.readLong(offsets[6]);
  object.fromUid = reader.readString(offsets[7]);
  object.header = reader.readObjectOrNull<Header>(
        offsets[8],
        HeaderSchema.deserialize,
        allOffsets,
      ) ??
      Header();
  object.id = id;
  object.isDeleted = reader.readLong(offsets[9]);
  object.messageIdStr = reader.readString(offsets[10]);
  object.messageSeq = reader.readLong(offsets[11]);
  object.payload = reader.readObjectOrNull<Payload>(
        offsets[12],
        PayloadSchema.deserialize,
        allOffsets,
      ) ??
      Payload();
  object.readed = reader.readLong(offsets[13]);
  object.searchableWord = reader.readString(offsets[14]);
  object.setting = reader.readLong(offsets[15]);
  object.signalPayload = reader.readString(offsets[16]);
  object.status = reader.readLong(offsets[17]);
  object.timestamp = reader.readLong(offsets[18]);
  object.topicID = reader.readString(offsets[19]);
  object.viewed = reader.readLong(offsets[20]);
  object.viewedAt = reader.readLong(offsets[21]);
  return object;
}

P _wKMessageDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<Header>(
            offset,
            HeaderSchema.deserialize,
            allOffsets,
          ) ??
          Header()) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readObjectOrNull<Payload>(
            offset,
            PayloadSchema.deserialize,
            allOffsets,
          ) ??
          Payload()) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readLong(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wKMessageGetId(WKMessage object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _wKMessageGetLinks(WKMessage object) {
  return [object.fromChannel, object.channel, object.conversation];
}

void _wKMessageAttach(IsarCollection<dynamic> col, Id id, WKMessage object) {
  object.id = id;
  object.fromChannel
      .attach(col, col.isar.collection<WKChannel>(), r'fromChannel', id);
  object.channel.attach(col, col.isar.collection<WKChannel>(), r'channel', id);
  object.conversation
      .attach(col, col.isar.collection<WKConversation>(), r'conversation', id);
}

extension WKMessageByIndex on IsarCollection<WKMessage> {
  Future<WKMessage?> getByMessageIdStr(String messageIdStr) {
    return getByIndex(r'messageIdStr', [messageIdStr]);
  }

  WKMessage? getByMessageIdStrSync(String messageIdStr) {
    return getByIndexSync(r'messageIdStr', [messageIdStr]);
  }

  Future<bool> deleteByMessageIdStr(String messageIdStr) {
    return deleteByIndex(r'messageIdStr', [messageIdStr]);
  }

  bool deleteByMessageIdStrSync(String messageIdStr) {
    return deleteByIndexSync(r'messageIdStr', [messageIdStr]);
  }

  Future<List<WKMessage?>> getAllByMessageIdStr(
      List<String> messageIdStrValues) {
    final values = messageIdStrValues.map((e) => [e]).toList();
    return getAllByIndex(r'messageIdStr', values);
  }

  List<WKMessage?> getAllByMessageIdStrSync(List<String> messageIdStrValues) {
    final values = messageIdStrValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'messageIdStr', values);
  }

  Future<int> deleteAllByMessageIdStr(List<String> messageIdStrValues) {
    final values = messageIdStrValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'messageIdStr', values);
  }

  int deleteAllByMessageIdStrSync(List<String> messageIdStrValues) {
    final values = messageIdStrValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'messageIdStr', values);
  }

  Future<Id> putByMessageIdStr(WKMessage object) {
    return putByIndex(r'messageIdStr', object);
  }

  Id putByMessageIdStrSync(WKMessage object, {bool saveLinks = true}) {
    return putByIndexSync(r'messageIdStr', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMessageIdStr(List<WKMessage> objects) {
    return putAllByIndex(r'messageIdStr', objects);
  }

  List<Id> putAllByMessageIdStrSync(List<WKMessage> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'messageIdStr', objects, saveLinks: saveLinks);
  }
}

extension WKMessageQueryWhereSort
    on QueryBuilder<WKMessage, WKMessage, QWhere> {
  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyMessageSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'messageSeq'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyContentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'contentType'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'channelType'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'timestamp'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDeleted'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'expireTime'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyExpireTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'expireTimestamp'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyReaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'readed'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyExtraVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'extraVersion'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyViewed() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'viewed'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'viewedAt'),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhere> anyStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'status'),
      );
    });
  }
}

extension WKMessageQueryWhere
    on QueryBuilder<WKMessage, WKMessage, QWhereClause> {
  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> idBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageIdStrEqualTo(
      String messageIdStr) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'messageIdStr',
        value: [messageIdStr],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageIdStrNotEqualTo(
      String messageIdStr) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageIdStr',
              lower: [],
              upper: [messageIdStr],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageIdStr',
              lower: [messageIdStr],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageIdStr',
              lower: [messageIdStr],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageIdStr',
              lower: [],
              upper: [messageIdStr],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageSeqEqualTo(
      int messageSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'messageSeq',
        value: [messageSeq],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageSeqNotEqualTo(
      int messageSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageSeq',
              lower: [],
              upper: [messageSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageSeq',
              lower: [messageSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageSeq',
              lower: [messageSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'messageSeq',
              lower: [],
              upper: [messageSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageSeqGreaterThan(
    int messageSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'messageSeq',
        lower: [messageSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageSeqLessThan(
    int messageSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'messageSeq',
        lower: [],
        upper: [messageSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> messageSeqBetween(
    int lowerMessageSeq,
    int upperMessageSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'messageSeq',
        lower: [lowerMessageSeq],
        includeLower: includeLower,
        upper: [upperMessageSeq],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> clientMsgNoEqualTo(
      String clientMsgNo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'clientMsgNo',
        value: [clientMsgNo],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> clientMsgNoNotEqualTo(
      String clientMsgNo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'clientMsgNo',
              lower: [],
              upper: [clientMsgNo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'clientMsgNo',
              lower: [clientMsgNo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'clientMsgNo',
              lower: [clientMsgNo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'clientMsgNo',
              lower: [],
              upper: [clientMsgNo],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> contentTypeEqualTo(
      int contentType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'contentType',
        value: [contentType],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> contentTypeNotEqualTo(
      int contentType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contentType',
              lower: [],
              upper: [contentType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contentType',
              lower: [contentType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contentType',
              lower: [contentType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contentType',
              lower: [],
              upper: [contentType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> contentTypeGreaterThan(
    int contentType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'contentType',
        lower: [contentType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> contentTypeLessThan(
    int contentType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'contentType',
        lower: [],
        upper: [contentType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> contentTypeBetween(
    int lowerContentType,
    int upperContentType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'contentType',
        lower: [lowerContentType],
        includeLower: includeLower,
        upper: [upperContentType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelIdEqualTo(
      String channelId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId',
        value: [channelId],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelIdNotEqualTo(
      String channelId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId',
              lower: [],
              upper: [channelId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId',
              lower: [channelId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId',
              lower: [channelId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'channelId',
              lower: [],
              upper: [channelId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelTypeEqualTo(
      int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelType',
        value: [channelType],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelTypeNotEqualTo(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelTypeGreaterThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelTypeLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> channelTypeBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> timestampEqualTo(
      int timestamp) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'timestamp',
        value: [timestamp],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> timestampNotEqualTo(
      int timestamp) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [],
              upper: [timestamp],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [timestamp],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [timestamp],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [],
              upper: [timestamp],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> timestampGreaterThan(
    int timestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [timestamp],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> timestampLessThan(
    int timestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [],
        upper: [timestamp],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> timestampBetween(
    int lowerTimestamp,
    int upperTimestamp, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [lowerTimestamp],
        includeLower: includeLower,
        upper: [upperTimestamp],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> isDeletedEqualTo(
      int isDeleted) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDeleted',
        value: [isDeleted],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> isDeletedNotEqualTo(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> isDeletedGreaterThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> isDeletedLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> isDeletedBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimeEqualTo(
      int expireTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'expireTime',
        value: [expireTime],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimeNotEqualTo(
      int expireTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTime',
              lower: [],
              upper: [expireTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTime',
              lower: [expireTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTime',
              lower: [expireTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTime',
              lower: [],
              upper: [expireTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimeGreaterThan(
    int expireTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTime',
        lower: [expireTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimeLessThan(
    int expireTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTime',
        lower: [],
        upper: [expireTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimeBetween(
    int lowerExpireTime,
    int upperExpireTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTime',
        lower: [lowerExpireTime],
        includeLower: includeLower,
        upper: [upperExpireTime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimestampEqualTo(
      int expireTimestamp) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'expireTimestamp',
        value: [expireTimestamp],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause>
      expireTimestampNotEqualTo(int expireTimestamp) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTimestamp',
              lower: [],
              upper: [expireTimestamp],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTimestamp',
              lower: [expireTimestamp],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTimestamp',
              lower: [expireTimestamp],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expireTimestamp',
              lower: [],
              upper: [expireTimestamp],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause>
      expireTimestampGreaterThan(
    int expireTimestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTimestamp',
        lower: [expireTimestamp],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimestampLessThan(
    int expireTimestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTimestamp',
        lower: [],
        upper: [expireTimestamp],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> expireTimestampBetween(
    int lowerExpireTimestamp,
    int upperExpireTimestamp, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expireTimestamp',
        lower: [lowerExpireTimestamp],
        includeLower: includeLower,
        upper: [upperExpireTimestamp],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> readedEqualTo(
      int readed) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'readed',
        value: [readed],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> readedNotEqualTo(
      int readed) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readed',
              lower: [],
              upper: [readed],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readed',
              lower: [readed],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readed',
              lower: [readed],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readed',
              lower: [],
              upper: [readed],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> readedGreaterThan(
    int readed, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readed',
        lower: [readed],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> readedLessThan(
    int readed, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readed',
        lower: [],
        upper: [readed],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> readedBetween(
    int lowerReaded,
    int upperReaded, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readed',
        lower: [lowerReaded],
        includeLower: includeLower,
        upper: [upperReaded],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> extraVersionEqualTo(
      int extraVersion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'extraVersion',
        value: [extraVersion],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> extraVersionNotEqualTo(
      int extraVersion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraVersion',
              lower: [],
              upper: [extraVersion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraVersion',
              lower: [extraVersion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraVersion',
              lower: [extraVersion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraVersion',
              lower: [],
              upper: [extraVersion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> extraVersionGreaterThan(
    int extraVersion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'extraVersion',
        lower: [extraVersion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> extraVersionLessThan(
    int extraVersion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'extraVersion',
        lower: [],
        upper: [extraVersion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> extraVersionBetween(
    int lowerExtraVersion,
    int upperExtraVersion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'extraVersion',
        lower: [lowerExtraVersion],
        includeLower: includeLower,
        upper: [upperExtraVersion],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> searchableWordEqualTo(
      String searchableWord) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'searchableWord',
        value: [searchableWord],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause>
      searchableWordNotEqualTo(String searchableWord) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchableWord',
              lower: [],
              upper: [searchableWord],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchableWord',
              lower: [searchableWord],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchableWord',
              lower: [searchableWord],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'searchableWord',
              lower: [],
              upper: [searchableWord],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> topicIDEqualTo(
      String topicID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'topicID',
        value: [topicID],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> topicIDNotEqualTo(
      String topicID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'topicID',
              lower: [],
              upper: [topicID],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'topicID',
              lower: [topicID],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'topicID',
              lower: [topicID],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'topicID',
              lower: [],
              upper: [topicID],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedEqualTo(
      int viewed) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'viewed',
        value: [viewed],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedNotEqualTo(
      int viewed) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewed',
              lower: [],
              upper: [viewed],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewed',
              lower: [viewed],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewed',
              lower: [viewed],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewed',
              lower: [],
              upper: [viewed],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedGreaterThan(
    int viewed, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewed',
        lower: [viewed],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedLessThan(
    int viewed, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewed',
        lower: [],
        upper: [viewed],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedBetween(
    int lowerViewed,
    int upperViewed, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewed',
        lower: [lowerViewed],
        includeLower: includeLower,
        upper: [upperViewed],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedAtEqualTo(
      int viewedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'viewedAt',
        value: [viewedAt],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedAtNotEqualTo(
      int viewedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewedAt',
              lower: [],
              upper: [viewedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewedAt',
              lower: [viewedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewedAt',
              lower: [viewedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'viewedAt',
              lower: [],
              upper: [viewedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedAtGreaterThan(
    int viewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewedAt',
        lower: [viewedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedAtLessThan(
    int viewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewedAt',
        lower: [],
        upper: [viewedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> viewedAtBetween(
    int lowerViewedAt,
    int upperViewedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'viewedAt',
        lower: [lowerViewedAt],
        includeLower: includeLower,
        upper: [upperViewedAt],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> statusEqualTo(
      int status) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'status',
        value: [status],
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> statusNotEqualTo(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> statusGreaterThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> statusLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterWhereClause> statusBetween(
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
}

extension WKMessageQueryFilter
    on QueryBuilder<WKMessage, WKMessage, QFilterCondition> {
  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdEqualTo(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdStartsWith(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdEndsWith(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdContains(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdMatches(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      channelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelTypeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelTypeLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelTypeBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      clientMsgNoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientMsgNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      clientMsgNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clientMsgNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> clientMsgNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clientMsgNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      clientMsgNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientMsgNo',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      clientMsgNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientMsgNo',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> contentTypeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      contentTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contentType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> contentTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contentType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> contentTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> expireTimeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      expireTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> expireTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> expireTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expireTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      expireTimestampEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expireTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      expireTimestampGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expireTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      expireTimestampLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expireTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      expireTimestampBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expireTimestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> extraVersionEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extraVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      extraVersionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extraVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      extraVersionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extraVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> extraVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extraVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fromUid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fromUid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fromUid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromUidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromUid',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      fromUidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fromUid',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> isDeletedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> isDeletedLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> isDeletedBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageIdStrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageIdStrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'messageIdStr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'messageIdStr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageIdStrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'messageIdStr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'messageIdStr',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageIdStrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'messageIdStr',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageSeqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'messageSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      messageSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'messageSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'messageSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> messageSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'messageSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> readedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> readedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> readedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> readedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchableWord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchableWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchableWord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchableWord',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      searchableWordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchableWord',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> settingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'setting',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> settingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'setting',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> settingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'setting',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> settingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'setting',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'signalPayload',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'signalPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'signalPayload',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signalPayload',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      signalPayloadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'signalPayload',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> statusEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> statusGreaterThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> statusLessThan(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> statusBetween(
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

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> timestampEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      timestampGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> timestampLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> timestampBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topicID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topicID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topicID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> topicIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topicID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      topicIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topicID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewed',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedAtEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedAtGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedAtLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> viewedAtBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WKMessageQueryObject
    on QueryBuilder<WKMessage, WKMessage, QFilterCondition> {
  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> header(
      FilterQuery<Header> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'header');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> payload(
      FilterQuery<Payload> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'payload');
    });
  }
}

extension WKMessageQueryLinks
    on QueryBuilder<WKMessage, WKMessage, QFilterCondition> {
  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> fromChannel(
      FilterQuery<WKChannel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'fromChannel');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      fromChannelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'fromChannel', 0, true, 0, true);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channel(
      FilterQuery<WKChannel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'channel');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> channelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'channel', 0, true, 0, true);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition> conversation(
      FilterQuery<WKConversation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'conversation');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterFilterCondition>
      conversationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'conversation', 0, true, 0, true);
    });
  }
}

extension WKMessageQuerySortBy on QueryBuilder<WKMessage, WKMessage, QSortBy> {
  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByClientMsgNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientMsgNo', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByClientMsgNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientMsgNo', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByContentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentType', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByContentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentType', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExpireTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExpireTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTimestamp', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExpireTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTimestamp', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExtraVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraVersion', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByExtraVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraVersion', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByFromUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromUid', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByFromUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromUid', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByMessageIdStr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageIdStr', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByMessageIdStrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageIdStr', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByMessageSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageSeq', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByMessageSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageSeq', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByReaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readed', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByReadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readed', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySearchableWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchableWord', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySearchableWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchableWord', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'setting', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySettingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'setting', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySignalPayload() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signalPayload', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortBySignalPayloadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signalPayload', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByTopicID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicID', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByTopicIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicID', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByViewed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewed', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByViewedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewed', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewedAt', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> sortByViewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewedAt', Sort.desc);
    });
  }
}

extension WKMessageQuerySortThenBy
    on QueryBuilder<WKMessage, WKMessage, QSortThenBy> {
  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByClientMsgNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientMsgNo', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByClientMsgNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientMsgNo', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByContentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentType', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByContentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentType', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExpireTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExpireTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTimestamp', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExpireTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTimestamp', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExtraVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraVersion', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByExtraVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraVersion', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByFromUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromUid', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByFromUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromUid', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByMessageIdStr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageIdStr', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByMessageIdStrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageIdStr', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByMessageSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageSeq', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByMessageSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'messageSeq', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByReaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readed', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByReadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readed', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySearchableWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchableWord', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySearchableWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchableWord', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'setting', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySettingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'setting', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySignalPayload() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signalPayload', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenBySignalPayloadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signalPayload', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByTopicID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicID', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByTopicIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topicID', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByViewed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewed', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByViewedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewed', Sort.desc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewedAt', Sort.asc);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QAfterSortBy> thenByViewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewedAt', Sort.desc);
    });
  }
}

extension WKMessageQueryWhereDistinct
    on QueryBuilder<WKMessage, WKMessage, QDistinct> {
  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByChannelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelType');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByClientMsgNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientMsgNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByContentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contentType');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expireTime');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByExpireTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expireTimestamp');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByExtraVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extraVersion');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByFromUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fromUid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByMessageIdStr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'messageIdStr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByMessageSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'messageSeq');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByReaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readed');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctBySearchableWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchableWord',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctBySetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'setting');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctBySignalPayload(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'signalPayload',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByTopicID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topicID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByViewed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viewed');
    });
  }

  QueryBuilder<WKMessage, WKMessage, QDistinct> distinctByViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viewedAt');
    });
  }
}

extension WKMessageQueryProperty
    on QueryBuilder<WKMessage, WKMessage, QQueryProperty> {
  QueryBuilder<WKMessage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> channelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelType');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> clientMsgNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientMsgNo');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> contentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contentType');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> expireTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expireTime');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> expireTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expireTimestamp');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> extraVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extraVersion');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> fromUidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fromUid');
    });
  }

  QueryBuilder<WKMessage, Header, QQueryOperations> headerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'header');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> messageIdStrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'messageIdStr');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> messageSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'messageSeq');
    });
  }

  QueryBuilder<WKMessage, Payload, QQueryOperations> payloadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payload');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> readedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readed');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> searchableWordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchableWord');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> settingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'setting');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> signalPayloadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'signalPayload');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<WKMessage, String, QQueryOperations> topicIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topicID');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> viewedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viewed');
    });
  }

  QueryBuilder<WKMessage, int, QQueryOperations> viewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viewedAt');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HeaderSchema = Schema(
  name: r'Header',
  id: -4655764413408289911,
  properties: {
    r'noPersist': PropertySchema(
      id: 0,
      name: r'noPersist',
      type: IsarType.bool,
    ),
    r'redDot': PropertySchema(
      id: 1,
      name: r'redDot',
      type: IsarType.bool,
    ),
    r'syncOnce': PropertySchema(
      id: 2,
      name: r'syncOnce',
      type: IsarType.bool,
    )
  },
  estimateSize: _headerEstimateSize,
  serialize: _headerSerialize,
  deserialize: _headerDeserialize,
  deserializeProp: _headerDeserializeProp,
);

int _headerEstimateSize(
  Header object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _headerSerialize(
  Header object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.noPersist);
  writer.writeBool(offsets[1], object.redDot);
  writer.writeBool(offsets[2], object.syncOnce);
}

Header _headerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Header();
  object.noPersist = reader.readBool(offsets[0]);
  object.redDot = reader.readBool(offsets[1]);
  object.syncOnce = reader.readBool(offsets[2]);
  return object;
}

P _headerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension HeaderQueryFilter on QueryBuilder<Header, Header, QFilterCondition> {
  QueryBuilder<Header, Header, QAfterFilterCondition> noPersistEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noPersist',
        value: value,
      ));
    });
  }

  QueryBuilder<Header, Header, QAfterFilterCondition> redDotEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'redDot',
        value: value,
      ));
    });
  }

  QueryBuilder<Header, Header, QAfterFilterCondition> syncOnceEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncOnce',
        value: value,
      ));
    });
  }
}

extension HeaderQueryObject on QueryBuilder<Header, Header, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PayloadSchema = Schema(
  name: r'Payload',
  id: -207881526788851939,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.long,
    )
  },
  estimateSize: _payloadEstimateSize,
  serialize: _payloadSerialize,
  deserialize: _payloadDeserialize,
  deserializeProp: _payloadDeserializeProp,
);

int _payloadEstimateSize(
  Payload object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  return bytesCount;
}

void _payloadSerialize(
  Payload object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeLong(offsets[1], object.type);
}

Payload _payloadDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Payload();
  object.content = reader.readString(offsets[0]);
  object.type = reader.readLong(offsets[1]);
  return object;
}

P _payloadDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PayloadQueryFilter
    on QueryBuilder<Payload, Payload, QFilterCondition> {
  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> typeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> typeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> typeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Payload, Payload, QAfterFilterCondition> typeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PayloadQueryObject
    on QueryBuilder<Payload, Payload, QFilterCondition> {}
