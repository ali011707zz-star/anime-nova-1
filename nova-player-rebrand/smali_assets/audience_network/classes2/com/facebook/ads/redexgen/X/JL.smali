.class public final Lcom/facebook/ads/redexgen/X/JL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JI;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/SefReader$DataType;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/SefReader$State;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/kp;

.field public static final A06:Lcom/facebook/ads/redexgen/X/kp;


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/JI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 825
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1LFyGIpszZgsQUUW5R18ay4ATJEAL43c"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dt6orGbglcsjMqs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9FFDgagoC1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "foXErnBO9GEWWKnhx2CBLj59I1mQsasl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8wc6iy8fDBcca8zNmQv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jjxV28nHyp6my1wOvIi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qfRjwVGa5Ot2KmC8yJE9Z4CCjcQdKZvd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JL;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JL;->A03()V

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kp;->A02(C)Lcom/facebook/ads/redexgen/X/kp;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JL;->A06:Lcom/facebook/ads/redexgen/X/kp;

    .line 826
    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kp;->A02(C)Lcom/facebook/ads/redexgen/X/kp;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JL;->A05:Lcom/facebook/ads/redexgen/X/kp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    .line 42743
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    .line 42744
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 42745
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 42746
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 42747
    :sswitch_0
    const/16 v2, 0x1f

    const/16 v1, 0x14

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x48

    const/16 v1, 0x20

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x33

    const/16 v1, 0x15

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x68

    const/16 v1, 0x1a

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x10

    const/16 v1, 0xf

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 42748
    :pswitch_0
    const/16 v0, 0xb04

    return v0

    .line 42749
    :pswitch_1
    const/16 v0, 0xb03

    return v0

    .line 42750
    :pswitch_2
    const/16 v0, 0xb01

    return v0

    .line 42751
    :pswitch_3
    const/16 v0, 0xb00

    return v0

    .line 42752
    :pswitch_4
    const/16 v0, 0x890

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 42753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42754
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v2

    .line 42755
    .local v2, "dataString":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/JL;->A05:Lcom/facebook/ads/redexgen/X/kp;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/kp;->A06(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 42756
    .local v3, "segmentStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 42757
    sget-object v2, Lcom/facebook/ads/redexgen/X/JL;->A06:Lcom/facebook/ads/redexgen/X/kp;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/kp;->A06(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    .line 42758
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne v5, v0, :cond_0

    .line 42759
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 42760
    .local v9, "startTimeMs":J
    const/4 p1, 0x1

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 42761
    .local p1, "endTimeMs":J
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 42762
    .local v6, "speedMode":I
    add-int/lit8 v0, v0, -0x1

    shl-int/2addr p1, v0

    .line 42763
    .local v0, "speedDivisor":I
    new-instance v6, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42764
    .end local v0    # "speedDivisor":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "speedMode":I
    .end local v9    # "startTimeMs":J
    .end local p1    # "endTimeMs":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42765
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 42766
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 42767
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {v2, v2}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 42768
    .end local v4    # "i":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/JL;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/JL;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JL;->A04:[Ljava/lang/String;

    const-string v1, "QzkInJPgctLD5w2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JL;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        0xat
        0x12t
        0x5t
        0x8t
        0xdt
        0x0t
        0x44t
        0x37t
        0x21t
        0x22t
        0x44t
        0xat
        0x5t
        0x9t
        0x1t
        0x38t
        0x7t
        0x4t
        0x1ct
        0x26t
        0x4t
        0x1ft
        0x2t
        0x4t
        0x5t
        0x34t
        0x2ft
        0xat
        0x1ft
        0xat
        0x5dt
        0x7bt
        0x7et
        0x6bt
        0x7ct
        0x51t
        0x5dt
        0x62t
        0x61t
        0x79t
        0x43t
        0x61t
        0x7at
        0x67t
        0x61t
        0x60t
        0x51t
        0x4ct
        0x49t
        0x43t
        0x5et
        0x78t
        0x7dt
        0x68t
        0x7ft
        0x52t
        0x5et
        0x61t
        0x62t
        0x7at
        0x40t
        0x62t
        0x79t
        0x64t
        0x62t
        0x63t
        0x52t
        0x49t
        0x6ct
        0x79t
        0x6ct
        0x32t
        0x14t
        0x11t
        0x4t
        0x13t
        0x3et
        0x32t
        0xdt
        0xet
        0x16t
        0x2ct
        0xet
        0x15t
        0x8t
        0xet
        0xft
        0x3et
        0x25t
        0x4t
        0x7t
        0xdt
        0x8t
        0x2t
        0xat
        0x4t
        0x13t
        0x8t
        0xft
        0x6t
        0x3et
        0x2et
        0xft
        0x41t
        0x67t
        0x62t
        0x77t
        0x60t
        0x4dt
        0x41t
        0x7et
        0x7dt
        0x65t
        0x5ft
        0x7dt
        0x66t
        0x7bt
        0x7dt
        0x7ct
        0x4dt
        0x57t
        0x76t
        0x7bt
        0x66t
        0x4dt
        0x56t
        0x73t
        0x66t
        0x73t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42769
    const/16 v3, 0x8

    new-instance v2, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 42770
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 42771
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:I

    .line 42772
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    const v0, 0x53454654

    if-eq v1, v0, :cond_0

    .line 42773
    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42774
    return-void

    .line 42775
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42776
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    .line 42777
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42778
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v11

    .line 42779
    .local v0, "streamLength":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:I

    add-int/lit8 v8, v0, -0xc

    const/16 v7, 0x8

    sub-int/2addr v8, v7

    .line 42780
    .local v2, "sdrsLength":I
    new-instance v6, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v6, v8}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 42781
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v8}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 42782
    const/4 v9, 0x0

    .local v5, "i":I
    :goto_0
    div-int/lit8 v0, v8, 0xc

    if-ge v9, v0, :cond_0

    .line 42783
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42784
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0a()S

    move-result v5

    .line 42785
    .local v7, "dataType":I
    sparse-switch v5, :sswitch_data_0

    .line 42786
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42787
    .end local v7    # "dataType":I
    .end local v8
    .end local v10
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 42788
    :sswitch_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:I

    int-to-long v0, v0

    sub-long v2, v11, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 42789
    .local v8, "startOffset":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v10

    .line 42790
    .local v10, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JI;

    invoke-direct {v0, v5, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/JI;-><init>(IJI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42791
    goto :goto_1

    .line 42792
    .end local v5    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42793
    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42794
    return-void

    .line 42795
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    .line 42796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JI;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/JI;->A02:J

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42797
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x890 -> :sswitch_0
        0xb00 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb03 -> :sswitch_0
        0xb04 -> :sswitch_0
    .end sparse-switch
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/ms;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ms;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42798
    .local p5, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v7

    .line 42799
    .local v0, "dataStartOffset":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A01:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    long-to-int v2, v3

    .line 42800
    .local v3, "totalDataLength":I
    new-instance v3, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 42801
    .local v2, "data":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 42802
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 42803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/JI;

    .line 42804
    .local v5, "dataReference":Lcom/facebook/ads/redexgen/X/JI;
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/JI;->A02:J

    sub-long/2addr v0, v7

    long-to-int v2, v0

    .line 42805
    .local v7, "intendedPosition":I
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42806
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42807
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/JL;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42808
    .local v6, "nameLength":I
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/JL;->A04:[Ljava/lang/String;

    const-string v1, "1HViS9NC9rn2qgqFvoB7LQiD1FLq6ChH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v0

    .line 42809
    .local v8, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JL;->A00(Ljava/lang/String;)I

    move-result v2

    .line 42810
    .local p0, "dataType":I
    iget v1, v6, Lcom/facebook/ads/redexgen/X/JI;->A01:I

    add-int/lit8 v0, v5, 0x8

    sub-int/2addr v1, v0

    .line 42811
    .local p1, "remainingDataLength":I
    sparse-switch v2, :sswitch_data_0

    .line 42812
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 42813
    :sswitch_0
    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/JL;->A01(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42814
    .end local v5    # "dataReference":Lcom/facebook/ads/redexgen/X/JI;
    .end local v6    # "nameLength":I
    .end local v7    # "intendedPosition":I
    .end local v8    # "name":Ljava/lang/String;
    .end local p0    # "dataType":I
    .end local p1    # "remainingDataLength":I
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42815
    .end local v4    # "i":I
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x890 -> :sswitch_0
        0xb00 -> :sswitch_1
        0xb01 -> :sswitch_1
        0xb03 -> :sswitch_1
        0xb04 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ms;",
            "Lcom/facebook/ads/redexgen/X/HV;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42816
    .local p3, "slowMotionMetadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    const/4 v7, 0x1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 42817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 42818
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/JL;->A06(Lcom/facebook/ads/redexgen/X/ms;Ljava/util/List;)V

    .line 42819
    iput-wide v1, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42820
    goto :goto_1

    .line 42821
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JL;->A05(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)V

    .line 42822
    goto :goto_1

    .line 42823
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JL;->A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)V

    .line 42824
    goto :goto_1

    .line 42825
    :pswitch_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v5

    .line 42826
    .local v4, "inputLength":J
    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x8

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    .line 42827
    :cond_0
    :goto_0
    iput-wide v1, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 42828
    iput v7, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    .line 42829
    .end local v4    # "inputLength":J
    :goto_1
    return v7

    .line 42830
    :cond_1
    sub-long v1, v5, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A08()V
    .locals 1

    .line 42831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42832
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JL;->A00:I

    .line 42833
    return-void
.end method
