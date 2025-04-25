// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_member.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWKChannelMemberCollection on Isar {
  IsarCollection<WKChannelMember> get wKChannelMembers => this.collection();
}

const WKChannelMemberSchema = CollectionSchema(
  name: r'channel_members',
  id: 3203070375637631201,
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
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.string,
    ),
    r'extraMap': PropertySchema(
      id: 3,
      name: r'extraMap',
      type: IsarType.string,
    ),
    r'forbiddenExpirationTime': PropertySchema(
      id: 4,
      name: r'forbiddenExpirationTime',
      type: IsarType.long,
    ),
    r'isDeleted': PropertySchema(
      id: 5,
      name: r'isDeleted',
      type: IsarType.long,
    ),
    r'memberAvatar': PropertySchema(
      id: 6,
      name: r'memberAvatar',
      type: IsarType.string,
    ),
    r'memberAvatarCacheKey': PropertySchema(
      id: 7,
      name: r'memberAvatarCacheKey',
      type: IsarType.string,
    ),
    r'memberInviteUID': PropertySchema(
      id: 8,
      name: r'memberInviteUID',
      type: IsarType.string,
    ),
    r'memberName': PropertySchema(
      id: 9,
      name: r'memberName',
      type: IsarType.string,
    ),
    r'memberRemark': PropertySchema(
      id: 10,
      name: r'memberRemark',
      type: IsarType.string,
    ),
    r'memberUID': PropertySchema(
      id: 11,
      name: r'memberUID',
      type: IsarType.string,
    ),
    r'remark': PropertySchema(
      id: 12,
      name: r'remark',
      type: IsarType.string,
    ),
    r'robot': PropertySchema(
      id: 13,
      name: r'robot',
      type: IsarType.long,
    ),
    r'role': PropertySchema(
      id: 14,
      name: r'role',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 15,
      name: r'status',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 16,
      name: r'updatedAt',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 17,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _wKChannelMemberEstimateSize,
  serialize: _wKChannelMemberSerialize,
  deserialize: _wKChannelMemberDeserialize,
  deserializeProp: _wKChannelMemberDeserializeProp,
  idName: r'id',
  indexes: {
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
    r'memberUID': IndexSchema(
      id: 439093601657382545,
      name: r'memberUID',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberUID',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'memberName': IndexSchema(
      id: -6834322328190846064,
      name: r'memberName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'memberRemark': IndexSchema(
      id: -8952597258568948072,
      name: r'memberRemark',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberRemark',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'memberAvatar': IndexSchema(
      id: 7064605679284535070,
      name: r'memberAvatar',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberAvatar',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'role': IndexSchema(
      id: -7450883916179829259,
      name: r'role',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'role',
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
    r'updatedAt': IndexSchema(
      id: -6238191080293565125,
      name: r'updatedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'updatedAt',
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
    r'extraMap': IndexSchema(
      id: -7415688935263536076,
      name: r'extraMap',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'extraMap',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'remark': IndexSchema(
      id: -6942075313861015335,
      name: r'remark',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'remark',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'memberInviteUID': IndexSchema(
      id: -561318803773089297,
      name: r'memberInviteUID',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberInviteUID',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'forbiddenExpirationTime': IndexSchema(
      id: 8352112134323513788,
      name: r'forbiddenExpirationTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'forbiddenExpirationTime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'memberAvatarCacheKey': IndexSchema(
      id: -8649106037909167742,
      name: r'memberAvatarCacheKey',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'memberAvatarCacheKey',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _wKChannelMemberGetId,
  getLinks: _wKChannelMemberGetLinks,
  attach: _wKChannelMemberAttach,
  version: '3.1.0+1',
);

int _wKChannelMemberEstimateSize(
  WKChannelMember object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.channelId.length * 3;
  bytesCount += 3 + object.createdAt.length * 3;
  bytesCount += 3 + object.extraMap.length * 3;
  bytesCount += 3 + object.memberAvatar.length * 3;
  bytesCount += 3 + object.memberAvatarCacheKey.length * 3;
  bytesCount += 3 + object.memberInviteUID.length * 3;
  bytesCount += 3 + object.memberName.length * 3;
  bytesCount += 3 + object.memberRemark.length * 3;
  bytesCount += 3 + object.memberUID.length * 3;
  bytesCount += 3 + object.remark.length * 3;
  bytesCount += 3 + object.updatedAt.length * 3;
  return bytesCount;
}

void _wKChannelMemberSerialize(
  WKChannelMember object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.channelId);
  writer.writeLong(offsets[1], object.channelType);
  writer.writeString(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.extraMap);
  writer.writeLong(offsets[4], object.forbiddenExpirationTime);
  writer.writeLong(offsets[5], object.isDeleted);
  writer.writeString(offsets[6], object.memberAvatar);
  writer.writeString(offsets[7], object.memberAvatarCacheKey);
  writer.writeString(offsets[8], object.memberInviteUID);
  writer.writeString(offsets[9], object.memberName);
  writer.writeString(offsets[10], object.memberRemark);
  writer.writeString(offsets[11], object.memberUID);
  writer.writeString(offsets[12], object.remark);
  writer.writeLong(offsets[13], object.robot);
  writer.writeLong(offsets[14], object.role);
  writer.writeLong(offsets[15], object.status);
  writer.writeString(offsets[16], object.updatedAt);
  writer.writeLong(offsets[17], object.version);
}

WKChannelMember _wKChannelMemberDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WKChannelMember();
  object.channelId = reader.readString(offsets[0]);
  object.channelType = reader.readLong(offsets[1]);
  object.createdAt = reader.readString(offsets[2]);
  object.extraMap = reader.readString(offsets[3]);
  object.forbiddenExpirationTime = reader.readLong(offsets[4]);
  object.id = id;
  object.isDeleted = reader.readLong(offsets[5]);
  object.memberAvatar = reader.readString(offsets[6]);
  object.memberAvatarCacheKey = reader.readString(offsets[7]);
  object.memberInviteUID = reader.readString(offsets[8]);
  object.memberName = reader.readString(offsets[9]);
  object.memberRemark = reader.readString(offsets[10]);
  object.memberUID = reader.readString(offsets[11]);
  object.remark = reader.readString(offsets[12]);
  object.robot = reader.readLong(offsets[13]);
  object.role = reader.readLong(offsets[14]);
  object.status = reader.readLong(offsets[15]);
  object.updatedAt = reader.readString(offsets[16]);
  object.version = reader.readLong(offsets[17]);
  return object;
}

P _wKChannelMemberDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wKChannelMemberGetId(WKChannelMember object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _wKChannelMemberGetLinks(WKChannelMember object) {
  return [];
}

void _wKChannelMemberAttach(
    IsarCollection<dynamic> col, Id id, WKChannelMember object) {
  object.id = id;
}

extension WKChannelMemberQueryWhereSort
    on QueryBuilder<WKChannelMember, WKChannelMember, QWhere> {
  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'channelType'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'role'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'status'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isDeleted'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'version'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere> anyRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'robot'),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhere>
      anyForbiddenExpirationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'forbiddenExpirationTime'),
      );
    });
  }
}

extension WKChannelMemberQueryWhere
    on QueryBuilder<WKChannelMember, WKChannelMember, QWhereClause> {
  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause> idBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      channelIdEqualTo(String channelId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelId',
        value: [channelId],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      channelIdNotEqualTo(String channelId) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      channelTypeEqualTo(int channelType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'channelType',
        value: [channelType],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberUIDEqualTo(String memberUID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberUID',
        value: [memberUID],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberUIDNotEqualTo(String memberUID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberUID',
              lower: [],
              upper: [memberUID],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberUID',
              lower: [memberUID],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberUID',
              lower: [memberUID],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberUID',
              lower: [],
              upper: [memberUID],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberNameEqualTo(String memberName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberName',
        value: [memberName],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberNameNotEqualTo(String memberName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberName',
              lower: [],
              upper: [memberName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberName',
              lower: [memberName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberName',
              lower: [memberName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberName',
              lower: [],
              upper: [memberName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberRemarkEqualTo(String memberRemark) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberRemark',
        value: [memberRemark],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberRemarkNotEqualTo(String memberRemark) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberRemark',
              lower: [],
              upper: [memberRemark],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberRemark',
              lower: [memberRemark],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberRemark',
              lower: [memberRemark],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberRemark',
              lower: [],
              upper: [memberRemark],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberAvatarEqualTo(String memberAvatar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberAvatar',
        value: [memberAvatar],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberAvatarNotEqualTo(String memberAvatar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatar',
              lower: [],
              upper: [memberAvatar],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatar',
              lower: [memberAvatar],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatar',
              lower: [memberAvatar],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatar',
              lower: [],
              upper: [memberAvatar],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause> roleEqualTo(
      int role) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'role',
        value: [role],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      roleNotEqualTo(int role) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'role',
              lower: [],
              upper: [role],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'role',
              lower: [role],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'role',
              lower: [role],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'role',
              lower: [],
              upper: [role],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      roleGreaterThan(
    int role, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'role',
        lower: [role],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      roleLessThan(
    int role, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'role',
        lower: [],
        upper: [role],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause> roleBetween(
    int lowerRole,
    int upperRole, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'role',
        lower: [lowerRole],
        includeLower: includeLower,
        upper: [upperRole],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      statusEqualTo(int status) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'status',
        value: [status],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      statusNotEqualTo(int status) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      statusGreaterThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      statusLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      statusBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      isDeletedEqualTo(int isDeleted) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isDeleted',
        value: [isDeleted],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      isDeletedNotEqualTo(int isDeleted) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      isDeletedGreaterThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      isDeletedLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      isDeletedBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      createdAtEqualTo(String createdAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'createdAt',
        value: [createdAt],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      createdAtNotEqualTo(String createdAt) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      updatedAtEqualTo(String updatedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'updatedAt',
        value: [updatedAt],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      updatedAtNotEqualTo(String updatedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [],
              upper: [updatedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [updatedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [updatedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updatedAt',
              lower: [],
              upper: [updatedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      versionEqualTo(int version) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'version',
        value: [version],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      robotEqualTo(int robot) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'robot',
        value: [robot],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      robotNotEqualTo(int robot) {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      robotGreaterThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      robotLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      robotBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      extraMapEqualTo(String extraMap) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'extraMap',
        value: [extraMap],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      extraMapNotEqualTo(String extraMap) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraMap',
              lower: [],
              upper: [extraMap],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraMap',
              lower: [extraMap],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraMap',
              lower: [extraMap],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'extraMap',
              lower: [],
              upper: [extraMap],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      remarkEqualTo(String remark) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'remark',
        value: [remark],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      remarkNotEqualTo(String remark) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remark',
              lower: [],
              upper: [remark],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remark',
              lower: [remark],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remark',
              lower: [remark],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'remark',
              lower: [],
              upper: [remark],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberInviteUIDEqualTo(String memberInviteUID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberInviteUID',
        value: [memberInviteUID],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberInviteUIDNotEqualTo(String memberInviteUID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberInviteUID',
              lower: [],
              upper: [memberInviteUID],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberInviteUID',
              lower: [memberInviteUID],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberInviteUID',
              lower: [memberInviteUID],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberInviteUID',
              lower: [],
              upper: [memberInviteUID],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      forbiddenExpirationTimeEqualTo(int forbiddenExpirationTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'forbiddenExpirationTime',
        value: [forbiddenExpirationTime],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      forbiddenExpirationTimeNotEqualTo(int forbiddenExpirationTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbiddenExpirationTime',
              lower: [],
              upper: [forbiddenExpirationTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbiddenExpirationTime',
              lower: [forbiddenExpirationTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbiddenExpirationTime',
              lower: [forbiddenExpirationTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'forbiddenExpirationTime',
              lower: [],
              upper: [forbiddenExpirationTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      forbiddenExpirationTimeGreaterThan(
    int forbiddenExpirationTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbiddenExpirationTime',
        lower: [forbiddenExpirationTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      forbiddenExpirationTimeLessThan(
    int forbiddenExpirationTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbiddenExpirationTime',
        lower: [],
        upper: [forbiddenExpirationTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      forbiddenExpirationTimeBetween(
    int lowerForbiddenExpirationTime,
    int upperForbiddenExpirationTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'forbiddenExpirationTime',
        lower: [lowerForbiddenExpirationTime],
        includeLower: includeLower,
        upper: [upperForbiddenExpirationTime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberAvatarCacheKeyEqualTo(String memberAvatarCacheKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'memberAvatarCacheKey',
        value: [memberAvatarCacheKey],
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterWhereClause>
      memberAvatarCacheKeyNotEqualTo(String memberAvatarCacheKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatarCacheKey',
              lower: [],
              upper: [memberAvatarCacheKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatarCacheKey',
              lower: [memberAvatarCacheKey],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatarCacheKey',
              lower: [memberAvatarCacheKey],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'memberAvatarCacheKey',
              lower: [],
              upper: [memberAvatarCacheKey],
              includeUpper: false,
            ));
      }
    });
  }
}

extension WKChannelMemberQueryFilter
    on QueryBuilder<WKChannelMember, WKChannelMember, QFilterCondition> {
  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      channelIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'channelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      channelIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'channelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      channelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      channelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'channelId',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      channelTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'channelType',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtEqualTo(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtStartsWith(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtEndsWith(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      createdAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extraMap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'extraMap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'extraMap',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extraMap',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      extraMapIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'extraMap',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      forbiddenExpirationTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'forbiddenExpirationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      forbiddenExpirationTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'forbiddenExpirationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      forbiddenExpirationTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'forbiddenExpirationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      forbiddenExpirationTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'forbiddenExpirationTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      isDeletedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      isDeletedLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      isDeletedBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberAvatar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberAvatar',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberAvatar',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberAvatar',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberAvatar',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberAvatarCacheKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberAvatarCacheKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberAvatarCacheKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberAvatarCacheKey',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberAvatarCacheKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberAvatarCacheKey',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberInviteUID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberInviteUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberInviteUID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberInviteUID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberInviteUIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberInviteUID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberName',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberName',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberRemark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberRemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberRemark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberRemark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberRemarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberRemark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberUID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'memberUID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'memberUID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberUID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      memberUIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'memberUID',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      remarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remark',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      robotEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'robot',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      robotGreaterThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      robotLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      robotBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      roleEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      roleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      roleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      roleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      statusEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      statusGreaterThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      statusLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      statusBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtEqualTo(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtLessThan(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtBetween(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtStartsWith(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtEndsWith(
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      updatedAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterFilterCondition>
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

extension WKChannelMemberQueryObject
    on QueryBuilder<WKChannelMember, WKChannelMember, QFilterCondition> {}

extension WKChannelMemberQueryLinks
    on QueryBuilder<WKChannelMember, WKChannelMember, QFilterCondition> {}

extension WKChannelMemberQuerySortBy
    on QueryBuilder<WKChannelMember, WKChannelMember, QSortBy> {
  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByExtraMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraMap', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByExtraMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraMap', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByForbiddenExpirationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbiddenExpirationTime', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByForbiddenExpirationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbiddenExpirationTime', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatar', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatar', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberAvatarCacheKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatarCacheKey', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberAvatarCacheKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatarCacheKey', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberInviteUID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberInviteUID', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberInviteUIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberInviteUID', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberName', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberName', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberRemark', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberRemark', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberUID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberUID', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByMemberUIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberUID', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> sortByRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> sortByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByRobotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKChannelMemberQuerySortThenBy
    on QueryBuilder<WKChannelMember, WKChannelMember, QSortThenBy> {
  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByChannelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelType', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByExtraMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraMap', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByExtraMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraMap', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByForbiddenExpirationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbiddenExpirationTime', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByForbiddenExpirationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forbiddenExpirationTime', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberAvatar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatar', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberAvatarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatar', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberAvatarCacheKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatarCacheKey', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberAvatarCacheKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberAvatarCacheKey', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberInviteUID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberInviteUID', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberInviteUIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberInviteUID', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberName', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberName', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberRemark', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberRemark', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberUID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberUID', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByMemberUIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberUID', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByRemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByRemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remark', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByRobotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'robot', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension WKChannelMemberQueryWhereDistinct
    on QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> {
  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByChannelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByChannelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelType');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByExtraMap(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extraMap', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByForbiddenExpirationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forbiddenExpirationTime');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByMemberAvatar({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberAvatar', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByMemberAvatarCacheKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberAvatarCacheKey',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByMemberInviteUID({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberInviteUID',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByMemberName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByMemberRemark({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberRemark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByMemberUID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberUID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByRemark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByRobot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'robot');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct> distinctByUpdatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WKChannelMember, WKChannelMember, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension WKChannelMemberQueryProperty
    on QueryBuilder<WKChannelMember, WKChannelMember, QQueryProperty> {
  QueryBuilder<WKChannelMember, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> channelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelType');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> extraMapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extraMap');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations>
      forbiddenExpirationTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forbiddenExpirationTime');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations>
      memberAvatarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberAvatar');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations>
      memberAvatarCacheKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberAvatarCacheKey');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations>
      memberInviteUIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberInviteUID');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> memberNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberName');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations>
      memberRemarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberRemark');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> memberUIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberUID');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> remarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remark');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> robotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'robot');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<WKChannelMember, String, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<WKChannelMember, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
