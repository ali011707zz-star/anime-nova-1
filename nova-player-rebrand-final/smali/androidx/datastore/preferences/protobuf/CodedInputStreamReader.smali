.class final Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Reader;


# instance fields
.field private endGroupTag:I

.field private final input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/CodedInputStream;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    .line 44
    const-string v0, "input"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 45
    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->wrapper:Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static forCodedInput(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream;->wrapper:Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;-><init>(Landroidx/datastore/preferences/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 3

    .line 219
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 220
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 223
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 224
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 229
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    return-void

    .line 225
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 229
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 230
    throw p1
.end method

.method private mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 4

    .line 186
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 187
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iget v2, v1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionDepth:I

    iget v3, v1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v2, v3, :cond_0

    .line 192
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 193
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iget v2, v1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionDepth:I

    .line 194
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 195
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 196
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    iget p2, p1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/datastore/preferences/protobuf/CodedInputStream;->recursionDepth:I

    .line 198
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private readField(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 1281
    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1317
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    :pswitch_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1313
    :pswitch_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1311
    :pswitch_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1309
    :pswitch_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1307
    :pswitch_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1305
    :pswitch_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1303
    :pswitch_6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1301
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1299
    :pswitch_8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1297
    :pswitch_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1295
    :pswitch_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1293
    :pswitch_b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1291
    :pswitch_c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1289
    :pswitch_d
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1287
    :pswitch_e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1285
    :pswitch_f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 1283
    :pswitch_10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readGroup(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 237
    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private readMessage(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 204
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 206
    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private requirePosition(I)V
    .locals 1

    .line 1329
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1330
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private requireWireType(I)V
    .locals 1

    .line 81
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    .line 1225
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 2

    .line 55
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    .line 56
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    .line 61
    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 69
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public mergeGroupField(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x3

    .line 213
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeMessageField(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x2

    .line 180
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readBool()Z
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 131
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 2

    .line 719
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 721
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 722
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 724
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 726
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 742
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 730
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 734
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 735
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 737
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    .line 243
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 244
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 2

    .line 856
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 861
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 866
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 868
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 857
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .locals 2

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 89
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 4

    .line 313
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 316
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 317
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 319
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 336
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 324
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 328
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 329
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 331
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readEnum()I
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 256
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 2

    .line 962
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 964
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 965
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 967
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 969
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 985
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 973
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 977
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 978
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 980
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFixed32()I
    .locals 1

    const/4 v0, 0x5

    .line 124
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 125
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 2

    .line 661
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 672
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 676
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 677
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 679
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 684
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 663
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 664
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 665
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 667
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void
.end method

.method public readFixed64()J
    .locals 2

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 119
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 4

    .line 603
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 606
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 607
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 609
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 626
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 614
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 618
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 619
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 621
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x5

    .line 94
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 95
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 2

    .line 371
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 387
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 389
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 394
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 373
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 374
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 375
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 377
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void
.end method

.method public readGroupList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 836
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 839
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    .line 841
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readGroup(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 848
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    .line 837
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readInt32()I
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 113
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 2

    .line 545
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 548
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 550
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 552
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 568
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 556
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 560
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 561
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 563
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readInt64()J
    .locals 2

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 107
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 4

    .line 487
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 489
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 490
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 492
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 494
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 510
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 498
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 502
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 503
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 505
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readMap(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 7

    const/4 v0, 0x2

    .line 1236
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1237
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1238
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1239
    iget-object v2, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1240
    iget-object v3, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1243
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    .line 1244
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 1248
    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 1259
    :try_start_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1260
    :cond_1
    new-instance v4, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1253
    :cond_2
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1256
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1255
    invoke-direct {p0, v4, v5, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readField(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1250
    :cond_3
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readField(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1267
    :cond_4
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :goto_2
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    throw p1
.end method

.method public readMessage(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    .line 149
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 150
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->getInstance()Landroidx/datastore/preferences/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readMessage(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 804
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 807
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    .line 809
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readMessage(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 816
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    .line 805
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readSFixed32()I
    .locals 1

    const/4 v0, 0x5

    .line 261
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 262
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 2

    .line 1020
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1031
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1036
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 1038
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1043
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1022
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1023
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 1024
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1026
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void
.end method

.method public readSFixed64()J
    .locals 2

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 268
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 4

    .line 1078
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1080
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1081
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1082
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1084
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1101
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1089
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 1093
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1094
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 1096
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt32()I
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 274
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 2

    .line 1136
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1138
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1139
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1141
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1143
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 1159
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1147
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1151
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1152
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 1154
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt64()J
    .locals 2

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 280
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 4

    .line 1194
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1196
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1197
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1199
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1201
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 1217
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1205
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1209
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1210
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 1212
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 136
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 137
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 2

    .line 758
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    .line 778
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 782
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 783
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 785
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 759
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 142
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 250
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 2

    .line 904
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 906
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 907
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 909
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 911
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 927
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 915
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 919
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 920
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 922
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readUInt64()J
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 101
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 4

    .line 429
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 432
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 434
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 436
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->requirePosition(I)V

    return-void

    .line 452
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 440
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 444
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 445
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    .line 447
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public skipField()Z
    .locals 2

    .line 74
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->input:Landroidx/datastore/preferences/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
