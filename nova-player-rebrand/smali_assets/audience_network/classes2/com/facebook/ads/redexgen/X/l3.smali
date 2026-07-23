.class public final Lcom/facebook/ads/redexgen/X/l3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/l5;,
        Lcom/facebook/ads/redexgen/X/l4;,
        Lcom/facebook/ads/androidx/media3/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/HA;

.field public A04:Lcom/facebook/ads/redexgen/X/l7;

.field public A05:Lcom/facebook/ads/redexgen/X/LH;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public final A09:I

.field public final A0A:I

.field public final A0B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/LH;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Landroid/util/SparseBooleanArray;

.field public final A0D:Landroid/util/SparseBooleanArray;

.field public final A0E:Landroid/util/SparseIntArray;

.field public final A0F:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0G:Lcom/facebook/ads/redexgen/X/LA;

.field public final A0H:Lcom/facebook/ads/redexgen/X/LE;

.field public final A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/53;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3175
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3dZ2NVLPQqqn6A0EUODs8QMiUtGNdx7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xuFjaEC88iswWSp8XVRYQuG7fGDdMX6m"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rjdehGUhBmpCCREwTfVtgF2pvaVk7Y4r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d6Khp0uOfqWTO1N40QwEt8A6fbOPCRXM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7DUxEGbk65Je624GBbCgY3TRasgIHugx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "67QtD18zbra6Hv1RLsjBMCgdjZH6dqot"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3juCdNiTPJNnKT5EWnyWnOXcFndGfbid"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ecCIYKwUzA4Q5tjuLJWmpRk8GBJuqhXU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/l3;->A0G()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/l6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/l6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/l3;->A0L:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/l3;-><init>(I)V

    .line 92235
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 92236
    const/4 v1, 0x1

    const v0, 0x1b8a0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/l3;-><init>(III)V

    .line 92237
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 92238
    const-wide/16 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lP;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/lP;-><init>(I)V

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/l3;-><init>(ILcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/LE;I)V

    .line 92239
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/LE;I)V
    .locals 3

    .line 92240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92241
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0H:Lcom/facebook/ads/redexgen/X/LE;

    .line 92242
    iput p4, p0, Lcom/facebook/ads/redexgen/X/l3;->A0A:I

    .line 92243
    iput p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    .line 92244
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 92245
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    .line 92246
    :goto_0
    const/16 v0, 0x24b8

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    .line 92247
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0C:Landroid/util/SparseBooleanArray;

    .line 92248
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0D:Landroid/util/SparseBooleanArray;

    .line 92249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    .line 92250
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0E:Landroid/util/SparseIntArray;

    .line 92251
    new-instance v0, Lcom/facebook/ads/redexgen/X/LA;

    invoke-direct {v0, p4}, Lcom/facebook/ads/redexgen/X/LA;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    .line 92252
    sget-object v0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/HA;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A03:Lcom/facebook/ads/redexgen/X/HA;

    .line 92253
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A01:I

    .line 92254
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/l3;->A0F()V

    .line 92255
    return-void

    .line 92256
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    .line 92257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A00()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 92258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v6

    .line 92259
    .local v0, "searchStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v1

    .line 92260
    .local v1, "limit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    .line 92261
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/LI;->A00([BII)I

    move-result v5

    .line 92262
    .local v2, "syncBytePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92263
    add-int/lit16 v3, v5, 0xbc

    .line 92264
    .local v3, "endOfPacket":I
    if-le v3, v1, :cond_1

    .line 92265
    iget v4, p0, Lcom/facebook/ads/redexgen/X/l3;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "oFbhmyTyFkRbH7nwLSukkKpVMF9MBiPP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/facebook/ads/redexgen/X/l3;->A00:I

    .line 92266
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A00:I

    const/16 v0, 0x178

    if-gt v1, v0, :cond_2

    .line 92267
    :cond_0
    :goto_0
    return v3

    .line 92268
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A00:I

    goto :goto_0

    .line 92269
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l3;->A0D(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/l3;)I
    .locals 0

    .line 92270
    iget p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/l3;)I
    .locals 2

    .line 92271
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A02:I

    return v1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/l3;)I
    .locals 0

    .line 92272
    iget p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/l3;I)I
    .locals 0

    .line 92273
    iput p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A02:I

    return p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/l3;I)I
    .locals 0

    .line 92274
    iput p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A01:I

    return p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;
    .locals 0

    .line 92275
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 92276
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0C:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 92277
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0D:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/HA;
    .locals 0

    .line 92278
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A03:Lcom/facebook/ads/redexgen/X/HA;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LE;
    .locals 0

    .line 92279
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0H:Lcom/facebook/ads/redexgen/X/LE;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/l3;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 0

    .line 92280
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A05:Lcom/facebook/ads/redexgen/X/LH;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/l3;Lcom/facebook/ads/redexgen/X/LH;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 0

    .line 92281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A05:Lcom/facebook/ads/redexgen/X/LH;

    return-object p1
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "URhJNiPfEIrBtOuckipDqR7YK4paNHr3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/l3;)Ljava/util/List;
    .locals 0

    .line 92282
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    return-object p0
.end method

