.class public final Lcom/facebook/ads/redexgen/X/12;
.super Lcom/facebook/ads/redexgen/X/1g;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/78;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/oK;,
        Lcom/facebook/ads/redexgen/X/9S;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/media/MediaFormat;

.field public A07:Lcom/facebook/ads/redexgen/X/qI;

.field public A08:Lcom/facebook/ads/redexgen/X/7h;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public final A0E:Landroid/content/Context;

.field public final A0F:Lcom/facebook/ads/redexgen/X/8o;

.field public final A0G:Z

.field public final A0H:Z

.field public final A0I:Lcom/facebook/ads/redexgen/X/8z;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 72
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "77C8vP87Fd7b4BP9SQRJBzWPVk4TewQg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oQ2qsKrmaNuyaLFB2ph9zkmGtpzAonXt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MDqZPLCoXCzEQwxPxYtAKuxbh2tAcx1k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aWPkhw6gWy0BTxYknUchyjQmABWF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ais5GYfL5LR1KEYd6HRi1BBd2kmjCeGs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pdewp8MC9mt7vaqV0Zkeu3U5mw150Zm9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qv2CVs2gAdpJ8ZKBYAbfHfBiBdoePlCI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lcPZgHPLbCISPmjsMn5qIGSBsvlpomMq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/12;->A09()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/8R;[Lcom/facebook/ads/redexgen/X/3k;)V
    .locals 12

    .line 4657
    new-instance v11, Lcom/facebook/ads/redexgen/X/oM;

    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-direct {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;-><init>(Lcom/facebook/ads/redexgen/X/8R;[Lcom/facebook/ads/redexgen/X/3k;)V

    move-object v0, p0

    move-object/from16 v10, p10

    move-object/from16 v9, p9

    move/from16 v8, p8

    move/from16 v7, p7

    move/from16 v6, p6

    move-object/from16 v5, p5

    move-object/from16 v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/12;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/8z;)V

    .line 4658
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/8z;)V
    .locals 13

    .line 4659
    move-object v2, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move/from16 v9, p6

    move-object/from16 v8, p5

    move-object/from16 v7, p4

    move-object/from16 v6, p3

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/1g;-><init>(ILcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jN;Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;ZZII)V

    .line 4660
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/12;->A01:I

    .line 4661
    iput v0, v2, Lcom/facebook/ads/redexgen/X/12;->A02:I

    .line 4662
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/12;->A05:J

    .line 4663
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/12;->A0E:Landroid/content/Context;

    .line 4664
    move-object/from16 v3, p11

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    .line 4665
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/12;->A0G:Z

    .line 4666
    move/from16 v0, p8

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/12;->A0H:Z

    .line 4667
    new-instance v0, Lcom/facebook/ads/redexgen/X/8o;

    move-object/from16 v1, p10

    move-object/from16 v4, p9

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8p;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    .line 4668
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/oK;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/oK;-><init>(Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/9R;)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/8z;->AJV(Lcom/facebook/ads/redexgen/X/8v;)V

    .line 4669
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/jQ;->A0D:Z

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/8z;->AJQ(Z)V

    .line 4670
    return-void
.end method

