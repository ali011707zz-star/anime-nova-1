.class public final Lcom/facebook/ads/redexgen/X/1f;
.super Lcom/facebook/ads/redexgen/X/AE;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Hw;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/j8;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Z

.field public final A06:Landroid/os/Handler;

.field public final A07:Lcom/facebook/ads/redexgen/X/Bd;

.field public final A08:Lcom/facebook/ads/redexgen/X/Bf;

.field public final A09:Lcom/facebook/ads/redexgen/X/9e;

.field public final A0A:[J

.field public final A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 110
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vMUMQm9t3PVEHAhulw0MAIkQwbUiUT4C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VzHAp2e3DLoJMdzQNED0QcuPK7cYUDq5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FnbOiwq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xIduLB4T8250"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Cs28mBuu0mG0MZGGLuKaoZOHc13snW3U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yvPpy336WGNf4g7OJVDaRPYRY7Bcuv5q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KVpXSq2ZIE7gcar9k8WJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1f;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bf;Landroid/os/Looper;)V
    .locals 2

    .line 7093
    sget-object v1, Lcom/facebook/ads/redexgen/X/Bd;->A00:Lcom/facebook/ads/redexgen/X/Bd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/Bf;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Bd;Ljava/lang/String;)V

    .line 7094
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bf;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Bd;Ljava/lang/String;)V
    .locals 2

    .line 7095
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/AE;-><init>(I)V

    .line 7096
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A08:Lcom/facebook/ads/redexgen/X/Bf;

    .line 7097
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Landroid/os/Handler;

    .line 7098
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Lcom/facebook/ads/redexgen/X/Bd;

    .line 7099
    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    .line 7100
    new-array v0, v1, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 7101
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:[J

    .line 7102
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/1f;->A08(Ljava/lang/String;)V

    .line 7103
    return-void

    .line 7104
    :cond_0
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1f;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 7105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7106
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    .line 7107
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    .line 7108
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1f;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x61t
        0x61t
        0x7ct
        0x61t
        0x33t
        0x7at
        0x7dt
        0x33t
        0x63t
        0x72t
        0x61t
        0x60t
        0x7at
        0x7dt
        0x74t
        0x33t
        0x5at
        0x5et
        0x55t
        0x33t
        0x60t
        0x63t
        0x76t
        0x70t
        0x7ct
        0x54t
        0x45t
        0x50t
        0x55t
        0x50t
        0x45t
        0x50t
        0x63t
        0x54t
        0x5ft
        0x55t
        0x54t
        0x43t
        0x54t
        0x43t
    .end array-data
.end method

.method private A03(J)V
    .locals 5

    .line 7109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7110
    return-void

    .line 7111
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/j8;

    .line 7112
    .local v1, "imfDataTrack":Lcom/facebook/ads/redexgen/X/j8;
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/j8;->A01:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/j8;->A00:J

    cmp-long v0, v1, p1

    if-ltz v0, :cond_1

    goto :goto_0

    .line 7113
    :cond_2
    return-void
.end method

.method private A04(J)V
    .locals 5

    .line 7114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7115
    return-void

    .line 7116
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/2Y;->A01(J)J

    move-result-wide v3

    .line 7117
    .local v0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 7118
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7119
    :goto_0
    return-void

    .line 7120
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/1f;->A03(J)V

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 5

    .line 7121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 7122
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Landroid/os/Handler;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 7123
    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const-string v1, "4kdXpcjsywiaLxx0LOctAJHWIf081Tdg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const/4 v0, 0x1

    aput-object v3, v2, v0

    invoke-virtual {v4, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7125
    :goto_0
    return-void

    .line 7126
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1f;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 1

    .line 7127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A08:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bf;->AEt(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 7128
    return-void
.end method

.method private A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 7129
    .local p3, "decodedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 7130
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->A9b()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 7131
    .local v1, "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/qI;
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;->AKN(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Lcom/facebook/ads/redexgen/X/Bd;

    .line 7133
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;->A5J(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/Hw;

    move-result-object v4

    .line 7134
    .local v2, "wrappedMetadataDecoder":Lcom/facebook/ads/redexgen/X/Hw;
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;->A9a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 7135
    .local v3, "wrappedMetadataBytes":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 7136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    array-length v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/p0;->A0C(I)V

    .line 7137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0B()V

    .line 7139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Hw;->A5o(Lcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    .line 7140
    .local v4, "innerMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v0, :cond_0

    .line 7141
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/1f;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 7142
    .end local v1    # "wrappedMetadataFormat":Lcom/facebook/ads/redexgen/X/qI;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7143
    :cond_1
    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7144
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A08(Ljava/lang/String;)V
    .locals 4

    .line 7145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7146
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/j9;->A01(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/util/List;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7147
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 7148
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final A1Z()V
    .locals 1

    .line 7149
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A01()V

    .line 7150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Lcom/facebook/ads/redexgen/X/Hw;

    .line 7151
    return-void
.end method

.method public final A1a(JZ)V
    .locals 1

    .line 7152
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A01()V

    .line 7153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Z

    .line 7154
    return-void
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V
    .locals 2

    .line 7155
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Lcom/facebook/ads/redexgen/X/Bd;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bd;->A5J(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/Hw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Lcom/facebook/ads/redexgen/X/Hw;

    .line 7156
    return-void
.end method

.method public final AAP()Z
    .locals 1

    .line 7157
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Z

    return v0
.end method

.method public final AAe()Z
    .locals 1

    .line 7158
    const/4 v0, 0x1

    return v0
.end method

.method public final AIX(JJ)V
    .locals 6

    .line 7159
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1f;->A04(J)V

    .line 7160
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Z

    const/4 v4, 0x5

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const-string v1, "1aiib0Ku6fHDvKwfwiyuvRv8M83XUpBK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v5, v4, :cond_0

    .line 7161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0A()V

    .line 7162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1U()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v2

    .line 7163
    .local v0, "formatHolder":Lcom/facebook/ads/redexgen/X/6z;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1R(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I

    move-result v1

    .line 7164
    .local v3, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_4

    .line 7165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7166
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Z

    .line 7167
    .end local v0    # "formatHolder":Lcom/facebook/ads/redexgen/X/6z;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    aget-wide v1, v1, v0

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    .line 7168
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 7169
    .local v0, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    aget-wide v0, v1, v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/2Y;->A01(J)J

    move-result-wide v0

    .line 7170
    .local v3, "offsetMs":J
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/1f;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 7171
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 7172
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    add-int/2addr v0, v3

    rem-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    .line 7173
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    .line 7174
    .end local v0    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v3    # "offsetMs":J
    :cond_1
    return-void

    .line 7175
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7176
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/9e;->A00:J

    .line 7177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p0;->A0B()V

    .line 7178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Lcom/facebook/ads/redexgen/X/Hw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hw;->A5o(Lcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v1

    .line 7179
    .local v4, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v1, :cond_0

    .line 7180
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7181
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/1f;->A07(Lcom/facebook/ads/androidx/media3/common/Metadata;Ljava/util/List;)V

    .line 7182
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7183
    new-instance v1, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v1, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 7184
    .local p0, "expandedMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    add-int/2addr v5, v0

    rem-int/2addr v5, v4

    .line 7185
    .local p1, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:[Lcom/facebook/ads/androidx/media3/common/Metadata;

    aput-object v1, v0, v5

    .line 7186
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    aput-wide v0, v2, v5

    .line 7187
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:I

    goto/16 :goto_0

    .line 7188
    :cond_4
    const/4 v0, -0x5

    if-ne v1, v0, :cond_0

    .line 7189
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:J

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AKM(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 1

    .line 7190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Bd;->AKN(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7191
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1g;->A1G(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7192
    const/4 v0, 0x4

    .line 7193
    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 7194
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 7195
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 7196
    const/16 v2, 0x19

    const/16 v1, 0x10

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 7197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 7198
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 7199
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1f;->A03(J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7200
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const-string v1, "UckPrHUV0DeFsLdW0mSA3sL7bYTaY94z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 7201
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 7202
    .local v0, "extraData":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v2, v1, v0

    check-cast v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/1f;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 7203
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