.method private A0F()V
    .locals 7

    .line 92283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0C:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 92284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 92285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0H:Lcom/facebook/ads/redexgen/X/LE;

    .line 92286
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LE;->A5Q()Landroid/util/SparseArray;

    move-result-object v6

    .line 92287
    .local v0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 92288
    .local v1, "initialPayloadReadersSize":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 92289
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "Ni66o4kKOCTyHVW4880FmErKiABvWzx3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92290
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92291
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    new-instance v0, Lcom/facebook/ads/redexgen/X/l5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/l5;-><init>(Lcom/facebook/ads/redexgen/X/l3;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/l9;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/l9;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A05:Lcom/facebook/ads/redexgen/X/LH;

    .line 92293
    return-void
.end method

.method public static A0G()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l3;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x62t
        0x6dt
        0x6dt
        0x6ct
        0x77t
        0x23t
        0x65t
        0x6at
        0x6dt
        0x67t
        0x23t
        0x70t
        0x7at
        0x6dt
        0x60t
        0x23t
        0x61t
        0x7at
        0x77t
        0x66t
        0x2dt
        0x23t
        0x4et
        0x6ct
        0x70t
        0x77t
        0x23t
        0x6ft
        0x6at
        0x68t
        0x66t
        0x6ft
        0x7at
        0x23t
        0x6dt
        0x6ct
        0x77t
        0x23t
        0x62t
        0x23t
        0x57t
        0x71t
        0x62t
        0x6dt
        0x70t
        0x73t
        0x6ct
        0x71t
        0x77t
        0x23t
        0x50t
        0x77t
        0x71t
        0x66t
        0x62t
        0x6et
        0x2dt
    .end array-data
.end method

.method private A0H(J)V
    .locals 9

    .line 92294
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A06:Z

    if-nez v0, :cond_0

    .line 92295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A06:Z

    .line 92296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A08()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 92297
    new-instance v1, Lcom/facebook/ads/redexgen/X/l7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    .line 92298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A09()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    .line 92299
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A08()J

    move-result-wide v3

    iget v7, p0, Lcom/facebook/ads/redexgen/X/l3;->A01:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/l3;->A0A:I

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/l7;-><init>(Lcom/facebook/ads/redexgen/X/53;JJII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    .line 92300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A07()Lcom/facebook/ads/redexgen/X/n0;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 92301
    :cond_0
    :goto_0
    return-void

    .line 92302
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/l3;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A08()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    goto :goto_0
.end method

.method private A0I(I)Z
    .locals 2

    .line 92303
    iget v1, p0, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0D:Landroid/util/SparseBooleanArray;

    .line 92304
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 92305
    :cond_1
    return v1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v5

    .line 92307
    .local v0, "data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/4 v4, 0x0

    const/16 v3, 0xbc

    if-ge v0, v3, :cond_1

    .line 92308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    .line 92309
    .local v1, "bytesLeft":I
    if-lez v1, :cond_0

    .line 92310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-static {v5, v0, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92311
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 92312
    .end local v1    # "bytesLeft":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 92313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v2

    .line 92314
    .local v1, "limit":I
    rsub-int v0, v2, 0x24b8

    invoke-interface {p1, v5, v2, v0}, Lcom/facebook/ads/redexgen/X/ms;->read([BII)I

    move-result v1

    .line 92315
    .local v4, "read":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 92316
    return v4

    .line 92317
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92318
    .end local v1    # "limit":I
    .end local v4    # "read":I
    goto :goto_0

    .line 92319
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/l3;)Z
    .locals 0

    .line 92320
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    return p0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/l3;Z)Z
    .locals 0

    .line 92321
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    return p1
.end method

.method public static synthetic A0M()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 92322
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/l3;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/l3;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 0

    .line 92323
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l3;->A03:Lcom/facebook/ads/redexgen/X/HA;

    .line 92324
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92325
    move-object v7, p0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v2

    .line 92326
    .local v3, "inputLength":J
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    const-wide/16 v8, -0x1

    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 92327
    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    .line 92328
    .local v5, "canReadDuration":Z
    :goto_0
    move-object/from16 v8, p2

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A0A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92329
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/l3;->A0G:Lcom/facebook/ads/redexgen/X/LA;

    iget v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A01:I

    invoke-virtual {v1, p1, v8, v0}, Lcom/facebook/ads/redexgen/X/LA;->A07(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;I)I

    move-result v0

    return v0

    .line 92330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92331
    :cond_1
    invoke-direct {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/l3;->A0H(J)V

    .line 92332
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A07:Z

    if-eqz v0, :cond_2

    .line 92333
    iput-boolean v5, v7, Lcom/facebook/ads/redexgen/X/l3;->A07:Z

    .line 92334
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/l3;->AJ6(JJ)V

    .line 92335
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v9

    cmp-long v4, v9, v0

    if-eqz v4, :cond_2

    .line 92336
    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 92337
    return v11

    .line 92338
    :cond_2
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "sDiEMLnvjhOTPJNI7EdeGtcVnMMFmFVg"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "irXGtuFGajwAGmxrojJd4OjCXPAtU7cs"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-eqz v9, :cond_4

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A09()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92339
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/H2;->A06(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 92340
    .end local v5    # "canReadDuration":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/l3;->A0J(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_13

    sget-object v4, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "pbqhdVjd4r56PJWJm8ke7L1TPhAXhQlh"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    if-nez v8, :cond_5

    .line 92341
    const/4 v0, -0x1

    return v0

    .line 92342
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/l3;->A00()I

    move-result v8

    .line 92343
    .local v5, "endOfPacket":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v10

    .line 92344
    .local v11, "limit":I
    if-le v8, v10, :cond_6

    .line 92345
    return v5

    .line 92346
    :cond_6
    const/4 v11, 0x0

    .line 92347
    .local v12, "packetHeaderFlags":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 92348
    .local v13, "tsPacketHeader":I
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 92349
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92350
    return v5

    .line 92351
    :cond_7
    const/high16 v0, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v11, v0

    .line 92352
    const v0, 0x1fff00

    and-int/2addr v0, v1

    shr-int/lit8 v12, v0, 0x8

    .line 92353
    .local p0, "pid":I
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_a

    const/4 v13, 0x1

    .line 92354
    .local p1, "adaptationFieldExists":Z
    :goto_2
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 92355
    .local p2, "payloadExists":Z
    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/LH;

    .line 92356
    .local v9, "payloadReader":Lcom/facebook/ads/redexgen/X/LH;
    :goto_4
    if-nez v9, :cond_c

    .line 92357
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92358
    return v5

    .line 92359
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 92360
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 92361
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 92362
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 92363
    :cond_c
    iget v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    if-eq v0, v6, :cond_e

    .line 92364
    and-int/lit8 v4, v1, 0xf

    .line 92365
    .local v6, "continuityCounter":I
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/l3;->A0E:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 92366
    .local v7, "previousCounter":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0E:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 92367
    if-ne v1, v4, :cond_d

    .line 92368
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92369
    return v5

    .line 92370
    :cond_d
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v0, v0, 0xf

    if-eq v4, v0, :cond_e

    .line 92371
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/LH;->AJ5()V

    .line 92372
    .end local v6    # "continuityCounter":I
    .end local v7    # "previousCounter":I
    :cond_e
    if-eqz v13, :cond_f

    .line 92373
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 92374
    .local v6, "adaptationFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92375
    .local v7, "adaptationFieldFlags":I
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_12

    .line 92376
    const/4 v0, 0x2

    .line 92377
    :goto_5
    or-int/2addr v11, v0

    .line 92378
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92379
    .end local v6    # "adaptationFieldLength":I
    .end local v7    # "adaptationFieldFlags":I
    :cond_f
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    .line 92380
    .local v6, "wereTracksEnded":Z
    invoke-direct {v7, v12}, Lcom/facebook/ads/redexgen/X/l3;->A0I(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92381
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92382
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-interface {v9, v0, v11}, Lcom/facebook/ads/redexgen/X/LH;->A5B(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 92383
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    .line 92384
    :cond_10
    iget v1, v7, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11

    if-nez v4, :cond_11

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A08:Z

    if-eqz v0, :cond_11

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    .line 92385
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A07:Z

    .line 92386
    :cond_11
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92387
    const/4 v0, 0x0

    return v0

    .line 92388
    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AHb()V
    .locals 0

    .line 92389
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 15

    .line 92390
    move-object v6, p0

    iget v1, v6, Lcom/facebook/ads/redexgen/X/l3;->A09:I

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-eq v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 92391
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 92392
    .local v3, "timestampAdjustersCount":I
    const/4 v8, 0x0

    .local v4, "i":I
    :goto_1
    const-wide/16 v13, 0x0

    move-wide/from16 v3, p3

    if-ge v8, v9, :cond_5

    .line 92393
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0I:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/53;

    .line 92394
    .local v9, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/53;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/53;->A04()J

    move-result-wide v10

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 92395
    .local v10, "resetTimestampAdjuster":Z
    :goto_2
    if-nez v0, :cond_0

    .line 92396
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/53;->A02()J

    move-result-wide v11

    .line 92397
    .local v14, "adjusterFirstSampleTimestampUs":J
    cmp-long v0, v11, v1

    if-eqz v0, :cond_2

    cmp-long v10, v11, v13

    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "xsireMETvYUgN4sfQ27n1BF88Hpbgatm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v10, :cond_2

    cmp-long v0, v11, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 92398
    .end local v14    # "adjusterFirstSampleTimestampUs":J
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 92399
    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A07(J)V

    .line 92400
    .end local v9    # "timestampAdjuster":Lcom/facebook/ads/redexgen/X/53;
    .end local v10    # "resetTimestampAdjuster":Z
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 92401
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 92402
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 92403
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 92404
    .end local v4    # "i":I
    :cond_5
    cmp-long v7, v3, v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "QQ4ASPHg1MFvfTvzRH6TwvvGrvMhPJon"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v7, :cond_8

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    if-eqz v0, :cond_8

    .line 92405
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A04:Lcom/facebook/ads/redexgen/X/l7;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/H2;->A08(J)V

    .line 92406
    :cond_8
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 92407
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0E:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 92408
    const/4 v1, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 92409
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/l3;->A0B:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ5()V

    .line 92410
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 92411
    .end local v4    # "i":I
    :cond_9
    iput v5, v6, Lcom/facebook/ads/redexgen/X/l3;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_a

    .line 92412
    sget-object v2, Lcom/facebook/ads/redexgen/X/l3;->A0K:[Ljava/lang/String;

    const-string v1, "GowRIOwCagyGa1SkNIlwyA0nrp7kipic"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "k5JpOZ1RkOAyzQMCpU3mmbngvjfdQ1X3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_a
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l3;->A0F:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v6

    .line 92414
    .local v0, "buffer":[B
    const/16 v0, 0x3ac

    const/4 v5, 0x0

    invoke-interface {p1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92415
    const/4 v4, 0x0

    .local v1, "startPosCandidate":I
    :goto_0
    const/16 v0, 0xbc

    if-ge v4, v0, :cond_3

    .line 92416
    const/4 v3, 0x1

    .line 92417
    .local v3, "isSyncBytePatternCorrect":Z
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 92418
    mul-int/lit16 v0, v2, 0xbc

    add-int/2addr v0, v4

    aget-byte v1, v6, v0

    const/16 v0, 0x47

    if-eq v1, v0, :cond_2

    .line 92419
    const/4 v3, 0x0

    .line 92420
    .end local v4    # "i":I
    :cond_0
    if-eqz v3, :cond_1

    .line 92421
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 92422
    const/4 v0, 0x1

    return v0

    .line 92423
    .end local v3    # "isSyncBytePatternCorrect":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92424
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92425
    .end local v1    # "startPosCandidate":I
    :cond_3
    return v5
.end method
