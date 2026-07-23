.class public final Lcom/facebook/ads/redexgen/X/5i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5f;,
        Lcom/facebook/ads/androidx/media3/datasource/DataSpec$HttpMethod;,
        Lcom/facebook/ads/androidx/media3/datasource/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static final A0C:Lcom/facebook/ads/redexgen/X/5i;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Landroid/net/Uri;

.field public final A07:Lcom/facebook/ads/redexgen/X/ML;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Using fbDataSpecExtension instead of Object"
    .end annotation
.end field

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 404
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5i;->A03()V

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A03(Ljava/lang/String;)V

    .line 405
    const/16 v2, 0x2b

    const/16 v1, 0x10

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5i;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5i;->A0C:Lcom/facebook/ads/redexgen/X/5i;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 15260
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;II)V

    .line 15261
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 49
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15262
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v41

    new-instance v3, Lcom/facebook/ads/redexgen/X/ML;

    new-instance v17, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/MK;-><init>()V

    sget-object v30, Lcom/facebook/ads/redexgen/X/MJ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    const-wide/16 v37, -0x1

    const-wide/16 v39, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, -0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v34

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move/from16 v14, p3

    invoke-direct/range {v3 .. v40}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Ljava/lang/String;JZIIIIZZIJLcom/facebook/ads/redexgen/X/MK;ZIIJJILjava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MJ;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 15263
    const-wide/16 v37, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, -0x1

    move-object/from16 v35, p0

    move/from16 v47, p2

    move-object/from16 v36, p1

    move-object/from16 v46, v26

    move-object/from16 v48, v3

    invoke-direct/range {v35 .. v48}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;)V

    .line 15264
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replacement of customData Object with fbDataSpecExtension"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/ads/redexgen/X/ML;",
            ")V"
        }
    .end annotation

    .line 15265
    .local p14, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15266
    add-long v1, p2, p7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 15267
    cmp-long v0, p7, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 15268
    move-wide/from16 v0, p9

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 15269
    iput-object p1, v3, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    .line 15270
    iput-wide p2, v3, Lcom/facebook/ads/redexgen/X/5i;->A05:J

    .line 15271
    iput p4, v3, Lcom/facebook/ads/redexgen/X/5i;->A01:I

    .line 15272
    if-eqz p5, :cond_1

    array-length v2, p5

    if-eqz v2, :cond_1

    :goto_3
    iput-object p5, v3, Lcom/facebook/ads/redexgen/X/5i;->A0A:[B

    .line 15273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/5i;->A09:Ljava/util/Map;

    .line 15274
    iput-wide p7, v3, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    .line 15275
    add-long/2addr p2, p7

    iput-wide p2, v3, Lcom/facebook/ads/redexgen/X/5i;->A02:J

    .line 15276
    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    .line 15277
    move-object/from16 v0, p11

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    .line 15278
    move/from16 v0, p12

    iput v0, v3, Lcom/facebook/ads/redexgen/X/5i;->A00:I

    .line 15279
    move-object/from16 v0, p13

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    .line 15280
    return-void

    .line 15281
    :cond_1
    const/4 p5, 0x0

    goto :goto_3

    .line 15282
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 15283
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 15284
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;Lcom/facebook/ads/redexgen/X/5e;)V
    .locals 0

    .line 15285
    invoke-direct/range {p0 .. p13}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "creation and passage of FbDataSpecExtension"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15286
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    new-instance v13, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v13}, Lcom/facebook/ads/redexgen/X/ML;-><init>()V

    .line 15287
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-wide/from16 v9, p4

    move-wide/from16 v7, p2

    move-object/from16 v11, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;)V

    .line 15288
    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 1

    .line 15289
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5i;->A01(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 2

    .line 15290
    packed-switch p0, :pswitch_data_0

    .line 15291
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 15292
    :pswitch_0
    const/16 p0, 0xf

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15293
    :pswitch_1
    const/16 p0, 0x13

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15294
    :pswitch_2
    const/16 p0, 0xc

    const/4 v1, 0x3

    const/16 v0, 0x5b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5i;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5i;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x7bt
        -0x54t
        -0x60t
        -0x70t
        -0x53t
        -0x40t
        -0x53t
        -0x61t
        -0x44t
        -0x4ft
        -0x51t
        -0x59t
        -0x34t
        -0x36t
        -0x27t
        -0x74t
        -0x77t
        -0x7bt
        -0x78t
        -0x34t
        -0x35t
        -0x31t
        -0x30t
        -0x58t
        -0x58t
        -0x50t
        -0x50t
        -0x58t
        0x6ft
        -0x5at
        -0x47t
        -0x50t
        0x6ft
        -0x5bt
        -0x5et
        -0x4bt
        -0x5et
        -0x4ct
        -0x50t
        -0x4at
        -0x4dt
        -0x5ct
        -0x5at
        -0x3dt
        -0x3dt
        -0x3dt
        0x7at
        -0x4et
        -0x53t
        -0x51t
        -0x4ft
        -0x52t
        -0x45t
        -0x45t
        -0x49t
        0x7at
        -0x51t
        -0x45t
        -0x47t
    .end array-data
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/5f;
    .locals 2

    .line 15295
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/5f;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/5f;-><init>(Lcom/facebook/ads/redexgen/X/5i;Lcom/facebook/ads/redexgen/X/5e;)V

    return-object v0
.end method

.method public final A05(JJ)Lcom/facebook/ads/redexgen/X/5i;
    .locals 15
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replacement of customData Object with fbDataSpecExtension + new copy creation"
    .end annotation

    .line 15296
    move-object v0, p0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    move-wide/from16 v10, p3

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    .line 15297
    return-object v0

    .line 15298
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/5i;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/5i;->A05:J

    iget v5, v0, Lcom/facebook/ads/redexgen/X/5i;->A01:I

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/5i;->A0A:[B

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/5i;->A09:Ljava/util/Map;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    add-long v8, v8, p1

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/5i;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    new-instance v14, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-direct/range {v1 .. v14}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;)V

    return-object v1
.end method

.method public final A06(I)Z
    .locals 1

    .line 15299
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Stringification of fbDataSpecExtension (last two items)"
    .end annotation

    .line 15300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/16 v1, 0x9

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15301
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5i;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ML;->A0P:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15302
    return-object v0
.end method
