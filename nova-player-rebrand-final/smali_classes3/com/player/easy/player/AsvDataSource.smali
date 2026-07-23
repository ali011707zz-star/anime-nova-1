.class public final Lcom/player/easy/player/AsvDataSource;
.super Ljava/lang/Object;
.source "AsvDataSource.kt"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/AsvDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0016J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u001e\u001a\u00020\u0012H\u0016J\u0008\u0010\u001f\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/player/easy/player/AsvDataSource;",
        "Landroidx/media3/datasource/DataSource;",
        "upstream",
        "<init>",
        "(Landroidx/media3/datasource/DataSource;)V",
        "uri",
        "Landroid/net/Uri;",
        "headerParsed",
        "",
        "payloadOffset",
        "",
        "payloadLength",
        "kid",
        "",
        "position",
        "bytesRemaining",
        "upstreamOpen",
        "addTransferListener",
        "",
        "transferListener",
        "Landroidx/media3/datasource/TransferListener;",
        "open",
        "dataSpec",
        "Landroidx/media3/datasource/DataSpec;",
        "read",
        "",
        "buffer",
        "offset",
        "readLength",
        "getUri",
        "close",
        "parseHeader",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAsvDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsvDataSource.kt\ncom/player/easy/player/AsvDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/player/AsvDataSource$Companion;

.field private static final HEADER_SIZE:I = 0x40

.field private static final MAGIC:[B


# instance fields
.field private bytesRemaining:J

.field private headerParsed:Z

.field private kid:[B

.field private payloadLength:J

.field private payloadOffset:J

.field private position:J

.field private final upstream:Landroidx/media3/datasource/DataSource;

.field private upstreamOpen:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/player/AsvDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/player/AsvDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/player/AsvDataSource;->Companion:Lcom/player/easy/player/AsvDataSource$Companion;

    const/4 v0, 0x4

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/player/easy/player/AsvDataSource;->MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x56t
        0x53t
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    return-void
.end method

.method public static final synthetic access$getMAGIC$cp()[B
    .locals 1

    .line 46
    sget-object v0, Lcom/player/easy/player/AsvDataSource;->MAGIC:[B

    return-object v0
.end method

.method private final parseHeader()V
    .locals 9

    const/16 v0, 0x40

    .line 136
    new-array v1, v0, [B

    .line 139
    new-instance v2, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v2}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v3, p0, Lcom/player/easy/player/AsvDataSource;->uri:Landroid/net/Uri;

    if-nez v3, :cond_0

    const-string v3, "uri"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v2

    const-wide/16 v5, 0x40

    invoke-virtual {v2, v5, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    const-string v7, "build(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v7, v2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 145
    iget-object v7, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    rsub-int/lit8 v8, v2, 0x40

    invoke-interface {v7, v1, v2, v8}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    add-int/2addr v2, v7

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Cannot read ASV header"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    .line 155
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    .line 158
    new-array v1, v1, [B

    .line 159
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 160
    sget-object v2, Lcom/player/easy/player/AsvDataSource;->MAGIC:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/player/easy/player/AsvDataSource;->payloadOffset:J

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/player/easy/player/AsvDataSource;->payloadLength:J

    .line 174
    iget-wide v7, p0, Lcom/player/easy/player/AsvDataSource;->payloadOffset:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_4

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 180
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x10

    .line 183
    new-array v1, v1, [B

    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    iput-object v1, p0, Lcom/player/easy/player/AsvDataSource;->kid:[B

    return-void

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid payload length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid payload offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (expected 64)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ASV version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_6
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an ASV file (invalid magic). Expected \'ASVS\', got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    const-string v0, "transferListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/player/easy/player/AsvDataSource;->upstreamOpen:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/player/easy/player/AsvDataSource;->upstreamOpen:Z

    :cond_0
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/media3/datasource/DataSource$-CC;->$default$getResponseHeaders(Landroidx/media3/datasource/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "uri"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 11

    const-string v0, "dataSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    const-string v1, "uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/player/easy/player/AsvDataSource;->uri:Landroid/net/Uri;

    .line 77
    iget-boolean v0, p0, Lcom/player/easy/player/AsvDataSource;->headerParsed:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/player/easy/player/AsvDataSource;->parseHeader()V

    .line 79
    iput-boolean v2, p0, Lcom/player/easy/player/AsvDataSource;->headerParsed:Z

    .line 82
    :cond_0
    iget-wide v3, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v3, p0, Lcom/player/easy/player/AsvDataSource;->position:J

    .line 83
    iget-wide v5, p0, Lcom/player/easy/player/AsvDataSource;->payloadLength:J

    const-wide/16 v7, 0x0

    cmp-long v0, v7, v3

    if-gtz v0, :cond_3

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 88
    iget-wide v7, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long p1, v7, v9

    sub-long/2addr v5, v3

    if-nez p1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 87
    :goto_0
    iput-wide v5, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    .line 96
    new-instance p1, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {p1}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->uri:Landroid/net/Uri;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 98
    iget-wide v0, p0, Lcom/player/easy/player/AsvDataSource;->payloadOffset:J

    iget-wide v3, p0, Lcom/player/easy/player/AsvDataSource;->position:J

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 99
    iget-wide v0, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    invoke-virtual {p1, v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 103
    iput-boolean v2, p0, Lcom/player/easy/player/AsvDataSource;->upstreamOpen:Z

    .line 105
    iget-wide v0, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    return-wide v0

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Seek out of range: position="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    iget-wide v0, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-gtz v2, :cond_1

    return v3

    :cond_1
    int-to-long v4, p3

    .line 112
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 115
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_2

    return v3

    .line 120
    :cond_2
    iget-wide p2, p0, Lcom/player/easy/player/AsvDataSource;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/player/easy/player/AsvDataSource;->position:J

    .line 121
    iget-wide p2, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/player/easy/player/AsvDataSource;->bytesRemaining:J

    return p1
.end method