.method private A00()I
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D36293647 for DRC"
    .end annotation

    .line 4671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/jQ;->A09:I

    .line 4672
    .local v0, "xHEAACEffectType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0F:Z

    if-eqz v0, :cond_0

    .line 4673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/jQ;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/jQ;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A05:I

    .line 4674
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ic;->A00(III)I

    move-result v1

    .line 4675
    :cond_0
    return v1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 3

    .line 4676
    const/16 v2, 0x63

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    .line 4678
    :goto_0
    return v0

    .line 4679
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 4

    .line 4680
    const/16 v2, 0x26

    const/16 v1, 0x16

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4681
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_3

    sget v3, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "s8yZpZp8nIrL7EQY3mPJ1kqCekDwsY6i"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yd2Z0BEEocl53iuZqAxtcOKT0DXRknsH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0E:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A18(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4682
    :cond_1
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "9QHOUbokymVnxuZO6z7rLJCC2XoG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 4683
    :cond_3
    iget v3, p2, Lcom/facebook/ads/redexgen/X/qI;->A0B:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "bWiZaXhFQHkoAXZnJ4ncaGOlncM6vz1V"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kg6ZwO8ePPrkJPsuoAADu0ZS0U6OWo96"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;[Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 1

    .line 4684
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/12;->A02(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    .line 4685
    .local v0, "maxInputSize":I
    return v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 6

    .line 4686
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 4687
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x96

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    const/16 v2, 0x6c

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4689
    const/16 v2, 0xac

    const/16 v1, 0xb

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4690
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4i;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 4691
    const/16 v2, 0x88

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p3}, Lcom/facebook/ads/redexgen/X/4i;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4692
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    .line 4693
    const/16 v2, 0xa4

    const/16 v1, 0x8

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "w8gjBPJzE632nZpBrlzwe1tLIvq8CsOY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ag3DPBWcd6fSOrmBwunkDpt77Nl4HY4l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4694
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    .line 4695
    const/16 v2, 0x9a

    const/16 v1, 0xa

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0G:Z

    if-eqz v0, :cond_2

    .line 4696
    const/16 v2, 0x3c

    const/16 v1, 0x13

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/12;->A00()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0A:I

    const/16 v2, 0x4f

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4698
    :cond_2
    return-object v4
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/7h;
    .locals 0

    .line 4699
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;
    .locals 0

    .line 4700
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "GcWDzLLiTAl0tD46XyRRBcNodd92JrSP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "GhxldHXMoVDog6OAV5RKTarDpyl0kviC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x41

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 7

    .line 4701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/12;->AAP()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->A7f(Z)J

    move-result-wide v4

    .line 4702
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 4703
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0A:Z

    if-eqz v0, :cond_1

    .line 4704
    :goto_0
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    .line 4705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0A:Z

    .line 4706
    :cond_0
    return-void

    .line 4707
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x7

    aget-object v6, v6, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "nIJcPeFAtvuDBzBlXMRw0HpU2OMpTIMr"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "dapTBdH8hqStbvnLCARUyCc0T0ChI3T8"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xc6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/12;->A0J:[B

    return-void

    :array_0
    .array-data 1
        -0x67t
        -0x4ft
        -0x50t
        -0x4bt
        -0x53t
        -0x71t
        -0x45t
        -0x50t
        -0x4ft
        -0x51t
        -0x73t
        -0x3ft
        -0x50t
        -0x4bt
        -0x45t
        -0x62t
        -0x4ft
        -0x46t
        -0x50t
        -0x4ft
        -0x42t
        -0x4ft
        -0x42t
        -0x4dt
        -0x4ft
        -0x44t
        -0x6et
        -0x49t
        -0x57t
        -0x59t
        -0x6et
        -0x3bt
        -0x3bt
        -0x39t
        -0x6et
        -0x38t
        -0x37t
        -0x39t
        -0x24t
        -0x26t
        -0x1bt
        -0x45t
        -0xct
        -0x4t
        -0x4t
        -0xct
        -0x7t
        -0xet
        -0x45t
        -0x1t
        -0x12t
        0x4t
        -0x45t
        -0xft
        -0xet
        -0x10t
        -0x4t
        -0xft
        -0xet
        -0x1t
        -0x11t
        -0x11t
        -0xft
        -0x45t
        -0xet
        0x0t
        -0xft
        -0x45t
        -0xdt
        -0xct
        -0xct
        -0xdt
        -0xft
        0x2t
        -0x45t
        0x2t
        0x7t
        -0x2t
        -0xdt
        -0x33t
        -0x33t
        -0x31t
        -0x67t
        -0x20t
        -0x33t
        -0x22t
        -0x2dt
        -0x2ft
        -0x20t
        -0x67t
        -0x22t
        -0x2ft
        -0x2et
        -0x67t
        -0x28t
        -0x2ft
        -0x1et
        -0x2ft
        -0x28t
        0x7t
        0x1bt
        0xat
        0xft
        0x15t
        -0x2bt
        0x18t
        0x7t
        0x1dt
        0x14t
        0x19t
        0x12t
        0x1ft
        0x1ft
        0x16t
        0x1dt
        -0x22t
        0x14t
        0x20t
        0x26t
        0x1ft
        0x25t
        -0x55t
        -0x58t
        -0x4bt
        -0x4et
        -0x51t
        -0x49t
        -0x58t
        -0x1ft
        -0x22t
        -0x15t
        -0x18t
        -0x16t
        -0x1bt
        -0x13t
        -0x22t
        -0x36t
        -0x42t
        -0x2bt
        -0x76t
        -0x3at
        -0x35t
        -0x33t
        -0x2et
        -0x2ft
        -0x76t
        -0x30t
        -0x3at
        -0x29t
        -0x3et
        -0x27t
        -0x2bt
        -0x27t
        -0x2ft
        -0x44t
        -0x41t
        -0x7dt
        -0x50t
        0x7dt
        -0x7dt
        0x7ft
        0x7dt
        -0x7dt
        -0x7ft
        -0x40t
        -0x3et
        -0x47t
        -0x41t
        -0x3et
        -0x47t
        -0x3ct
        -0x37t
        -0x41t
        -0x53t
        -0x47t
        -0x44t
        -0x48t
        -0x4ft
        0x79t
        -0x42t
        -0x53t
        -0x40t
        -0x4ft
        -0x1bt
        -0x2dt
        -0x21t
        -0x1bt
        -0x19t
        -0x20t
        -0x27t
        -0x2ft
        -0x44t
        -0x37t
        -0x3at
        -0x43t
        -0x3dt
        -0x35t
        -0x44t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 4

    .line 4708
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4709
    .local v0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x63

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4710
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "mDVewdn3RvQYeqn2qaR7zJPFTyK9zqzw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "a0e3mP5dmYOn07QMhHRhkP7lbfukdIg9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 4711
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8z;->AKN(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    return v0
.end method

.method public static A0B(Ljava/lang/String;)Z
    .locals 3

    .line 4712
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 4713
    const/16 v2, 0x17

    const/16 v1, 0xf

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    .line 4714
    const/16 v2, 0xb7

    const/4 v1, 0x7

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 4715
    const/16 v2, 0xbe

    const/16 v1, 0x8

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 4716
    const/16 v2, 0x79

    const/4 v1, 0x7

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 4717
    const/16 v2, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4718
    :goto_0
    return v0

    .line 4719
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1X()V
    .locals 1

    .line 4720
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1X()V

    .line 4721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->AH0()V

    .line 4722
    return-void
.end method

.method public final A1Y()V
    .locals 1

    .line 4723
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/12;->A08()V

    .line 4724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->pause()V

    .line 4725
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1Y()V

    .line 4726
    return-void
.end method

.method public final A1Z()V
    .locals 3

    .line 4727
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4728
    :try_start_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A07(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4731
    return-void

    .line 4732
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A07(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4734
    throw v2

    .line 4735
    :catchall_1
    move-exception v2

    .line 4736
    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->A1Z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A07(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4739
    throw v2

    .line 4740
    :catchall_2
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6I;->A02()V

    .line 4741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A07(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4742
    throw v2
.end method

.method public final A1a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4743
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1g;->A1a(JZ)V

    .line 4744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0C:Z

    if-eqz v0, :cond_0

    .line 4745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A6T()V

    .line 4746
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    .line 4747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A09:Z

    .line 4748
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0A:Z

    .line 4749
    return-void

    .line 4750
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->flush()V

    goto :goto_0
.end method

.method public final A1b(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4751
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1g;->A1b(ZZ)V

    .line 4752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A08(Lcom/facebook/ads/redexgen/X/6I;)V

    .line 4753
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1V()Lcom/facebook/ads/redexgen/X/7s;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7s;->A00:Z

    if-eqz v0, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A6M()V

    .line 4755
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1W()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->AJg(Lcom/facebook/ads/redexgen/X/8O;)V

    .line 4756
    return-void

    .line 4757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A5z()V

    goto :goto_0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 2

    .line 4758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1g;->A0z:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/jQ;->A0O:Z

    if-eqz v0, :cond_0

    .line 4759
    invoke-direct {p0, p2, p4}, Lcom/facebook/ads/redexgen/X/12;->A02(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/12;->A00:I

    if-gt v1, v0, :cond_0

    .line 4760
    const/4 v1, 0x1

    invoke-virtual {p2, p3, p4, v1}, Lcom/facebook/ads/redexgen/X/B3;->A0U(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    if-nez v0, :cond_0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    if-nez v0, :cond_0

    iget v0, p4, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    if-nez v0, :cond_0

    iget v0, p4, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    if-nez v0, :cond_0

    .line 4761
    return v1

    .line 4762
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 4763
    iget-object v4, p3, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4764
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3J;->A0C(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4765
    return v3

    .line 4766
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_1

    const/16 v8, 0x20

    .line 4767
    .local v1, "tunnelingSupport":I
    :goto_0
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/1g;->A1G(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v7

    .line 4768
    .local v4, "supportsFormatDrm":Z
    const/4 v6, 0x4

    if-eqz v7, :cond_2

    .line 4769
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/12;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4770
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ba;->A0I()Lcom/facebook/ads/redexgen/X/B3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4771
    or-int/lit8 v0, v8, 0x8

    or-int/2addr v0, v6

    return v0

    .line 4772
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 4773
    :cond_2
    const/16 v2, 0x63

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    .line 4774
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->AKP(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    .line 4775
    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/8z;->AKP(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4776
    :cond_4
    return v4

    .line 4777
    :cond_5
    invoke-virtual {p0, p1, p3, v3}, Lcom/facebook/ads/redexgen/X/12;->A1l(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)Ljava/util/List;

    move-result-object v1

    .line 4778
    .local v6, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4779
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 4780
    :cond_6
    if-nez v7, :cond_7

    .line 4781
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 4782
    :cond_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "n12bmxDOOVBzqYYOQBRjqp0moJyAYtSu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BaglFChNOdaklTSyUQRitIBwXJJTR14H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v4, Lcom/facebook/ads/redexgen/X/B3;

    .line 4783
    .local v8, "decoderInfo":Lcom/facebook/ads/redexgen/X/B3;
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v0, v5, :cond_a

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    .line 4784
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/B3;->A0Q(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-eq v0, v1, :cond_a

    iget v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    .line 4785
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/B3;->A0P(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v3, 0x1

    .line 4786
    .local v2, "decoderCapable":Z
    :cond_b
    if-eqz v3, :cond_d

    invoke-virtual {v4, p3}, Lcom/facebook/ads/redexgen/X/B3;->A0T(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4787
    const/16 v0, 0x10

    .line 4788
    .local v3, "adaptiveSupport":I
    :goto_1
    if-eqz v3, :cond_c

    .line 4789
    .local v5, "formatSupport":I
    :goto_2
    or-int/2addr v0, v8

    or-int/2addr v0, v6

    return v0

    .line 4790
    :cond_c
    const/4 v6, 0x3

    goto :goto_2

    .line 4791
    :cond_d
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/qI;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BT;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BX;
        }
    .end annotation

    .line 4792
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4793
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4795
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/12;->A0A(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4796
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ba;->A0I()Lcom/facebook/ads/redexgen/X/B3;

    move-result-object v0

    .line 4797
    .local v1, "codecInfo":Lcom/facebook/ads/redexgen/X/B3;
    if-eqz v0, :cond_2

    .line 4798
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "VH1rG9jH3WXhHTxnLXRxhYBKNNIMNlpD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "4dJInhYjvnfEcXSyIbRNEiIfORerumv3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 4799
    .end local v1    # "codecInfo":Lcom/facebook/ads/redexgen/X/B3;
    :cond_2
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4800
    const/4 v0, 0x0

    invoke-interface {p1, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/BT;->A7o(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 4801
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A1o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4802
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->AH2()V

    .line 4803
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8y; {:try_start_0 .. :try_end_0} :catch_0

    .line 4804
    :catch_0
    move-exception v3

    .line 4805
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8y;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/8y;->A01:Lcom/facebook/ads/redexgen/X/qI;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8y;->A02:Z

    const/16 v0, 0x138a

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;ZI)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0
.end method

.method public final A1s(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4806
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/1g;->A1s(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 4807
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 4808
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A05(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/6L;)V

    .line 4809
    return-void
.end method

.method public final A1u(Lcom/facebook/ads/redexgen/X/p0;)V
    .locals 5

    .line 4810
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A09:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4811
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4812
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    .line 4813
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A09:Z

    .line 4814
    :cond_1
    return-void
.end method

.method public final A1v(Lcom/facebook/ads/redexgen/X/B0;Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 4816
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    const/16 v2, 0x96

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(Ljava/lang/String;)I

    move-result v5

    .line 4817
    .local v0, "encoding":I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    .line 4818
    .local v1, "format":Landroid/media/MediaFormat;
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :goto_0
    const/16 v2, 0x6c

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 4819
    .local v3, "channelCount":I
    const/16 v2, 0xac

    const/16 v1, 0xb

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4820
    .end local v0    # "encoding":I
    .end local v1    # "format":Landroid/media/MediaFormat;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A01(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v5

    .line 4821
    .restart local v0    # "encoding":I
    move-object v7, p2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "oVYorWwiJ9QuTT6BmhgOhsdn4ih9katO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "s4BjQ2RFQmOrQGZBZgzfkwBc6WQlVCBr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v7, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 4822
    .local v5, "sampleRate":I
    mul-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/12;->A03:I

    .line 4823
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0B:Z

    if-eqz v0, :cond_3

    const/4 v7, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "pG08ZDLF1Nwa7YWNReZn10nEeTPXXDD5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v6, v7, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-ge v0, v7, :cond_3

    .line 4824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    new-array v6, v0, [I

    .line 4825
    .local v6, "channelMap":[I
    const/4 v1, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    if-ge v1, v0, :cond_4

    .line 4826
    aput v1, v6, v1

    .line 4827
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4828
    .end local v6    # "channelMap":[I
    :cond_3
    const/4 v6, 0x0

    .line 4829
    .restart local v6    # "channelMap":[I
    :cond_4
    new-instance v7, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 4830
    const/16 v2, 0x63

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 4831
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0i(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 4832
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 4833
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 4834
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v2

    .line 4835
    .local v2, "audioSinkInputFormat":Lcom/facebook/ads/redexgen/X/qI;
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    const/4 v0, 0x0

    invoke-interface {v1, v2, v0, v6}, Lcom/facebook/ads/redexgen/X/8z;->A59(Lcom/facebook/ads/redexgen/X/qI;I[I)V

    .line 4836
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8s; {:try_start_0 .. :try_end_0} :catch_0

    .line 4837
    :catch_0
    move-exception v2

    .line 4838
    .local v4, "e":Lcom/facebook/ads/redexgen/X/8s;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/qI;

    const/16 v0, 0x1389

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;I)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0
.end method

.method public final A1w(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaCrypto;)V
    .locals 6

    .line 4839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1e()[Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/12;->A03(Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/qI;[Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/12;->A00:I

    .line 4840
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B3;->A03:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A0B(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0B:Z

    .line 4841
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/B3;->A02:Ljava/lang/String;

    .line 4842
    const/16 v2, 0x63

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 4843
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0D:Z

    .line 4844
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/B3;->A01:Ljava/lang/String;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/12;->A00:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A04(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 4845
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p4

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/B0;->A58(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V

    .line 4846
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0D:Z

    if-eqz v0, :cond_0

    .line 4847
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    .line 4848
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    const/16 v2, 0x96

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    :goto_1
    return-void

    .line 4850
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A06:Landroid/media/MediaFormat;

    goto :goto_1

    .line 4851
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1x(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D45988204: [FBLite][Video] Add Codec Hooks for Logging"
    .end annotation

    .line 4852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0F(Ljava/lang/String;)V

    .line 4853
    return-void
.end method

.method public final A1y(Ljava/lang/String;JJ)V
    .locals 6

    .line 4854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8o;->A0G(Ljava/lang/String;JJ)V

    .line 4855
    return-void
.end method

.method public final A22()Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D6142814"
    .end annotation

    .line 4856
    const/4 v0, 0x0

    return v0
.end method

.method public final A23(JJLcom/facebook/ads/redexgen/X/B0;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4857
    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/12;->A0D:Z

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v3, p8, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "qFTZlqBsfbROWjHKIBaS9ttrRfnfHc6a"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "sZoZRvagNjZKK9rko7XS8oWwcuS8hqha"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 4858
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4859
    return v7

    .line 4860
    :cond_1
    if-eqz p11, :cond_3

    .line 4861
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    .line 4862
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "i4U0xdeb2kJYTtTzacReJ5RV5axgIdhD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rrPeATHc6C5SnSGUS9RZuIpTT0sGFjMh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    .line 4863
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A9h()V

    .line 4864
    return v7

    .line 4865
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "GzmR5b8Z6T6If0UBPoEMKvf6QjFSlvzk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "qLQdQ1juS6S8x5RB3mUlKTK412OZk0qd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/facebook/ads/redexgen/X/6I;->A0B:I

    .line 4866
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A9h()V

    .line 4867
    return v7

    .line 4868
    .local p1, "valuePosition":I
    :cond_3
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/12;->A0H:Z

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    .line 4869
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A01(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    if-nez p8, :cond_5

    iget v0, v5, Lcom/facebook/ads/redexgen/X/12;->A03:I

    if-lez v0, :cond_5

    .line 4870
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    const/16 v0, 0xc

    if-lt v1, v0, :cond_5

    .line 4871
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 4872
    .local v0, "originalPosition":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 4873
    .local p3, "originalLimit":I
    const/16 v0, 0xa

    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4874
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 4875
    .local p4, "value":S
    invoke-virtual {p6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4876
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4877
    iget v2, v5, Lcom/facebook/ads/redexgen/X/12;->A01:I

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, v5, Lcom/facebook/ads/redexgen/X/12;->A01:I

    .line 4878
    iget v3, v5, Lcom/facebook/ads/redexgen/X/12;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "MwudhWWmLfAHxFUBWVuNAQ0R1ppnonhu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "h4oByFchRKdWl7IBcc7CSq20vr2fgRzF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/2addr v3, v7

    iput v3, v5, Lcom/facebook/ads/redexgen/X/12;->A02:I

    .line 4879
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/12;->A05:J

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .end local p1    # "valuePosition":I
    .local p8, "valuePosition":I
    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/12;->A05:J

    .line 4880
    iget v1, v5, Lcom/facebook/ads/redexgen/X/12;->A01:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/12;->A03:I

    mul-int/lit8 v0, v0, 0x2

    if-lt v1, v0, :cond_5

    .line 4881
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/12;->A05:J

    iget v2, v5, Lcom/facebook/ads/redexgen/X/12;->A02:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v2, v0

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/8o;->A00(I)V

    .line 4882
    iput v4, v5, Lcom/facebook/ads/redexgen/X/12;->A01:I

    .line 4883
    iput v4, v5, Lcom/facebook/ads/redexgen/X/12;->A02:I

    .line 4884
    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/12;->A05:J

    .line 4885
    .end local p1
    .restart local p8    # "valuePosition":I
    :cond_5
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/12;->A0G:Z

    move-wide/from16 v2, p9

    if-eqz v0, :cond_6

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 4886
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 4887
    .restart local v0    # "originalPosition":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 4888
    .local p0, "originalLimit":I
    sub-int v0, v1, v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4889
    .local p1, "clone":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4890
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 4891
    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4892
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4893
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/12;->A0F:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    invoke-virtual {v7, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/8o;->A0K([BJ)V

    .line 4894
    .end local v0    # "originalPosition":I
    .end local p0    # "originalLimit":I
    .end local p1    # "clone":Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    const/4 v0, 0x1

    invoke-interface {v1, p6, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/8z;->A9e(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4895
    invoke-interface {p5, p7, v4}, Lcom/facebook/ads/redexgen/X/B0;->AHi(IZ)V

    .line 4896
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/1g;->A0h:Lcom/facebook/ads/redexgen/X/6I;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/6I;->A09:I

    .line 4897
    return v0

    .line 4898
    :cond_7
    return v4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/8y; {:try_start_0 .. :try_end_0} :catch_0

    .line 4899
    :catch_0
    move-exception v3

    .line 4900
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8y;
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/1g;->A0g:Lcom/facebook/ads/redexgen/X/qI;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8y;->A02:Z

    const/16 v0, 0x138a

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;ZI)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0

    .line 4901
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/8y;
    :catch_1
    move-exception v3

    .line 4902
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8t;
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/12;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/8t;->A02:Z

    const/16 v0, 0x1389

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;ZI)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0
.end method

.method public final A26()V
    .locals 1

    .line 4903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0A:Z

    .line 4904
    return-void
.end method

.method public final A8T()Lcom/facebook/ads/redexgen/X/78;
    .locals 0

    .line 4905
    return-object p0
.end method

.method public final A8m()Lcom/facebook/ads/redexgen/X/px;
    .locals 1

    .line 4906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A8m()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    return-object v0
.end method

.method public final A8p()J
    .locals 5

    .line 4907
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4908
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/12;->A08()V

    .line 4909
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/12;->A04:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "p6YKYNxicnjzLIFANgsfPKErY7h8fvSp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A9i(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 4910
    packed-switch p1, :pswitch_data_0

    .line 4911
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AE;->A9i(ILjava/lang/Object;)V

    .line 4912
    :cond_0
    :goto_0
    return-void

    .line 4913
    :pswitch_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 4914
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "XCf3J2AEJJ1Zd2j3qAi6tezJ2mG7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, p2}, Lcom/facebook/ads/redexgen/X/9S;->A00(Lcom/facebook/ads/redexgen/X/8z;Ljava/lang/Object;)V

    goto :goto_0

    .line 4915
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A08:Lcom/facebook/ads/redexgen/X/7h;

    .line 4916
    goto :goto_0

    .line 4917
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->AJH(I)V

    .line 4918
    goto :goto_0

    .line 4919
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->AJo(Z)V

    .line 4920
    goto :goto_0

    .line 4921
    :pswitch_5
    check-cast p2, Lcom/facebook/ads/redexgen/X/21;

    .line 4922
    .local v0, "auxEffectInfo":Lcom/facebook/ads/redexgen/X/21;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/8z;->AJI(Lcom/facebook/ads/redexgen/X/21;)V

    .line 4923
    goto :goto_0

    .line 4924
    .end local v0    # "auxEffectInfo":Lcom/facebook/ads/redexgen/X/21;
    :pswitch_6
    check-cast p2, Lcom/facebook/ads/redexgen/X/qQ;

    .line 4925
    .local v0, "audioAttributes":Lcom/facebook/ads/redexgen/X/qQ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/8z;->AJG(Lcom/facebook/ads/redexgen/X/qQ;)V

    .line 4926
    goto :goto_0

    .line 4927
    .end local v0    # "audioAttributes":Lcom/facebook/ads/redexgen/X/qQ;
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8z;->setVolume(F)V

    .line 4928
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final AAP()Z
    .locals 1

    .line 4929
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->AAP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->AAP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAe()Z
    .locals 4

    .line 4930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8z;->A9o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/1g;->AAe()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/12;->A0K:[Ljava/lang/String;

    const-string v1, "YZui0KIXZR8KzjI1EkPC1GaIUT4y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJd(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 1

    .line 4931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/12;->A0I:Lcom/facebook/ads/redexgen/X/8z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8z;->AJd(Lcom/facebook/ads/redexgen/X/px;)V

    .line 4932
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 4933
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->A07(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
